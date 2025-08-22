Identificación de Entidades, Atributos, Dominios y Clave Primaria

# Registro de Importación de Vehículos
Una empresa de importación recibe cada mes una variedad de vehículos provenientes de diferentes países. Cada vehículo tiene un número de serie único, modelo, marca, año de fabricación, velocidad máxima y precio declarado. Los vehículos se agrupan en lotes de importación, cada lote tiene un código identificador, fecha de llegada y país de origen. Además, cada vehículo es asignado a un concesionario local, el cual cuenta con un código de concesionario, nombre comercial, dirección y persona de contacto.

ANALISIS DEL ENUNCIADO:


 Entidad: VEHICULO

| **Atributo**        | **Dominio**                             | **Llave Primaria** |
|----------------------|------------------------------------------|--------------------|
| numero_serie         | Texto alfanumérico único (VARCHAR(20))  |  Sí |
| modelo               | Texto (VARCHAR(50))                     |  No |
| marca                | Texto (VARCHAR(50))                     |  No |
| año_fabricacion      | Entero positivo (ej. 1900–2025)         |  No |
| velocidad_maxima     | Entero positivo (km/h)                  |  No |
| precio_declarado     | Decimal positivo (NUMERIC(12,2))        |  No |
| codigo_lote      | Texto alfanumérico (VARCHAR(20))        |  No |
| codigo_concesionario  | Texto alfanumérico (VARCHAR(20))   |  No |

---

Entidad: LOTE

| **Atributo**   | **Dominio**                       | **Llave Primaria** |
|----------------|------------------------------------|--------------------|
| codigo_lote    | Texto alfanumérico (VARCHAR(20))  |  Sí |
| fecha_llegada  | Fecha (DATE)                      |  No |
| pais_origen    | Texto (VARCHAR(50))               |  No |

---

 Entidad: CONCESIONARIO

| **Atributo**       | **Dominio**                       | **Llave Primaria** |
|---------------------|------------------------------------|--------------------|
| codigo_concesionario | Texto alfanumérico (VARCHAR(20)) |  Sí |
| nombre_comercial    | Texto (VARCHAR(100))              |  No |
| direccion           | Texto (VARCHAR(150))              |  No |
| persona_contacto    | Texto (VARCHAR(100))              |  No |

---



