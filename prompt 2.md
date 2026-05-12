# Prompt 2
Aquí tienes una versión mucho más completa, profesional y específica de tu prompt, mejorada para que el modelo entienda que debe desarrollar TODA la aplicación funcional, incluyendo diseño UI/UX, navegación, pantallas completas y sistema de administrador.

---

# Prompt Mejorado

Actúa como un **Desarrollador Senior Fullstack especializado en Dart/Flutter** y **Arquitecto de Soluciones Cloud con Firebase**.

Tu misión es ayudarme a construir una aplicación móvil profesional llamada **“AutoElite App”**, enfocada en una agencia de carros moderna.
La aplicación será mi proyecto final de preparatoria, por lo tanto debe tener calidad profesional, código limpio, arquitectura escalable y un diseño moderno minimalista.

# Objetivo General

Desarrollar una app móvil completamente funcional en Flutter con Firebase como backend, incluyendo:

* Sistema de autenticación
* Catálogo dinámico de autos
* Sistema de favoritos
* Panel de administrador
* Gestión de citas para pruebas de manejo
* Simulador de compra
* Navegación completa
* Diseño UI/UX moderno
* Arquitectura profesional por carpetas
* Código comentado y explicado

---

# Tecnologías Obligatorias

## Frontend

* Flutter (Dart)
* Material Design 3
* Responsive Design

## Backend y Cloud

* Firebase Authentication
* Cloud Firestore
* Firebase Storage

## Manejo de Estado

Usar:

* Provider (preferentemente)
  o
* StatefulWidgets bien explicados

---

# Arquitectura del Proyecto

La estructura debe organizarse profesionalmente usando carpetas como:

```plaintext
lib/
│
├── models/
├── screens/
├── services/
├── widgets/
├── providers/
├── utils/
├── themes/
├── routes/
└── main.dart
```

Debes explicar:

* Para qué sirve cada carpeta
* Qué responsabilidad tiene cada archivo
* Buenas prácticas usadas

---

# Diseño UI/UX Obligatorio

La aplicación debe tener un diseño:

* Minimalista
* Moderno
* Elegante
* Profesional
* Similar a apps comerciales reales

## Paleta de colores

* Fondo principal: Rosa claro / rosa pastel
* Color principal: Azul cian
* Tarjetas blancas con sombras suaves
* Botones modernos
* Inputs estilizados
* Bordes redondeados
* Íconos modernos
* Animaciones suaves

## Diseño requerido para TODAS las pantallas

Debes diseñar visualmente:

* Layout completo
* AppBars
* BottomNavigationBar
* Drawer/Menu lateral
* Cards modernas
* Formularios estilizados
* Botones personalizados
* Pantallas vacías elegantes
* Loading indicators modernos

---

# Funcionalidades Obligatorias

# 1. Sistema de Usuarios

## Debe incluir:

* Login
* Registro
* Recuperación de contraseña
* Logout
* Perfil de usuario

## Validaciones:

* Correos válidos
* Contraseñas seguras
* Manejo de errores con dialogs/snackbars

---

# 2. Sistema de Roles

Debe existir:

## Usuario normal

Puede:

* Ver autos
* Buscar autos
* Guardar favoritos
* Solicitar prueba de manejo
* Usar simulador de compra

## Administrador

Debe existir una cuenta admin.

El administrador puede:

* Agregar autos
* Editar autos
* Eliminar autos
* Subir imágenes
* Gestionar inventario
* Ver solicitudes de pruebas de manejo

El sistema debe detectar automáticamente si el usuario es admin mediante Firestore.

---

# 3. CRUD Completo de Inventario

Cada auto debe tener:

* Marca
* Modelo
* Precio
* Año
* Kilometraje
* Transmisión
* Tipo de combustible
* Descripción
* Imágenes
* Disponible/Vendido

---

# 4. Catálogo Dinámico

Implementar:

* GridView o ListView moderno
* StreamBuilder en tiempo real
* Tarjetas atractivas
* Imagen del auto
* Precio destacado
* Favoritos con ícono corazón

