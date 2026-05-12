# Prompt Profesional Final — AutoElite App

# ACTÚA COMO:

Actúa como un **Desarrollador Senior Fullstack especializado en Flutter para Android/web/windows/IOS**, experto en arquitectura escalable, Firebase y diseño UI/UX moderno, utiliza el Provider.

Además, actúa como:

* Arquitecto de software
* Diseñador UI/UX
* Especialista en Firebase
* Ingeniero de aplicaciones móviles profesionales

Tu misión es ayudarme a construir una aplicación móvil COMPLETA, PROFESIONAL y FUNCIONAL llamada:

# “AutoElite App”

La aplicación será un proyecto final de preparatoria, pero debe tener calidad similar a una aplicación real publicada en Play Store o App Store.

---

# OBJETIVO GENERAL

Desarrollar una aplicación móvil en Flutter completamente funcional con Firebase como backend.

La aplicación debe incluir:

* Autenticación completa
* Sistema de roles
* Catálogo dinámico de autos
* CRUD completo de inventario
* Favoritos
* Simulador de compra
* Sistema de citas
* Diseño moderno
* Navegación profesional
* Panel de administrador
* Firebase integrado correctamente
* Código limpio y escalable

---

# TECNOLOGÍAS OBLIGATORIAS

## Frontend

Usar obligatoriamente:

* Flutter
* Dart
* Material Design 3
* Responsive Design
* Animaciones suaves

## Backend

Usar Firebase:

* Firebase Authentication
* Cloud Firestore
* Firebase Storage

## Manejo de Estado

Usar:

* Provider (preferentemente)

o bien:

* StatefulWidgets bien explicados

---

# ARQUITECTURA DEL PROYECTO

Organiza TODO el proyecto profesionalmente usando esta estructura:

```plaintext
lib/
│
├── models/
├── screens/
├── services/
├── providers/
├── widgets/
├── routes/
├── themes/
├── utils/
├── constants/
├── animations/
└── main.dart
```

Debes explicar:

* Para qué sirve cada carpeta
* Qué responsabilidad tiene cada archivo
* Buenas prácticas utilizadas
* Cómo escalar el proyecto

---

# DISEÑO UI/UX OBLIGATORIO

La app debe verse:

* Moderna
* Elegante
* Minimalista
* Premium
* Profesional
* Similar a apps reales comerciales

## PALETA DE COLORES

Usar:

* Fondo: rosa pastel claro
* Color primario: azul cian
* Tarjetas blancas
* Sombras suaves
* Bordes redondeados
* Inputs modernos
* Botones premium
* Íconos elegantes

## UI OBLIGATORIA

Diseñar TODAS las pantallas con:

* AppBars modernas
* BottomNavigationBar
* Drawer/Menu lateral
* FloatingActionButtons elegantes
* Cards modernas
* Inputs estilizados
* Formularios premium
* Estados vacíos modernos
* Loading indicators animados
* Skeleton loaders
* Animaciones suaves

---

# FUNCIONALIDADES OBLIGATORIAS

# 1. AUTENTICACIÓN

Implementar:

* Login
* Registro
* Recuperación de contraseña
* Logout
* Persistencia de sesión
* Perfil de usuario

## Validaciones

Implementar:

* Correos válidos
* Contraseñas seguras
* Confirmación de contraseña
* Manejo de errores
* Snackbars
* Dialogs personalizados

---

# 2. SISTEMA DE ROLES

Crear dos roles:

## Usuario Normal

Puede:

* Ver autos
* Buscar autos
* Filtrar autos
* Guardar favoritos
* Solicitar pruebas de manejo
* Usar simulador de compra

## Administrador

Debe existir una cuenta admin.

El administrador puede:

* Agregar autos
* Editar autos
* Eliminar autos
* Subir imágenes
* Gestionar inventario
* Ver citas
* Aprobar/rechazar solicitudes

Los roles deben guardarse en Firestore.

La app debe detectar automáticamente si el usuario es admin.

---

# 3. CRUD COMPLETO DE AUTOS

Cada auto debe incluir:

