# Plan de Implementacion Version 2
¡Hola! Es un placer saludarte. Como tu **Arquitecto de Soluciones y Lead Developer**, he estructurado este proyecto para que no solo apruebes tu preparatoria, sino que entregues un software con estándares de la industria.

Vamos a construir **AutoElite App** utilizando una arquitectura limpia y modular. A continuación, presento todas las fases de desarrollo integradas para que puedas ejecutarlas secuencialmente.

---

## FASE 1: Infraestructura y Setup

Antes de tocar el código, debemos preparar el terreno en la nube y en tu entorno local.

### 1. Configuración en Firebase Console

1. Crea un proyecto en [Firebase Console](https://console.firebase.google.com/).
2. **Habilita Authentication**: Activa el método "Correo electrónico/contraseña".
3. **Habilita Cloud Firestore**: Créalo en "Modo de prueba" para empezar.
4. **Habilita Firebase Storage**: Haz clic en empezar y acepta las reglas por defecto.
5. **Registra tu App**: Sigue los pasos para añadir una app de Android e iOS. Descarga los archivos `google-services.json` (Android) y `GoogleService-Info.plist` (iOS) y colócalos en las carpetas respectivas (`android/app` y `ios/Runner`).

### 2. Configuración de `pubspec.yaml`

Añade estas dependencias en tu archivo de configuración:

```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.24.2
  firebase_auth: ^4.15.3
  cloud_firestore: ^4.13.6
  firebase_storage: ^11.5.6
  provider: ^6.1.1
  image_picker: ^1.0.7
  intl: ^0.19.0

```

### 3. Punto de entrada: `main.dart`

Inicializamos Firebase y configuramos el `Provider` global.

```dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'services/firebase_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FirebaseService()),
      ],
      child: const AutoEliteApp(),
    ),
  );
}

class AutoEliteApp extends StatelessWidget {
  const AutoEliteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoElite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        useMaterial3: true,
      ),
      home: const LoginScreen(), // Se creará en Fase 3
    );
  }
}

```

---

## FASE 2: Capa de Datos (Models & Services)

### 1. Modelo de Datos: `models/car_model.dart`

Utilizaremos métodos para convertir datos de Firestore a objetos de Dart y viceversa.

```dart
class Car {
  String? id;
  String brand, model, transmission, imageUrl;
  int year;
  double price;

  Car({this.id, required this.brand, required this.model, required this.year, 
       required this.price, required this.transmission, required this.imageUrl});

  factory Car.fromFirestore(Map<String, dynamic> data, String id) {
    return Car(
      id: id,
      brand: data['brand'] ?? '',
      model: data['model'] ?? '',
      year: data['year'] ?? 2024,
      price: (data['price'] ?? 0).toDouble(),
      transmission: data['transmission'] ?? 'Automática',
      imageUrl: data['imageUrl'] ?? '',
    );
  }

  Map<String, dynamic> toMap() => {
    'brand': brand, 'model': model, 'year': year,
    'price': price, 'transmission': transmission, 'imageUrl': imageUrl,
  };
}

```

### 2. Lógica de Negocio: `services/firebase_service.dart`

Aquí centralizamos la comunicación con Firebase.

```dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../models/car_model.dart';

class FirebaseService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  User? get currentUser => _auth.currentUser;

  // AUTH
  Future<UserCredential?> signUp(String email, String password) async {
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<UserCredential?> login(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  // CRUD INVENTARIO
  Stream<List<Car>> getCars() {
    return _db.collection('cars').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Car.fromFirestore(doc.data(), doc.id)).toList());
  }

  Future<void> addCar(Car car) => _db.collection('cars').add(car.toMap());
  
  Future<void> deleteCar(String id) => _db.collection('cars').doc(id).delete();

  // CITAS
  Future<void> requestTestDrive(String carModel, String date) {
    return _db.collection('appointments').add({
      'userId': currentUser?.uid,
      'car': carModel,
      'date': date,
      'status': 'Pendiente'
    });
  }
}

```

---

## FASE 3: Flujo de Autenticación

Crea `screens/login_screen.dart`. Utilizaremos controladores de texto y validaciones básicas.

```dart
// Resumen de la lógica del botón Login
void _handleLogin() async {
  if (_formKey.currentState!.validate()) {
    try {
      await context.read<FirebaseService>().login(emailController.text, passController.text);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message ?? 'Error')));
    }
  }
}

```

> **Tip de Pro:** Usa un `TextFormField` con `obscureText: true` para la contraseña y un `RegExp` para validar que el correo tenga un formato correcto.

---

## FASE 4: Catálogo y Detalles (UI)

### Pantalla Principal (`screens/home_screen.dart`)

Usaremos un `StreamBuilder` para que la app se actualice sola cuando agregues un carro en Firebase.

```dart
StreamBuilder<List<Car>>(
  stream: context.read<FirebaseService>().getCars(),
  builder: (context, snapshot) {
    if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
    final cars = snapshot.data!;
    return ListView.builder(
      itemCount: cars.length,
      itemBuilder: (context, index) => CarCard(car: cars[index]), // Widget personalizado
    );
  },
)

```

### Simulador de Compra (En la pantalla de detalles)

Es una lógica simple de Flutter:

```dart
double calcularMensualidad(double precio, int meses) {
  double interes = 0.12; // 12% anual
  return (precio * (1 + interes)) / meses;
}

```

---

## FASE 5: CRUD y Gestión de Citas

Para el administrador, crea un formulario donde uses `image_picker` para subir la foto a **Firebase Storage**.

### Subida de imagen y Guardado:

```dart
Future<void> _uploadAndSave() async {
  // 1. Subir imagen a Storage
  var snapshot = await FirebaseStorage.instance.ref('cars/$name.jpg').putFile(imageFile);
  String url = await snapshot.ref.getDownloadURL();
  
  // 2. Guardar en Firestore
  Car newCar = Car(..., imageUrl: url);
  await context.read<FirebaseService>().addCar(newCar);
}

```

---

### Estructura de Carpetas Recomendada:

```text
lib/
├── models/         # car_model.dart
├── screens/        # login_screen.dart, home_screen.dart, admin_screen.dart
├── services/       # firebase_service.dart
├── widgets/        # car_card.dart, custom_input.dart
└── main.dart

```

**¡Con esto tienes la base completa!** Cada sección está diseñada para ser escalable. Si necesitas profundizar en el diseño visual (UI) de un widget específico o en la lógica del simulador, aquí estaré. ¡Mucho éxito con tu proyecto final!
