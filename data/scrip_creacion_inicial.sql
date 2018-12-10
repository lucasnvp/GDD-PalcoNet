USE [GD2C2018]
GO

CREATE SCHEMA [GEDIENTOS]
GO

-- 1 Tabla de usuarios.
CREATE TABLE [GEDIENTOS].[Usuarios](
  Id_Usuario INT PRIMARY KEY IDENTITY(1,1),
  Username VARCHAR(255),
  Password VARCHAR(255),
)GO

-- 2 Tabla de Asignaciones de Roles y Usuarios cada usuario puede tener mas de un rol
CREATE TABLE [GEDIENTOS].[Asignacion_Rol](
  Id_Rol INT,
  Id_Usuario INT,
  PRIMARY KEY (Id_Rol,Id_Usuario)
)GO

-- 3 Tabla de Roles de Usuario
CREATE TABLE [GEDIENTOS].[Rol](
  Id_Rol INT PRIMARY KEY IDENTITY(1,1),
  Nombre VARCHAR(255),
  Activo BIT,
)GO

-- 4 Tabla de Funcionalidades
CREATE TABLE [GEDIENTOS].[Funcionalidades](
  Id_Funcionalidad INT PRIMARY KEY IDENTITY(1,1),
  Descripcion VARCHAR(255),
)GO

-- 5 Creamos la tabla de roles por funcionalidad, cada rol puede tener muchas funcionalidades y una funcionalidad puede estar presente en varios roles.
CREATE TABLE [GEDIENTOS].[Rol_X_Funcionalidad](
  Id_Funcionalidad INT,
  Id_Rol INT,
  PRIMARY KEY (Id_Funcionalidad,Id_Rol)
)GO

-- 6 Tabla Clientes
CREATE TABLE Clientes(
  Id_Cliente INT PRIMARY KEY,
  Nombre VARCHAR(255),
  Apellido VARCHAR(255),
  Tipo_DNI VARCHAR(4),
  Nro_DNI NUMERIC(18),
  CUIL NUMERIC(25),
  Mail VARCHAR 255,
  Telefono NUMERIC 18,
  Direccion VARCHAR 50,
  Nro_Piso NUMERIC 10,
  Dpto VARCHAR 5,
  Localidad VARCHAR 50,
  Codigo_Postal varchar 15,
  Fecha_Nacimiento DATE,
  Fecha_Creacion DATE,
  Id_Tajeta_Credito INT FOREIGN KEY
)GO

-- 7 Tabla Tajetas de Credito
CREATE TABLE Tarjetas_Credito(
  Id_Tarjeta_Credito INT,
  Nro NUMERIC 30,
)GO 

-- 8 Tabla Empresas
CREATE TABLE Empresas(
  Id_Empresa INT PRIMARY KEY,
  Razon_Social VARCHAR UNIQUE,
  Mail VARCHAR 255,
  Telefono NUMERIC 18,
  Direccion VARCHAR 50,
  Nro_Piso NUMERIC 10,
  Dpto VARCHAR 5,
  Localidad VARCHAR 50,
  Codigo_Postal varchar 15,
  Ciudad varchar,
  CUIT NUMERIC UNIQUE,
)GO 

-- 9 Tabla Rubro
CREATE TABLE Rubro(
  Id_Rubro INT PRIMARY KEY,
  Codigo INT,
  Descripcion VARCHAR,
)

-- 10 Tabla Precio por Grado
CREATE TABLE Precio_Grado(
  Id_Precio_Grado INT PRIMARY KEY,
  Descripcion varchar,
  Precio NUMERIC,
)

-- 11 Tabla Estados de Publicaciones
CREATE TABLE Estados_Publicaciones(
  Id_Estado_Publicacion INT PRIMARY KEY,
  Descripcion varchar,
)

-- 12 Tabla Ubicaciones
CREATE TABLE Ubicaciones(
  Id_Ubicaciones INT PRIMARY KEY ,
  Fila varchar ,
  Asiento varchar ,
  Precio INT ,
  Tipo_Ubicacion INT ,
)

-- 13 Tabla Espectaculos
CREATE TABLE Espectaculos(
  Id_Espectaculo INT primary key,
  Id_Rubro FOREIGN KEY,
  Id_Ubicaciones FOREIGN KEY ,
  Id_Precio_Grado FOREIGN KEY ,
  Id_Usuario FOREIGN KEY ,
  Id_Estado_Publicacion FOREIGN KEY ,
  Codigo int,
  Descripcion varchar,
  Fecha_Publicacion date,
  Fecha_Espectaculo date,
  Direccion varchar,
)

-- 14 Tabla Compras
CREATE TABLE Compra(
  Id_Cliente FOREIGN KEY ,
  Id_Factura FOREIGN KEY ,
  Fecha_Compra DATE ,
  Cantidad NUMERIC 18 ,
)

-- 15 Tabla Factura
CREATE TABLE Factura(
  Id_Factura PRIMARY KEY ,
  Nro_Factura NUMERIC 18 ,
  Fecha_Factura DATE ,
  Tota_Factura NUMERIC 18 ,
)

-- 16 Tabla Item Factura
CREATE TABLE Item_Factura(
  Id_Factura FOREIGN KEY,
  Id_Ubicacion FOREIGN KEY ,
  Monto NUMERIC 18,
  Cantidad NUMERIC 18 ,
  Descripcion VARCHAR 16 ,
)

-- 17 Tabla Forma de pago
CREATE TABLE Forma_De_Pago(
  Id_Forma_De_Pago PRIMARY KEY ,
  Descripcion VARCHAR 255 ,
)

-- 18 Tabla Tipo_De_Ubicacion
CREATE TABLE Tipo_De_Ubicacion(
  Id_Tipo_De_Ubicacion PRIMARY KEY ,
  Descripcion VARCHAR 255 ,
)