* Marca
* Modelo
* Precio
* Año
* Kilometraje
* Transmisión
* Combustible
* Descripción
* Lista de imágenes
* Disponible/Vendido
* Fecha de publicación

Implementar:

* Crear auto
* Editar auto
* Eliminar auto
* Mostrar autos en tiempo real

---

# 4. CATÁLOGO DINÁMICO

Implementar:

* StreamBuilder
* GridView moderno
* Cards premium
* Imagen destacada
* Precio visible
* Estado disponible/vendido
* Favoritos con ícono corazón

---

# 5. PANTALLA DETALLE DEL AUTO

Debe incluir:

* Galería deslizable
* Hero animations
* Información completa
* Botón favoritos
* Botón “Solicitar prueba”
* Botón “Simular compra”
* Diseño premium

---

# 6. FAVORITOS

Implementar:

* Guardado en Firestore
* Persistencia por usuario
* Pantalla de favoritos
* Eliminar favoritos

---

# 7. BUSCADOR INTELIGENTE

Implementar:

## Búsqueda por:

* Marca
* Modelo
* Texto libre

## Filtros:

* Precio
* Año
* Combustible
* Transmisión

---

# 8. SISTEMA DE CITAS

El usuario podrá:

* Solicitar prueba de manejo
* Elegir fecha
* Elegir hora

Guardar en Firestore.

## Admin

Puede:

* Ver solicitudes
* Aprobar
* Cancelar
* Gestionar citas

---

# 9. SIMULADOR DE COMPRA

Debe calcular:

* Enganche
* Intereses
* Mensualidades
* Tiempo de financiamiento

Mostrar resultados dinámicos.

La UI debe verse moderna y profesional.

---

# PANTALLAS OBLIGATORIAS

## AUTENTICACIÓN

Crear:

* SplashScreen
* LoginScreen
* RegisterScreen
* ForgotPasswordScreen

## NAVEGACIÓN PRINCIPAL

Crear:

* HomeScreen
* SearchScreen
* FavoritesScreen
* ProfileScreen

## AUTOS

Crear:

* CarListScreen
* CarDetailsScreen

## ADMINISTRADOR

Crear:

* AdminDashboardScreen
* AddEditCarScreen
* ManageAppointmentsScreen

## EXTRAS

Crear:

* SimulatorScreen
* AppointmentScreen

---

# FIREBASE

Explicar detalladamente:

## Firebase Console

* Crear proyecto
* Vincular Flutter
* Configurar Android
* Configurar iOS
* Descargar google-services.json
* Descargar GoogleService-Info.plist

## Authentication

Configurar:

* Email/Password

## Firestore

Crear colecciones:

* users
* cars
* favorites
* appointments

## Firebase Storage

Subida de imágenes.

---

# REGLAS DE FIRESTORE

Debes incluir:

* Reglas completas
* Seguridad
* Protección admin
* Validaciones
* Restricción de acceso

---

# CALIDAD DEL CÓDIGO

TODO el código debe:

* Tener null safety
* Estar comentado
* Ser reutilizable
* Tener arquitectura limpia
* Ser escalable
* Tener manejo de errores
* Tener widgets separados
* Tener buenas prácticas
* Usar nombres profesionales

---

# EXPERIENCIA DE USUARIO

La app debe sentirse como una aplicación real premium.

Agregar:

* Transiciones suaves
* Hero animations
* Microinteracciones
* Indicadores de carga
* Empty states modernos
* Confirmaciones visuales
* Feedback visual

---

# DINÁMICA DE TRABAJO (MUY IMPORTANTE)

NO entregues todo de golpe.

Debes dividir TODO EXACTAMENTE en estas fases:

# FASE 1 — INFRAESTRUCTURA Y SETUP

Incluir:

* Configuración Firebase
* pubspec.yaml
* main.dart
* Theme global
* Rutas
* Arquitectura inicial
* Estructura de carpetas

---

# FASE 2 — MODELS Y SERVICES

Crear:

* Modelos
* fromMap
* toMap
* Firestore Services
* AuthService
* CRUD Firestore

---

# FASE 3 — AUTENTICACIÓN

Crear:

* Login UI
* Registro UI
* Forgot Password
* Validaciones
* Roles admin/user
* Persistencia de sesión

