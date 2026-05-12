# Prompt Profesional Final — AutoElite App

# ACTÚA COMO:

Actúa como un **Desarrollador Senior Fullstack especializado en Flutter/Dart**, experto en arquitectura escalable, Firebase y diseño UI/UX moderno.

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

Después de terminar cada fase:

DETENTE COMPLETAMENTE.

NO continúes automáticamente.

Espera hasta que yo escriba EXACTAMENTE:

```plaintext
CONTINUAR CON LA SIGUIENTE FASE
```

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
