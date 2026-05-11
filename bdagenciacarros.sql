-- Script: bdagenciacarros.sql
-- Base de datos para agencia de autos

CREATE DATABASE IF NOT EXISTS bdagenciacarros;
USE bdagenciacarros;

-- =====================================
-- Catalogo
-- =====================================

CREATE TABLE MARCA (
    id_marca INT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    pais_origen VARCHAR(60)
);

CREATE TABLE MODELO (
    id_modelo INT PRIMARY KEY,
    id_marca INT NOT NULL,
    nombre VARCHAR(80) NOT NULL,
    categoria ENUM('Sedan','SUV','Hatchback','Pickup','Crossover','Deportivo') NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES MARCA(id_marca)
);

-- =====================================
-- Inventario
-- =====================================

CREATE TABLE VEHICULO (
    id_vehiculo INT PRIMARY KEY,
    id_modelo INT NOT NULL,
    id_proveedor INT,
    VIN VARCHAR(17) NOT NULL,
    anio SMALLINT NOT NULL,
    color VARCHAR(40) NOT NULL,
    kilometraje INT NOT NULL,
    precio_costo DECIMAL(12,2) NOT NULL,
    precio_venta DECIMAL(12,2) NOT NULL,
    estado ENUM('Disponible','Vendido','Reservado') NOT NULL,
    transmision ENUM('Manual','Automatica') DEFAULT NULL,
    tipo_combustible ENUM('Gasolina','Diesel','Electrico','Hibrido') DEFAULT NULL,
    FOREIGN KEY (id_modelo) REFERENCES MODELO(id_modelo),
    FOREIGN KEY (id_proveedor) REFERENCES PROVEEDOR(id_proveedor)
);

CREATE TABLE INVENTARIO (
    id_inventario INT PRIMARY KEY,
    id_vehiculo INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    condicion ENUM('Nuevo','Usado') NOT NULL,
    ubicacion_fisica VARCHAR(100),
    notas TEXT,
    FOREIGN KEY (id_vehiculo) REFERENCES VEHICULO(id_vehiculo)
);

-- =====================================
-- Personas
-- =====================================

CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    apellido VARCHAR(80) NOT NULL,
    RFC VARCHAR(13),
    CURP VARCHAR(18),
    telefono VARCHAR(15) NOT NULL,
    email VARCHAR(120),
    direccion VARCHAR(200),
    fecha_registro DATE NOT NULL
);

CREATE TABLE EMPLEADO (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    apellido VARCHAR(80),
    puesto ENUM('Vendedor','Administrador','Gerente','Servicio') NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    comision_pct DECIMAL(5,2),
    fecha_contratacion DATE NOT NULL
);

-- =====================================
-- Transacciones
-- =====================================

CREATE TABLE VENTA (
    id_venta INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    id_vehiculo INT NOT NULL,
    fecha_venta DATE NOT NULL,
    precio_final DECIMAL(12,2) NOT NULL,
    descuento DECIMAL(10,2),
    metodo_pago ENUM('Efectivo','Credito','Debito','Transferencia') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES EMPLEADO(id_empleado),
    FOREIGN KEY (id_vehiculo) REFERENCES VEHICULO(id_vehiculo)
);

CREATE TABLE FINANCIAMIENTO (
    id_financiamiento INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_banco INT NOT NULL,
    id_venta INT NOT NULL,
    monto_financiado DECIMAL(12,2) NOT NULL,
    tasa_interes DECIMAL(5,2) NOT NULL,
    num_cuotas INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    estado ENUM('Activo','Pagado','Cancelado') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_banco) REFERENCES BANCO(id_banco),
    FOREIGN KEY (id_venta) REFERENCES VENTA(id_venta)
);

CREATE TABLE COTIZACION (
    id_cotizacion INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vehiculo INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha DATE NOT NULL,
    precio_ofertado DECIMAL(12,2) NOT NULL,
    vigencia_dias SMALLINT,
    estado ENUM('Pendiente','Aceptada','Rechazada') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_vehiculo) REFERENCES VEHICULO(id_vehiculo),
    FOREIGN KEY (id_empleado) REFERENCES EMPLEADO(id_empleado)
);

-- =====================================
-- Operaciones
-- =====================================

CREATE TABLE SERVICIO (
    id_servicio INT PRIMARY KEY,
    id_vehiculo INT NOT NULL,
    id_empleado INT NOT NULL,
    tipo_servicio VARCHAR(80) NOT NULL,
    fecha DATE NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (id_vehiculo) REFERENCES VEHICULO(id_vehiculo),
    FOREIGN KEY (id_empleado) REFERENCES EMPLEADO(id_empleado)
);

CREATE TABLE PRUEBA_MANEJO (
    id_prueba INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vehiculo INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    duracion_min SMALLINT,
    observaciones TEXT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_vehiculo) REFERENCES VEHICULO(id_vehiculo),
    FOREIGN KEY (id_empleado) REFERENCES EMPLEADO(id_empleado)
);

-- =====================================
-- Externos
-- =====================================

CREATE TABLE PROVEEDOR (
    id_proveedor INT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    tipo ENUM('Local','Nacional','Internacional') NOT NULL,
    contacto VARCHAR(100),
    ciudad VARCHAR(80),
    pais VARCHAR(60)
);

CREATE TABLE BANCO (
    id_banco INT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    tipo ENUM('Nacional','Internacional'),
    tasa_referencia DECIMAL(5,2)
);

-- =====================================
-- Documentos
-- =====================================

CREATE TABLE DOCUMENTO (
    id_documento INT PRIMARY KEY,
    id_venta INT NOT NULL,
    tipo ENUM('Factura','Contrato','Cotizacion','Servicio') NOT NULL,
    fecha_emision DATE NOT NULL,
    archivo VARCHAR(255),
    FOREIGN KEY (id_venta) REFERENCES VENTA(id_venta)
);