---

# FASE 4 — CATÁLOGO Y UI

Crear:

* HomeScreen
* Cards de autos
* Favoritos
* Buscador
* Pantalla detalle
* StreamBuilder

---

# FASE 5 — PANEL ADMIN

Crear:

* Dashboard admin
* CRUD completo
* Editar autos
* Eliminar autos
* Gestión de citas
* Subida de imágenes

---

# FASE 6 — FUNCIONES AVANZADAS

Crear:

* Simulador financiero
* Animaciones
* Responsive UI
* Optimización
* Mejoras finales
* Preparación para producción

---

# REGLA OBLIGATORIA
🗄️ MODELADO DE BASE DE DATOS (OBLIGATORIO)

Debes diseñar y explicar completamente la estructura de la base de datos utilizada en Firebase Firestore.

La IA debe mostrar:

Colecciones
Subcolecciones
Relaciones
Campos
Tipos de datos
Ejemplos de documentos
IDs
Relaciones entre entidades
COLECCIONES/TABLAS OBLIGATORIAS

La aplicación debe incluir y explicar las siguientes colecciones:

Aquí tienes las **tablas en formato Markdown listo para GitHub (.md)**, bien estructuradas y profesionales para tu proyecto **AutoElite App**.

---

# 🗄️ Modelo de Base de Datos — AutoElite App

## 📌 1. Tabla: Autos

| Campo            | Tipo de dato | Descripción                               |
| ---------------- | ------------ | ----------------------------------------- |
| id               | String       | Identificador único del auto              |
| marcaId          | String       | Relación con la tabla Marcas              |
| modelo           | String       | Modelo del vehículo                       |
| precio           | double       | Precio del auto                           |
| año              | int          | Año de fabricación                        |
| kilometraje      | int          | Kilometraje del auto                      |
| transmision      | String       | Tipo de transmisión (Automática / Manual) |
| combustible      | String       | Tipo de combustible                       |
| descripcion      | String       | Descripción detallada                     |
| imagenes         | List<String> | URLs de imágenes en Firebase Storage      |
| disponible       | bool         | Estado del auto (disponible o vendido)    |
| fechaPublicacion | Timestamp    | Fecha de publicación                      |

---

## 📌 2. Tabla: Marcas

| Campo       | Tipo de dato | Descripción                            |
| ----------- | ------------ | -------------------------------------- |
| id          | String       | Identificador único de la marca        |
| nombreMarca | String       | Nombre de la marca (Toyota, BMW, etc.) |
| logo        | String       | URL del logo de la marca               |
| paisOrigen  | String       | País de origen de la marca             |

---

## 📌 3. Tabla: Empleados

| Campo         | Tipo de dato | Descripción                      |
| ------------- | ------------ | -------------------------------- |
| id            | String       | Identificador único del empleado |
| nombre        | String       | Nombre completo                  |
| correo        | String       | Email del empleado               |
| telefono      | String       | Número de contacto               |
| rol           | String       | Rol (admin / vendedor)           |
| fechaRegistro | Timestamp    | Fecha de registro                |

---

## 📌 4. Tabla: Ventas

| Campo       | Tipo de dato | Descripción                             |
| ----------- | ------------ | --------------------------------------- |
| id          | String       | Identificador único de la venta         |
| autoId      | String       | Relación con Autos                      |
| clienteId   | String       | Usuario comprador                       |
| empleadoId  | String       | Empleado que realizó la venta           |
| precioVenta | double       | Precio final de la venta                |
| fechaVenta  | Timestamp    | Fecha de la venta                       |
| metodoPago  | String       | Método de pago (contado, crédito, etc.) |

---

## 📌 5. Tabla: Pruebas de Manejo

| Campo     | Tipo de dato | Descripción                               |
| --------- | ------------ | ----------------------------------------- |
| id        | String       | Identificador único de la solicitud       |
| autoId    | String       | Auto solicitado                           |
| usuarioId | String       | Usuario que solicita la prueba            |
| fecha     | DateTime     | Fecha seleccionada                        |
| hora      | String       | Hora seleccionada                         |
| estado    | String       | Estado (pendiente / aprobada / cancelada) |

