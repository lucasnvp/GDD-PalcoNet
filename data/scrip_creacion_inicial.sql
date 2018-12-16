USE [GD2C2018]
GO

CREATE SCHEMA [GEDIENTOS]
GO

-- 1 Tabla de usuarios.
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Usuario') DROP TABLE [GEDIENTOS].[Usuario]
CREATE TABLE [GEDIENTOS].[Usuario](
  Usuario_Id INT PRIMARY KEY IDENTITY(1,1) ,
  Usuario_Username VARCHAR(255) ,
  Usuario_Password VARCHAR(255)
)
GO

-- 2 Tabla de Asignaciones de Roles y Usuarios cada usuario puede tener mas de un rol
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Asignacion_Rol') DROP TABLE [GEDIENTOS].[Asignacion_Rol]
CREATE TABLE [GEDIENTOS].[Asignacion_Rol](
  Asignacion_Rol_Id INT,
  Asignacion_Rol_Usuario_Id INT
  --PRIMARY KEY (Id_Rol,Id_Usuario)
)
GO

-- 3 Tabla de Roles de Usuario
CREATE TABLE [GEDIENTOS].[Rol](
  Rol_Id INT PRIMARY KEY IDENTITY(1,1),
  Rol_Nombre VARCHAR(255),
  Rol_Activo BIT
)
GO

-- 4 Tabla de Funcionalidades
CREATE TABLE [GEDIENTOS].[Funcionalidad](
  Funcionalidad_Id INT PRIMARY KEY IDENTITY(1,1),
  Funcionalidad_Descripcion VARCHAR(255)
)
GO

-- 5 Creamos la tabla de roles por funcionalidad, cada rol puede tener muchas funcionalidades y una funcionalidad puede estar presente en varios roles.
CREATE TABLE [GEDIENTOS].[Rol_X_Funcionalidad](
  Funcionalidad_Id INT,
  Rol_Id INT
  --PRIMARY KEY (Id_Funcionalidad,Id_Rol)
)
GO

-- 6 Tabla Clientes
CREATE TABLE [GEDIENTOS].[Cliente](
  Cliente_Id INT PRIMARY KEY IDENTITY(1,1),
  Cliente_Usuario_Id INT ,
  Cliente_Dni NUMERIC (18) UNIQUE,
  Cliente_Apellido VARCHAR (255) NOT NULL,
  Cliente_Nombre VARCHAR (255) NOT NULL,
  Cliente_Fecha_Nacimiento DATETIME,
  Cliente_Mail VARCHAR (255),
  Cliente_Domicilio_Calle VARCHAR (255),
  Cliente_Nro_Calle NUMERIC (18),
  Cliente_Nro_Piso NUMERIC (18),
  Cliente_Dpto VARCHAR (255),
  Cliente_Codigo_Postal VARCHAR (255),

  Cliente_Tipo_DNI VARCHAR(4),
  Cliente_CUIL NUMERIC(25),
  Cliente_Telefono NUMERIC (18),
  Cliente_Localidad VARCHAR (50),
  Cliente_Fecha_Creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
  Cliente_Id_Tajeta_Credito INT
)
GO

-- 7 Tabla Tajetas de Credito
CREATE TABLE [GEDIENTOS].[Tarjeta_Credito](
  Tarjeta_Credito_Id INT,
  Tarjeta_Credito_Nro NUMERIC (30)
)
GO 

-- 8 Tabla Empresas
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Empresa') DROP TABLE [GEDIENTOS].[Empresa]
CREATE TABLE [GEDIENTOS].[Empresa](
  Empresa_Id INT PRIMARY KEY IDENTITY(1,1),
  Empresa_Usuario_Id INT ,
  Empresa_Razon_Social VARCHAR (255) NOT NULL,
  Empresa_Cuit VARCHAR (255) NOT NULL UNIQUE,
  Empresa_Fecha_Creacion DATETIME,
  Empresa_Mail VARCHAR (50),
  Empresa_Direccion VARCHAR (50),
  Empresa_Nro_Calle NUMERIC(18,0),
  Empresa_Nro_Piso NUMERIC(18,0),
  Empresa_Dpto VARCHAR (50),
  Empresa_Codigo_Postal VARCHAR (50),
  Empresa_Localidad VARCHAR (50),
  Empresa_Ciudad VARCHAR (255),
  Empresa_Telefono VARCHAR(50)
)
GO 

