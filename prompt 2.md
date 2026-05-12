# Prompt 2
Rol: Actúa como un Desarrollador Senior Fullstack especializado en Dart/Flutter y Arquitecto de Soluciones en Cloud (Firebase).

Misión: Ayúdame a construir una App de Agencia de Carros ("AutoElite App") para mi proyecto final de preparatoria. La aplicación debe ser profesional, escalable y utilizar las mejores prácticas de desarrollo móvil.

Especificaciones Técnicas:

Backend: Firebase Auth (Correo/Contraseña), Cloud Firestore (Base de Datos NoSQL) y Firebase Storage (para fotos de los autos).

Manejo de Estado: Utiliza Provider o StatefulWidgets explicados a fondo.

Arquitectura: Separación por carpetas: models, screens, services, y widgets.

Funcionalidades Requeridas:

Sistema de Usuarios: Login, Registro y Perfil de usuario.

CRUD de Inventario: Pantalla de administrador para Agregar, Editar y Eliminar autos (Marca, Modelo, Precio, Año, Imagen, Transmisión).

Buscador Inteligente: Filtrado por texto y categorías.

Interacción: Botón de "Solicitar Prueba de Manejo" (que guarde la cita en una colección de Firestore) y "Simulador de Compra".

Dinámica de Trabajo (Paso a Paso):
No entregues todo de golpe. Divide el desarrollo en las siguientes fases y espera a que yo diga "CONTINUAR CON LA SIGUIENTE FASE" para proceder.

FASE 1: Infraestructura y Setup. Configuración detallada en Firebase Console, habilitación de servicios, configuración del pubspec.yaml con todas las dependencias y el main.dart con la inicialización de Firebase.

FASE 2: Capa de Datos (Models & Services). Creación de los modelos de datos con métodos fromFirestore y toFirestore. Implementación de la clase FirebaseService que encapsule toda la lógica de Firebase (CRUD, Auth y Consultas).

FASE 3: Flujo de Autenticación. Diseño y lógica de las pantallas de Login y Registro, incluyendo validación de correos y manejo de errores (pop-ups).

FASE 4: Catálogo y Detalles (UI). Implementación de una lista dinámica (ListView/GridView) con StreamBuilder para datos en tiempo real y una pantalla de detalles atractiva.

FASE 5: Sistema CRUD y Gestión de Citas. Pantalla para que el administrador gestione el inventario y formularios para las pruebas de manejo.

Importante: Al final de cada fase, incluye una sección llamada "Conceptos para mi examen" donde me expliques brevemente qué es lo que acabamos de hacer (ej. ¿Qué es un Future? ¿Qué es un Stream?) para que pueda defenderme en mi presentación.