---

## 📌 6. Tabla: Usuarios

| Campo         | Tipo de dato | Descripción                 |
| ------------- | ------------ | --------------------------- |
| id            | String       | Identificador del usuario   |
| nombre        | String       | Nombre del usuario          |
| correo        | String       | Email                       |
| rol           | String       | user / admin                |
| fechaRegistro | Timestamp    | Fecha de creación de cuenta |

---

## 📌 7. Tabla: Favoritos

| Campo  | Tipo de dato | Descripción                |
| ------ | ------------ | -------------------------- |
| id     | String       | Identificador del registro |
| userId | String       | Usuario dueño de favoritos |
| autoId | String       | Auto marcado como favorito |
| fecha  | Timestamp    | Fecha de agregado          |

---

# 🔗 Relaciones entre tablas

* **Autos → Marcas** (muchos autos pertenecen a una marca)
* **Ventas → Autos** (una venta pertenece a un auto)
* **Ventas → Empleados** (un empleado registra muchas ventas)
* **PruebasManejo → Usuarios / Autos**
* **Favoritos → Usuarios / Autos**

---

# 📊 Vista tipo diagrama (simplificado)

```plaintext
USERS
  │
  ├── FAVORITOS
  ├── PRUEBAS DE MANEJO
  └── VENTAS

AUTOS
  │
  ├── MARCAS
  ├── VENTAS
  └── PRUEBAS DE MANEJO

EMPLEADOS
  └── VENTAS
```

---


Estados posibles:

pendiente
aprobada
cancelada
RELACIONES OBLIGATORIAS

Debes explicar las relaciones entre colecciones:

Un auto pertenece a una marca
Un empleado puede registrar muchas ventas
Un usuario puede solicitar muchas pruebas de manejo
Un auto puede tener muchas pruebas de manejo
Una venta pertenece a un auto y un empleado
EJEMPLOS OBLIGATORIOS

Debes mostrar:

Ejemplo JSON de documentos Firestore
Cómo se verían en Firebase
Cómo consultar relaciones
Cómo usar Streams con estas colecciones
Cómo usar Provider con estos datos
MODELOS OBLIGATORIOS

Debes crear modelos Dart completos para:

AutoModel
MarcaModel
EmpleadoModel
VentaModel
PruebaManejoModel

Cada modelo debe incluir:

fromMap
toMap
copyWith
null safety
comentarios
CRUD OBLIGATORIO

Debes implementar CRUD completo para:

Autos
Marcas
Empleados
Ventas
PruebasManejo

Incluyendo:

Crear
Leer
Editar
Eliminar
Streams en tiempo real
DASHBOARD ADMINISTRATIVO

El panel admin debe mostrar:

Total autos
Total ventas
Total empleados
Total pruebas de manejo
Autos disponibles
Autos vendidos

Usar:

Cards modernas
Gráficas simples
Estadísticas visuales
CONSULTAS AVANZADAS

Debes mostrar ejemplos de:

Filtrar autos por marca
Buscar ventas por empleado
Obtener pruebas de manejo pendientes
Obtener autos disponibles
Obtener ventas por fecha
FIRESTORE BEST PRACTICES

Debes explicar:

Cuándo usar subcolecciones
Cuándo usar referencias
Optimización de lecturas
Indexación
Seguridad
Escalabilidad
---

# FORMA DE RESPUESTA ESPERADA

En cada fase debes proporcionar:

* Explicación técnica
* Código completo
* Nombre de cada archivo
* Dónde crear cada archivo
* Código listo para copiar y pegar
* Explicaciones simples
* Buenas prácticas utilizadas

---

# OBJETIVO FINAL

El resultado final debe parecer:

* Una app profesional real
* Publicable en Play Store
* Moderna
* Elegante
* Premium
* Escalable
* Bien optimizada
* Bien estructurada
* Totalmente funcional
* Con Firebase integrado correctamente
* Con excelente experiencia de usuario

Este prompt ya está optimizado para obtener respuestas mucho más profesionales, estructuradas y completas al trabajar con modelos de IA para desarrollar tu app Flutter/Firebase.