-- 9 Tabla Rubro
CREATE TABLE [GEDIENTOS].[Rubro](
  Rubro_Id INT PRIMARY KEY IDENTITY(1,1),
  Rubro_Descripcion VARCHAR (255)
)
GO

-- 10 Tabla Precio por Grado
CREATE TABLE [GEDIENTOS].[Precio_Grado](
  Precio_Grado_Id INT PRIMARY KEY,
  Precio_Grado_Descripcion VARCHAR (255),
  Precio_Grado_Precio NUMERIC(18)
)
GO

-- 11 Tabla Estados de Publicaciones
CREATE TABLE [GEDIENTOS].[Estado_Publicacion](
  Estado_Publicacion_Id INT PRIMARY KEY IDENTITY(1,1),
  Estado_Publicacion_Descripcion VARCHAR (255)
)
GO

-- 12 Tabla Ubicaciones
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Ubicacion') DROP TABLE [GEDIENTOS].[Ubicacion]
CREATE TABLE [GEDIENTOS].[Ubicacion](
  Ubicacion_Id INT PRIMARY KEY IDENTITY(1,1) ,
  Ubicacion_Fila VARCHAR (3) ,
  Ubicacion_Asiento NUMERIC (18,0) ,
  Ubicacion_Sin_Numerar BIT,
  Ubicacion_Precio NUMERIC (18,0) ,
  Ubicacion_Tipo_Descripcion_Id INT ,
  Ubicacion_Espectaculo_Id INT 
)
GO

-- 13 Tabla Espectaculos
CREATE TABLE [GEDIENTOS].[Espectaculo](
  Espectaculo_Id INT PRIMARY KEY IDENTITY(1,1) ,
  Espectaculo_Empresa_Id INT,
  Espectaculo_Codigo NUMERIC (18) ,
  Espectaculo_Descripcion VARCHAR (255) ,
  Espectaculo_Fecha_Espectaculo DATETIME ,
  Espectaculo_Fecha_Vencimiento DATETIME ,
  Espectaculo_Rubro_Id INT ,
  Espectaculo_Estado_Publicacion_Id INT ,
	
  
  Espectaculo_Precio_Grado_Id INT ,
  Espectaculo_Usuario_Id INT ,
  Espectaculo_Fecha_Publicacion DATE,
  Espectaculo_Direccion VARCHAR (255)
)
GO

-- 14 Tabla Compras
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Compra') DROP TABLE [GEDIENTOS].[Compra]
CREATE TABLE [GEDIENTOS].[Compra](
  Compra_Id INT PRIMARY KEY IDENTITY(1,1),
  Compra_Cliente_Id INT ,
  Compra_Factura_Id INT ,
  Compra_Espectaculo_Id INT ,
  Compra_Ubicacion_Id INT ,
  Compra_Fecha_Compra DATE ,
  Compra_Cantidad NUMERIC (18)
)
GO 

-- 15 Tabla Factura
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Factura') DROP TABLE [GEDIENTOS].[Factura]
CREATE TABLE [GEDIENTOS].[Factura](
  Factura_Id INT PRIMARY KEY IDENTITY(1,1),
  Factura_Empresa_Id INT ,
  Factura_Nro NUMERIC (18, 0) ,
  Factura_Fecha DATETIME ,
  Factura_Total NUMERIC (18, 2)  
)
GO

-- 16 Tabla Item Factura
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Item_Factura') DROP TABLE [GEDIENTOS].[Item_Factura]
CREATE TABLE [GEDIENTOS].[Item_Factura](
  Factura_Id INT ,
  Item_Factura_Compra_Id INT ,
  Item_Factura_Monto NUMERIC (18, 2) ,
  Item_Factura_Cantidad NUMERIC (18, 0) ,
  Item_Factura_Descripcion VARCHAR (120) ,
)
GO

-- 17 Tabla Forma de pago
CREATE TABLE [GEDIENTOS].[Forma_De_Pago](
  Forma_De_Pago_Id INT PRIMARY KEY IDENTITY(1,1),
  Forma_De_Pago_Descripcion VARCHAR (255) ,
)
GO

-- 18 Tabla Tipo_De_Ubicacion
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Tipo_De_Ubicacion') DROP TABLE [GEDIENTOS].[Tipo_De_Ubicacion]
CREATE TABLE [GEDIENTOS].[Tipo_De_Ubicacion](
  Tipo_De_Ubicacion_Id INT PRIMARY KEY IDENTITY(1,1),
  Tipo_De_Ubicacion_Codigo NUMERIC (18) ,
  Tipo_De_Ubicacion_Descripcion VARCHAR (255) 
)
GO

