USE [GD2C2018]
GO

CREATE SCHEMA [GEDIENTOS]
GO

-- 1 Tabla de usuarios.
CREATE TABLE [GEDIENTOS].[Usuarios](
  Id_Usuario INT PRIMARY KEY IDENTITY(1,1),
  Username VARCHAR(255),
  Password VARCHAR(255)
)
GO

-- 2 Tabla de Asignaciones de Roles y Usuarios cada usuario puede tener mas de un rol
CREATE TABLE [GEDIENTOS].[Asignacion_Rol](
  Id_Rol INT,
  Id_Usuario INT,
  --PRIMARY KEY (Id_Rol,Id_Usuario)
)
GO

-- 3 Tabla de Roles de Usuario
CREATE TABLE [GEDIENTOS].[Rol](
  Id_Rol INT PRIMARY KEY IDENTITY(1,1),
  Nombre VARCHAR(255),
  Activo BIT,
)
GO

-- 4 Tabla de Funcionalidades
CREATE TABLE [GEDIENTOS].[Funcionalidades](
  Id_Funcionalidad INT PRIMARY KEY IDENTITY(1,1),
  Descripcion VARCHAR(255),
)
GO

-- 5 Creamos la tabla de roles por funcionalidad, cada rol puede tener muchas funcionalidades y una funcionalidad puede estar presente en varios roles.
CREATE TABLE [GEDIENTOS].[Rol_X_Funcionalidad](
  Id_Funcionalidad INT,
  Id_Rol INT,
  --PRIMARY KEY (Id_Funcionalidad,Id_Rol)
)
GO

-- 6 Tabla Clientes
CREATE TABLE [GEDIENTOS].[Clientes](
  Id_Cliente INT PRIMARY KEY,
  Nombre VARCHAR(255),
  Apellido VARCHAR(255),
  Tipo_DNI VARCHAR(4),
  Nro_DNI NUMERIC(18),
  CUIL NUMERIC(25),
  Mail VARCHAR (255),
  Telefono NUMERIC (18),
  Direccion VARCHAR (50),
  Nro_Piso NUMERIC (10),
  Dpto VARCHAR (5),
  Localidad VARCHAR (50),
  Codigo_Postal VARCHAR (15),
  Fecha_Nacimiento DATE,
  Fecha_Creacion DATE,
  Id_Tajeta_Credito INT
)
GO

-- 7 Tabla Tajetas de Credito
CREATE TABLE [GEDIENTOS].[Tarjetas_Credito](
  Id_Tarjeta_Credito INT,
  Nro NUMERIC (30),
)
GO 

-- 8 Tabla Empresas
CREATE TABLE [GEDIENTOS].[Empresa](
  Empresa_Id INT PRIMARY KEY IDENTITY(1,1),
  Empresa_Razon_Social VARCHAR (255),
  Empresa_Cuit VARCHAR (255),
  Empresa_Fecha_Creacion DATETIME,
  Empresa_Mail VARCHAR (50),
  Empresa_Direccion VARCHAR (50),
  Empresa_Nro_Calle NUMERIC(18,0),
  Empresa_Nro_Piso NUMERIC(18,0),
  Empresa_Dpto VARCHAR (50),
  Empresa_Codigo_Postal VARCHAR (50),
  Empresa_Localidad VARCHAR (50),
  Empresa_Ciudad VARCHAR (255),
  Empresa_Telefono VARCHAR(50),
)
GO 

-- 9 Tabla Rubro
CREATE TABLE [GEDIENTOS].[Rubro](
  Id_Rubro INT PRIMARY KEY,
  Codigo INT,
  Descripcion VARCHAR (255),
)
GO

-- 10 Tabla Precio por Grado
CREATE TABLE [GEDIENTOS].[Precio_Grado](
  Id_Precio_Grado INT PRIMARY KEY,
  Descripcion VARCHAR (255),
  Precio NUMERIC,
)
GO

-- 11 Tabla Estados de Publicaciones
CREATE TABLE [GEDIENTOS].Estados_Publicaciones(
  Id_Estado_Publicacion INT PRIMARY KEY,
  Descripcion VARCHAR (255),
)
GO

-- 12 Tabla Ubicaciones
CREATE TABLE [GEDIENTOS].[Ubicaciones](
  Id_Ubicaciones INT PRIMARY KEY ,
  Fila VARCHAR (255) ,
  Asiento VARCHAR (255) ,
  Precio INT ,
  Tipo_Ubicacion INT ,
)
GO

-- 13 Tabla Espectaculos
CREATE TABLE [GEDIENTOS].[Espectaculos](
  Id_Espectaculo INT PRIMARY KEY ,
  Id_Rubro INT,
  Id_Ubicaciones INT ,
  Id_Precio_Grado INT ,
  Id_Usuario INT ,
  Id_Estado_Publicacion INT ,
  Codigo INT,
  Descripcion VARCHAR (255),
  Fecha_Publicacion DATE,
  Fecha_Espectaculo DATE,
  Direccion VARCHAR (255),
)
GO

-- 14 Tabla Compras
CREATE TABLE [GEDIENTOS].[Compra](
  Id_Cliente INT ,
  Id_Factura INT ,
  Fecha_Compra DATE ,
  Cantidad NUMERIC (18) ,
)
GO 

-- 15 Tabla Factura
CREATE TABLE [GEDIENTOS].[Factura](
  Id_Factura INT PRIMARY KEY ,
  Nro_Factura NUMERIC (18) ,
  Fecha_Factura DATE ,
  Tota_Factura NUMERIC (18) ,
)
GO

-- 16 Tabla Item Factura
CREATE TABLE [GEDIENTOS].[Item_Factura](
  Id_Factura INT,
  Id_Ubicacion INT ,
  Monto NUMERIC (18),
  Cantidad NUMERIC (18) ,
  Descripcion VARCHAR (16) ,
)
GO

-- 17 Tabla Forma de pago
CREATE TABLE [GEDIENTOS].[Forma_De_Pago](
  Id_Forma_De_Pago INT PRIMARY KEY ,
  Descripcion VARCHAR (255) ,
)
GO

-- 18 Tabla Tipo_De_Ubicacion
CREATE TABLE [GEDIENTOS].[Tipo_De_Ubicacion](
  Id_Tipo_De_Ubicacion INT PRIMARY KEY ,
  Descripcion VARCHAR (255) ,
)
GO

-- Comienzo de la migracion
INSERT INTO [GEDIENTOS].[Empresa] (
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