---

# 5. Pantalla de Detalles del Auto

Debe incluir:

* Galería de imágenes
* Información completa
* Botón de favoritos
* Botón “Solicitar prueba de manejo”
* Botón “Simular compra”
* Diseño moderno premium

---

# 6. Sistema de Favoritos

Crear:

* Pantalla de favoritos
* Guardado en Firestore
* Eliminación de favoritos
* Persistencia por usuario

---

# 7. Buscador Inteligente

Implementar:

* Búsqueda por texto
* Filtros por:

  * Marca
  * Precio
  * Año
  * Transmisión
  * Combustible

---

# 8. Sistema de Citas

El usuario podrá:

* Solicitar prueba de manejo
* Elegir fecha
* Guardar cita en Firestore

Administrador:

* Ver solicitudes
* Gestionarlas

---

# 9. Simulador de Compra

Debe calcular:

* Enganche
* Mensualidades
* Intereses
* Tiempo de financiamiento

Con UI moderna y resultados dinámicos.

---

# Pantallas Obligatorias

Debes crear TODOS los archivos completos para:

## Autenticación

* SplashScreen
* LoginScreen
* RegisterScreen
* ForgotPasswordScreen

## Navegación principal

* HomeScreen
* SearchScreen
* FavoritesScreen
* ProfileScreen

## Autos

* CarDetailsScreen
* CarListScreen

## Administrador

* AdminDashboardScreen
* AddEditCarScreen
* ManageAppointmentsScreen

## Extras

* SimulatorScreen
* AppointmentScreen

---

# Firebase

Debes explicar detalladamente:

## Firebase Console

* Cómo crear el proyecto
* Cómo conectar Flutter
* Configurar Android/iOS
* Habilitar Authentication
* Configurar Firestore
* Configurar reglas
* Configurar Firebase Storage

---

# Reglas de Firestore

Debes incluir:

* Reglas de seguridad
* Validaciones
* Protección de admins

---

# Calidad del Código

El código debe:

* Estar comentado
* Ser escalable
* Ser reutilizable
* Tener widgets separados
* Usar buenas prácticas
* Tener manejo de errores
* Tener null safety

---

# Dinámica de Trabajo OBLIGATORIA

NO entregues todo de golpe.

Divide el desarrollo EXACTAMENTE en estas fases:

# FASE 1 — Infraestructura y Setup

* Configuración Firebase
* pubspec.yaml
* main.dart
* Theme global
* Rutas
* Estructura de carpetas

# FASE 2 — Models y Services

* Modelos
* fromFirestore
* toFirestore
* FirebaseService
* AuthService
* CRUD Firestore

# FASE 3 — Autenticación

* Login UI
* Registro UI
* Validaciones
* Manejo de errores
* Roles admin/user

# FASE 4 — Catálogo y UI

* HomeScreen
* Cards de autos
* StreamBuilder
* Favoritos
* Buscador
* Pantalla de detalles

# FASE 5 — CRUD Administrador

* Dashboard admin
* Agregar/editar/eliminar autos
* Subida de imágenes
* Gestión de citas

# FASE 6 — Funciones Avanzadas

* Simulador de compra
* Animaciones
* Optimización
* Responsive UI
* Mejoras finales

---

# Regla Importante

Después de terminar cada fase:

* Espera a que yo escriba:

```plaintext
CONTINUAR CON LA SIGUIENTE FASE
```

* No avances automáticamente.

---

# Forma de Respuesta Esperada

En cada fase debes proporcionar:

* Explicación técnica
* Código completo
* Estructura de archivos
* Nombre de cada archivo
* Dónde crear cada archivo
* Código listo para copiar/pegar
* Explicaciones simples para estudiante

---

# Objetivo Final

El resultado debe parecer una aplicación real publicada en Play Store:

* Profesional
* Moderna
* Elegante
* Totalmente funcional
* Escalable
* Bien diseñada
* Con Firebase integrado correctamente
* Con experiencia de usuario premium.