-- Comienzo de la migracion
-- Empresas
INSERT INTO GEDIENTOS.Empresa (
	Empresa_Razon_Social, 
	Empresa_Cuit, 
	Empresa_Fecha_Creacion, 
	Empresa_Mail, 
	Empresa_Direccion, 
	Empresa_Nro_Calle, 
	Empresa_Nro_Piso,
	Empresa_Dpto,
	Empresa_Codigo_Postal
) SELECT DISTINCT 
	Espec_Empresa_Razon_Social,
	Espec_Empresa_Cuit,
	Espec_Empresa_Fecha_Creacion,
	Espec_Empresa_Mail,
	Espec_Empresa_Dom_Calle,
	Espec_Empresa_Nro_Calle,
	Espec_Empresa_Piso,
	Espec_Empresa_Depto,
	Espec_Empresa_Cod_Postal 
FROM gd_esquema.Maestra
GO

INSERT INTO GEDIENTOS.Cliente (
	Cliente_Dni ,
	Cliente_Apellido ,
	Cliente_Nombre ,
	Cliente_Fecha_Nacimiento ,
	Cliente_Mail ,
	Cliente_Domicilio_Calle ,
	Cliente_Nro_Calle ,
	Cliente_Nro_Piso ,
	Cliente_Dpto ,
	Cliente_Codigo_Postal
) SELECT DISTINCT
	Cli_Dni ,
	Cli_Apeliido ,
	Cli_Nombre ,
	Cli_Fecha_Nac ,
	Cli_Mail ,
	Cli_Dom_Calle ,
	Cli_Nro_Calle ,
	Cli_Piso ,
	Cli_Depto ,
	Cli_Cod_Postal 
FROM gd_esquema.Maestra
WHERE CLI_DNI IS NOT NULL
GO

INSERT INTO GEDIENTOS.Estado_Publicacion ( Estado_Publicacion_Descripcion ) VALUES ('Borrador') 
GO
INSERT INTO GEDIENTOS.Estado_Publicacion ( Estado_Publicacion_Descripcion ) VALUES ('Publicada') 
GO
INSERT INTO GEDIENTOS.Estado_Publicacion ( Estado_Publicacion_Descripcion ) VALUES ('Finalizada') 
GO

INSERT INTO GEDIENTOS.Espectaculo(
	Espectaculo_Empresa_Id ,
	Espectaculo_Codigo  ,
	Espectaculo_Descripcion ,
	Espectaculo_Fecha_Espectaculo ,
	Espectaculo_Fecha_Vencimiento ,
	Espectaculo_Estado_Publicacion_Id
) SELECT
	Empresa.Empresa_Id AS Empresa_Id , 
	Espectaculo_Cod ,
	Espectaculo_Descripcion ,
	Espectaculo_Fecha ,
	Espectaculo_Fecha_Venc ,
	ep.Estado_Publicacion_Id AS Estado_Publicacion
FROM gd_esquema.Maestra maestra
JOIN GEDIENTOS.Empresa Empresa
	ON empresa.Empresa_Cuit = maestra.[Espec_Empresa_Cuit]
JOIN [GEDIENTOS].[Estado_Publicacion] ep
	ON ep.Estado_Publicacion_Descripcion = maestra.[Espectaculo_Estado]
GROUP BY
	Empresa.Empresa_Id, 
	[Espectaculo_Cod],
	[Espectaculo_Descripcion],
	[Espectaculo_Fecha] ,
	[Espectaculo_Fecha_Venc] ,
	[Espectaculo_Rubro_Descripcion] ,
	ep.Estado_Publicacion_Id
GO

INSERT INTO GEDIENTOS.Forma_De_Pago ( Forma_De_Pago_Descripcion ) SELECT DISTINCT Forma_Pago_Desc FROM gd_esquema.Maestra WHERE Forma_Pago_Desc IS NOT NULL
GO

INSERT INTO GEDIENTOS.Factura (Factura_Nro,Factura_Empresa_Id, Factura_Fecha, Factura_Total)
SELECT Maestra.Factura_Nro,Empresa_Id, Maestra.Factura_Fecha, Maestra.Factura_Total
FROM gd_esquema.Maestra Maestra
INNER JOIN GEDIENTOS.Empresa Emp
	ON Maestra.Espec_Empresa_Cuit = Emp.Empresa_Cuit
