create DATABASE importacion_vehiculos;

-- ========================
-- TABLA: Lote
-- ========================
CREATE TABLE lote (
    codigo_lote VARCHAR(20) PRIMARY KEY,
    fecha_llegada DATE NOT NULL,
    pais_origen VARCHAR(50) NOT NULL
);

-- ========================
-- TABLA: Concesionario
-- ========================
CREATE TABLE concesionario (
    codigo_concesionario VARCHAR(20) PRIMARY KEY,
    nombre_comercial VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    persona_contacto VARCHAR(100) NOT NULL
);

-- ========================
-- TABLA: Vehiculo
-- ========================
CREATE TABLE vehiculo (
    numero_serie VARCHAR(20) PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    anio_fabricacion INT NOT NULL,
    velocidad_maxima INT NOT NULL,
    precio_declarado NUMERIC(12,2) NOT NULL,
    codigo_lote VARCHAR(20) NOT NULL,
    codigo_concesionario VARCHAR(20) NOT NULL,
    CONSTRAINT fk_lote FOREIGN KEY (codigo_lote) REFERENCES lote (codigo_lote),
    CONSTRAINT fk_concesionario FOREIGN KEY (codigo_concesionario) REFERENCES concesionario (codigo_concesionario)
);

