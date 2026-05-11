# Proyecto-Inicial-Agencia-de-Carros
Aqui se guarda todos los trabajos que complementa el proyecto

# Prompt
Actua como un administrador de base de datos: Proyecto Agencia de Carros (Venta), ¿que entidades se necesitan para su gestion?

## Entidades para una Agencia de Venta de Carros

Aquí te presento las entidades principales y sus atributos clave:

---

### 🚗 Core del Negocio

**1. VEHÍCULO**
- `id_vehiculo`, marca, modelo, año, color, kilometraje, precio_venta, precio_costo, VIN, estado *(disponible/vendido/reservado)*, tipo_combustible, transmisión, num_puertas

**2. INVENTARIO**
- `id_inventario`, id_vehiculo, fecha_ingreso, ubicacion_fisica, condicion *(nuevo/usado)*, notas

---

### 👥 Personas

**3. CLIENTE**
- `id_cliente`, nombre, apellido, RFC/CURP, teléfono, email, dirección, fecha_registro

**4. EMPLEADO**
- `id_empleado`, nombre, apellido, puesto *(vendedor/gerente/mecánico)*, salario, fecha_contratación, comision_porcentaje

---

### 💰 Transacciones

**5. VENTA**
- `id_venta`, id_cliente, id_empleado, id_vehiculo, fecha_venta, precio_final, descuento, metodo_pago, id_financiamiento

**6. FINANCIAMIENTO**
- `id_financiamiento`, id_cliente, id_banco, monto_financiado, tasa_interes, num_cuotas, fecha_inicio, fecha_fin, estado

**7. COTIZACIÓN**
- `id_cotizacion`, id_cliente, id_vehiculo, id_empleado, fecha, precio_ofertado, vigencia, estado *(aceptada/rechazada/pendiente)*

---

### 🔧 Soporte

**8. PROVEEDOR**
- `id_proveedor`, nombre, tipo *(distribuidor/subasta/particular)*, contacto, ciudad, país

**9. SERVICIO / MANTENIMIENTO**
- `id_servicio`, id_vehiculo, id_empleado, tipo_servicio, fecha, costo, descripcion, id_proveedor_refacciones

**10. PRUEBA DE MANEJO**
- `id_prueba`, id_cliente, id_vehiculo, id_empleado, fecha_hora, duracion, observaciones

---

### 📋 Catálogos

**11. MARCA** — `id_marca`, nombre, país_origen, logo

**12. MODELO** — `id_modelo`, id_marca, nombre, categoria *(sedan/SUV/pickup/etc)*

**13. BANCO / ASEGURADORA** — `id_banco`, nombre, tipo, tasa_referencia

**14. DOCUMENTO** — `id_documento`, id_venta, tipo *(factura/contrato/seguro)*, archivo, fecha_emision

---

### 🔗 Relaciones Clave

```
CLIENTE      ──< VENTA >── VEHÍCULO
VENTA        ──< FINANCIAMIENTO
EMPLEADO     ──< VENTA
VEHÍCULO     ──< SERVICIO
PROVEEDOR    ──> VEHÍCULO (suministro)
CLIENTE      ──< COTIZACIÓN >── VEHÍCULO
MARCA        ──< MODELO ──< VEHÍCULO
```

---

¿Quieres que continúe con el **diagrama ER**, el **script SQL** de creación de tablas, o profundizar en alguna entidad específica?


# Las entidades con sus atributos y tipo en forma de tabla para cada una de las entidades
## Tablas
<img width="700" height="561" alt="image" src="https://github.com/user-attachments/assets/b942855a-e1a1-45d9-940c-550a0b6b91ce" />

<img width="686" height="720" alt="image" src="https://github.com/user-attachments/assets/3939e30d-c1d1-40b9-ad32-463468a8d438" />

<img width="701" height="740" alt="image" src="https://github.com/user-attachments/assets/29bafb7e-4d86-4b5e-8240-c0ee182fc43a" />

<img width="674" height="690" alt="image" src="https://github.com/user-attachments/assets/b9d06be0-6b0a-46a1-aee5-49a316fd4e3a" />

# De acuerdo a tu respuesta anterior, ¿puedes generar un script en sql para descargar con el nombre de bdagenciacarros.sql para las 14 entidades con sus relaciones

¡Claro! Con base en las imágenes que proporcionaste, puedo generar un script SQL que cree las 14 tablas con sus relaciones (PK, FK, tipos de datos y restricciones) y lo deje listo para exportar como bdagenciacarros.sql. Aquí tienes un ejemplo completo:
bdagenciacarros.sql