WHERE Maestra.Factura_Nro IS NOT NULL
GROUP BY Maestra.Factura_Nro,Empresa_Id, Maestra.Factura_Fecha, Maestra.Factura_Total
GO

INSERT INTO GEDIENTOS.Tipo_De_Ubicacion (Tipo_De_Ubicacion_Codigo, Tipo_De_Ubicacion_Descripcion)
SELECT DISTINCT Ubicacion_Tipo_Codigo, Ubicacion_Tipo_Descripcion 
FROM gd_esquema.Maestra
GO

INSERT INTO GEDIENTOS.Ubicacion (Ubicacion_Fila, Ubicacion_Espectaculo_Id, Ubicacion_Asiento, Ubicacion_Sin_Numerar, Ubicacion_Precio, Ubicacion_Tipo_Descripcion_Id)
SELECT DISTINCT Ubicacion_Fila, esp.Espectaculo_id, Ubicacion_Asiento, Ubicacion_Sin_numerar, Ubicacion_Precio, Ubi.Tipo_De_Ubicacion_Id
FROM gd_esquema.Maestra Maestra
JOIN GEDIENTOS.Tipo_De_Ubicacion Ubi
ON Ubi.Tipo_De_Ubicacion_Codigo = Maestra.Ubicacion_Tipo_Codigo
JOIN GEDIENTOS.Espectaculo Esp
ON Esp.Espectaculo_Codigo = Maestra.Espectaculo_Cod
WHERE Ubicacion_Tipo_Codigo IS NOT NULL

INSERT INTO GEDIENTOS.Compra (Compra_Cliente_Id, Compra_Factura_Id, Compra_Espectaculo_Id, Compra_Ubicacion_Id, Compra_Fecha_Compra, Compra_Cantidad)
SELECT DISTINCT Cli.Cliente_Id, isnull(Fac.Factura_Id,0), Esp.Espectaculo_Id, Ubi.Ubicacion_Id, Maestra.Compra_Fecha, Maestra.Compra_Cantidad
FROM gd_esquema.Maestra Maestra 
LEFT JOIN GEDIENTOS.Factura Fac
	ON Fac.Factura_Nro = Maestra.Factura_Nro
JOIN GEDIENTOS.Cliente Cli
	ON Cli.Cliente_Dni = Maestra.Cli_Dni
JOIN GEDIENTOS.Espectaculo Esp
	ON Esp.Espectaculo_Codigo = Maestra.Espectaculo_Cod 
JOIN GEDIENTOS.Ubicacion Ubi 
	ON Esp.Espectaculo_Id = Ubi.Ubicacion_Espectaculo_Id 
	AND Ubi.Ubicacion_Asiento = Maestra.Ubicacion_Asiento 
	AND Ubi.Ubicacion_Fila = Maestra.Ubicacion_Fila
WHERE Maestra.Compra_Fecha is not null
GO

INSERT INTO GEDIENTOS.Item_Factura (Factura_Id,Item_Factura_Compra_Id, Item_Factura_Cantidad, Item_Factura_Monto, Item_Factura_Descripcion)
SELECT Fac.Factura_Id, Com.Compra_Id, Maestra.Item_Factura_Cantidad, Maestra.Item_Factura_Monto, Maestra.Item_Factura_Descripcion
FROM gd_esquema.Maestra Maestra 
JOIN GEDIENTOS.Factura Fac
	ON Fac.Factura_Nro = Maestra.Factura_Nro
	JOIN GEDIENTOS.Espectaculo Esp
	ON Esp.Espectaculo_Codigo = Maestra.Espectaculo_Cod 
JOIN GEDIENTOS.Ubicacion Ubi 
	ON Esp.Espectaculo_Id = Ubi.Ubicacion_Espectaculo_Id 
	AND Ubi.Ubicacion_Asiento = Maestra.Ubicacion_Asiento 
	AND Ubi.Ubicacion_Fila = Maestra.Ubicacion_Fila
JOIN GEDIENTOS.Compra Com
	ON Com.Compra_Factura_Id = Fac.Factura_Id
	AND Com.Compra_Espectaculo_Id = Esp.Espectaculo_Id
	AND Com.Compra_Ubicacion_Id = Ubi.Ubicacion_Id
WHERE Maestra.Factura_Nro IS NOT NULL
GO