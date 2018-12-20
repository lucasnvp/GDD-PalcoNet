USE [GD2C2018]
GO

CREATE SCHEMA [GEDIENTOS]
GO

/*******************************************
*	Comienzo de la creacion de tablas
*******************************************/

-- 1 Tabla de usuarios.
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Usuario') DROP TABLE [GEDIENTOS].[Usuario]
CREATE TABLE [GEDIENTOS].[Usuario](
  Usuario_Id INT PRIMARY KEY IDENTITY(1,1) ,
  Usuario_Username VARCHAR(255) UNIQUE,
  Usuario_Password VARCHAR(255) ,
  Fecha_Creacion DATETIME DEFAULT CURRENT_TIMESTAMP ,
  Usuario_Activo BIT NOT NULL DEFAULT 1, -- 1 Activo 0 Desactivo
  Usuario_Intentos NUMERIC(1,0) NOT NULL DEFAULT 0,
  Usuario_Puntos NUMERIC(10,0) DEFAULT 0
)
GO

-- 2 Tabla de Roles de Usuario
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rol') DROP TABLE [GEDIENTOS].[Rol]
CREATE TABLE [GEDIENTOS].[Rol](
  Rol_Id INT PRIMARY KEY IDENTITY(1,1),
  Rol_Nombre VARCHAR(255),
  Rol_Activo BIT NOT NULL DEFAULT 1 -- 1 Activo 0 Desactivo
)
GO

-- 3 Tabla de Asignaciones de Roles y Usuarios cada usuario puede tener mas de un rol
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Asignacion_Rol') DROP TABLE [GEDIENTOS].[Asignacion_Rol]
CREATE TABLE [GEDIENTOS].[Asignacion_Rol](
  Asignacion_Rol_Id INT ,
  Asignacion_Rol_Usuario_Id INT ,
  Asignacion_Rol_Activo BIT -- 1 Activo 0 Desactivo
)
GO

-- 4 Tabla de Funcionalidades
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Funcionalidad') DROP TABLE [GEDIENTOS].[Funcionalidad]
CREATE TABLE [GEDIENTOS].[Funcionalidad](
  Funcionalidad_Id INT PRIMARY KEY IDENTITY(1,1),
  Funcionalidad_Descripcion VARCHAR(255)
)
GO

-- 5 Creamos la tabla de roles por funcionalidad, cada rol puede tener muchas funcionalidades y una funcionalidad puede estar presente en varios roles.
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rol_X_Funcionalidad') DROP TABLE [GEDIENTOS].[Rol_X_Funcionalidad]
CREATE TABLE [GEDIENTOS].[Rol_X_Funcionalidad](
  Funcionalidad_Id INT ,
  Rol_Id INT ,
  Activo BIT NOT NULL
)
GO

-- 6 Tabla Clientes
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Cliente') DROP TABLE [GEDIENTOS].[Cliente]
CREATE TABLE [GEDIENTOS].[Cliente](
  Cliente_Id INT PRIMARY KEY IDENTITY(1,1),
  Cliente_Usuario_Id INT ,
  Cliente_Dni NUMERIC (18,0) UNIQUE,
  Cliente_Apellido VARCHAR (255) NOT NULL,
  Cliente_Nombre VARCHAR (255) NOT NULL,
  Cliente_Fecha_Nacimiento DATETIME,
  Cliente_Mail VARCHAR (255),
  Cliente_Domicilio_Calle VARCHAR (255),
  Cliente_Nro_Calle NUMERIC(18,0),
  Cliente_Nro_Piso NUMERIC(18,0),
  Cliente_Dpto VARCHAR (255),
  Cliente_Codigo_Postal VARCHAR (255),
  Cliente_Tipo_DNI VARCHAR(4),
  Cliente_CUIL VARCHAR (255),
  Cliente_Telefono VARCHAR (50),
  Cliente_Localidad VARCHAR (255),
  Cliente_Fecha_Creacion DATETIME DEFAULT CURRENT_TIMESTAMP
)
GO

-- 7 Tabla Tajetas de Credito
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Tarjeta_Credito') DROP TABLE [GEDIENTOS].[Tarjeta_Credito]
CREATE TABLE [GEDIENTOS].[Tarjeta_Credito](
  Tarjeta_Credito_Cliente_Id INT ,
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
  Empresa_Fecha_Creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
  Empresa_Mail VARCHAR (50),
  Empresa_Direccion VARCHAR (50),
  Empresa_Nro_Calle NUMERIC(18,0),
  Empresa_Nro_Piso NUMERIC(18,0),
  Empresa_Dpto VARCHAR (50),
  Empresa_Codigo_Postal VARCHAR (255),
  Empresa_Localidad VARCHAR (50),
  Empresa_Ciudad VARCHAR (255),
  Empresa_Telefono VARCHAR(50) ,
  Empresa_Grado_Publicacion_Id INT DEFAULT 1
)
GO 

-- 9 Tabla Rubro
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rubro') DROP TABLE [GEDIENTOS].[Rubro]
CREATE TABLE [GEDIENTOS].[Rubro](
  Rubro_Id INT PRIMARY KEY IDENTITY(1,1),
  Rubro_Descripcion VARCHAR (255)
)
GO

-- 10 Tabla Precio por Grado
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Grado_Publicacion') DROP TABLE [GEDIENTOS].Grado_Publicacion
CREATE TABLE [GEDIENTOS].[Grado_Publicacion](
  Grado_Publicacion_Id INT PRIMARY KEY IDENTITY(1,1),
  Grado_Publicacion_Descripcion VARCHAR (255),
  Grado_Publicacion_Porcentaje NUMERIC(18)
)
GO

-- 11 Tabla Estados de Publicaciones
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Estado_Publicacion') DROP TABLE [GEDIENTOS].[Estado_Publicacion]
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
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Espectaculo') DROP TABLE [GEDIENTOS].[Espectaculo]
CREATE TABLE [GEDIENTOS].[Espectaculo](
  Espectaculo_Id INT PRIMARY KEY IDENTITY(1,1) ,
  Espectaculo_Empresa_Id INT,
  Espectaculo_Codigo NUMERIC (18) ,
  Espectaculo_Descripcion VARCHAR (255) ,
  Espectaculo_Fecha_Espectaculo DATETIME ,
  Espectaculo_Fecha_Vencimiento DATETIME ,
  Espectaculo_Rubro_Id INT ,
  Espectaculo_Estado_Publicacion_Id INT ,
  Espectaculo_Fecha_Publicacion DATE DEFAULT CURRENT_TIMESTAMP,
  Espectaculo_Direccion VARCHAR (255),
  Espectaculo_Grado_Publicacion_Id INT,
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
  Compra_Forma_De_Pago_Id Int ,
  Compra_Fecha_Compra DATE ,
  Compra_Cantidad NUMERIC (18,0)
)
GO 

-- 15 Tabla Factura
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Factura') DROP TABLE [GEDIENTOS].[Factura]
CREATE TABLE [GEDIENTOS].[Factura](
  Factura_Id INT PRIMARY KEY IDENTITY(1,1) ,
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
  Item_Factura_Descripcion VARCHAR (60) ,
)
GO

-- 17 Tabla Forma de pago
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Forma_De_Pago') DROP TABLE [GEDIENTOS].[Forma_De_Pago]
CREATE TABLE [GEDIENTOS].[Forma_De_Pago](
  Forma_De_Pago_Id INT PRIMARY KEY IDENTITY(1,1),
  Forma_De_Pago_Descripcion VARCHAR (255) ,
)
GO

-- 18 Tabla Tipo_De_Ubicacion
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Tipo_De_Ubicacion') DROP TABLE [GEDIENTOS].[Tipo_De_Ubicacion]
CREATE TABLE [GEDIENTOS].[Tipo_De_Ubicacion](
  Tipo_De_Ubicacion_Id INT PRIMARY KEY IDENTITY(1,1),
  Tipo_De_Ubicacion_Codigo NUMERIC (18,0) ,
  Tipo_De_Ubicacion_Descripcion VARCHAR (255) 
)
GO

/*******************************************
*	Comienzo de la migracion
*******************************************/

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

INSERT INTO GEDIENTOS.Compra (Compra_Cliente_Id, Compra_Factura_Id, Compra_Espectaculo_Id, Compra_Ubicacion_Id, Compra_Fecha_Compra, Compra_Cantidad, Compra_Forma_De_Pago_Id)
SELECT DISTINCT Cli.Cliente_Id, Fac.Factura_Id, Esp.Espectaculo_Id, Ubi.Ubicacion_Id, Maestra.Compra_Fecha, Maestra.Compra_Cantidad, 1
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

/*******************************************
*	Creacion de SP
*******************************************/

-- SP Get Usuario
CREATE PROCEDURE GEDIENTOS.SP_Get_Usuario
  @usuario VARCHAR(255),
  @password VARCHAR(255)
AS
  BEGIN TRY
    DECLARE @ID_Usuario INT
	SELECT @ID_Usuario = Usuario_Id FROM GEDIENTOS.Usuario WHERE Usuario_Username = @usuario AND Usuario_Password = @password
    SELECT @ID_Usuario
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

CREATE PROCEDURE GEDIENTOS.SP_Update_Funionalidad_Por_Rol
  @rol_nombre VARCHAR(255),
  @funcionalidad_nombre VARCHAR(255),
  @habilitado bit
AS
  BEGIN TRY
    DECLARE @ID_Rol INT
    DECLARE @ID_Funcionalidad INT
    DECLARE @ID_Rol_Aux INT
    DECLARE @ID_Funcionalidad_Aux INT

	SELECT @ID_Rol = Rol_Id FROM GEDIENTOS.Rol WHERE Rol_Nombre = @rol_nombre
	SELECT @ID_Funcionalidad = Funcionalidad_Id FROM GEDIENTOS.Funcionalidad WHERE Funcionalidad_Descripcion = @funcionalidad_nombre

	SELECT @ID_Rol_Aux = Rol_Id, @ID_Funcionalidad_Aux = Funcionalidad_Id FROM GEDIENTOS.Rol_X_Funcionalidad WHERE Rol_Id = @ID_Rol AND Funcionalidad_Id = @ID_Funcionalidad

    IF @ID_Rol_Aux IS NOT NULL AND @ID_Funcionalidad_Aux IS NOT NULL
	  UPDATE GEDIENTOS.Rol_X_Funcionalidad SET Activo = @habilitado WHERE Rol_Id = @ID_Rol AND Funcionalidad_Id = @ID_Funcionalidad
	ELSE
	  INSERT INTO GEDIENTOS.Rol_X_Funcionalidad(Funcionalidad_Id, Rol_Id, Activo) VALUES (@ID_Funcionalidad, @ID_Rol, @habilitado)
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

-- SP Get Usuario Rol
CREATE PROCEDURE GEDIENTOS.SP_Get_Usuario_Rol
  @idUsuario INT
AS
  BEGIN TRY
	SELECT Rol.Rol_Nombre, AR.Asignacion_Rol_Id
	FROM GEDIENTOS.Asignacion_Rol AR
	JOIN GEDIENTOS.Rol Rol
		ON Rol.Rol_Id = AR.Asignacion_Rol_Id
	WHERE AR.Asignacion_Rol_Usuario_Id = @idUsuario
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

-- SP Get Funcionalidades
CREATE PROCEDURE GEDIENTOS.SP_Get_Funcionalidades
AS
  BEGIN TRY
	SELECT Funcionalidad_Descripcion AS Funcionalidades FROM GEDIENTOS.Funcionalidad ORDER BY Funcionalidades
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

-- SP Get Roles
CREATE PROCEDURE GEDIENTOS.SP_Get_Roles
AS
  BEGIN TRY
	SELECT Rol_Nombre AS Rol, Rol_Activo AS Habilitado FROM GEDIENTOS.Rol
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

-- SP Crear Rol
CREATE PROCEDURE GEDIENTOS.SP_Create_Rol
  @nombre_rol VARCHAR(255),
  @habilitado BIT
AS
  BEGIN TRY
    DECLARE @nombre VARCHAR(255)
    DECLARE @mensaje VARCHAR(255) SET @mensaje = 'El rol ya existe'
	SELECT @nombre = Rol_Nombre FROM GEDIENTOS.Rol Where Rol_Nombre = @nombre_rol
    IF @nombre IS NULL
        BEGIN
		  INSERT INTO GEDIENTOS.Rol(Rol_Nombre, Rol_Activo) VALUES (@nombre_rol, @habilitado)

		  INSERT INTO GEDIENTOS.Rol_X_Funcionalidad(Funcionalidad_Id, Rol_Id, Activo)
		  SELECT Funcionalidad_Id, Rol_Id, 0 FROM GEDIENTOS.Rol, GEDIENTOS.Funcionalidad WHERE Rol_Nombre = @nombre_rol
        END
    ELSE
      SELECT @mensaje
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

-- SP Get Funcionalidad por Rol
CREATE PROCEDURE GEDIENTOS.SP_Get_Funcionalidades_Rol
  @nombre_rol VARCHAR(255)
AS
  BEGIN TRY
	SELECT Fun.Funcionalidad_Descripcion AS Funcionalidad, rxf.Activo AS Habilitado
	FROM GEDIENTOS.Rol_X_Funcionalidad rxf
	JOIN GEDIENTOS.Funcionalidad Fun
		ON Fun.Funcionalidad_Id = rxf.Funcionalidad_Id
	JOIN GEDIENTOS.Rol Rol
		ON rxf.Rol_Id = Rol.Rol_Id
	WHERE Rol.Rol_Nombre = @nombre_rol
	ORDER BY Funcionalidad
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

-- SP Update Rol
CREATE PROCEDURE GEDIENTOS.SP_Update_Rol
  @nombre_rol VARCHAR(255),
  @habilitado BIT
AS
  BEGIN TRY
    DECLARE @nombre VARCHAR(255)
    DECLARE @mensaje VARCHAR(255)
    DECLARE @ID_Rol NUMERIC(18)

	SELECT @nombre = Rol_Nombre, @ID_Rol = Rol_Id FROM GEDIENTOS.Rol WHERE Rol_Nombre = @nombre_rol

    IF @nombre IS NULL
      BEGIN
		INSERT INTO GEDIENTOS.Rol (Rol_Nombre, Rol_Activo) VALUES (@nombre_rol, @habilitado)
		INSERT INTO GEDIENTOS.Rol_X_Funcionalidad(Funcionalidad_Id, Rol_Id, Activo)
		SELECT Funcionalidad_Id, Rol_Id, 0 FROM GEDIENTOS.Rol, GEDIENTOS.Funcionalidad WHERE Rol_Nombre = @nombre_rol
      END
    ELSE
	  UPDATE GEDIENTOS.Rol SET Rol_Activo = @habilitado WHERE Rol_Nombre = @nombre
    IF @habilitado = 0
	  UPDATE GEDIENTOS.Asignacion_Rol SET Asignacion_Rol_Activo = 0 WHERE Asignacion_Rol_Id = @ID_Rol
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
 GO

-- SP Create Cliente
CREATE PROCEDURE GEDIENTOS.SP_Create_Cliente
	@Username VARCHAR(255),
	@Password VARCHAR(255),
	@Nombre VARCHAR(255),
	@Apellido VARCHAR(255),
	@Tipo_Dni VARCHAR(4),
	@Nro_Doc NUMERIC (18),
	@Cuil VARCHAR(255),
	@Mail VARCHAR(255),
	@Telefono VARCHAR(50) = NULL ,
	@Dominicio_Calle VARCHAR(255),
	@Nro_Calle NUMERIC (10) = NULL,
	@Nro_Piso NUMERIC (3) = NULL ,
	@Dpto VARCHAR(255) = NULL ,
	@Codigo_Postal VARCHAR(255),
	@Localidad VARCHAR(50),
	@Nro_Tarjeta NUMERIC(30),
	@Fecha_Nac DATETIME
AS
	BEGIN TRANSACTION
		DECLARE @Usuario_id INT
		DECLARE @Rol_id INT
		DECLARE @Cliente_id INT

		SELECT @Rol_id = Rol_Id FROM GEDIENTOS.Rol WHERE Rol_Nombre = 'Cliente'

		INSERT GEDIENTOS.Usuario(Usuario_Username, Usuario_Password) VALUES(@Username, @Password);
		SELECT @Usuario_id = SCOPE_IDENTITY();

		INSERT GEDIENTOS.Cliente(
			Cliente_Usuario_Id, Cliente_Apellido, Cliente_Nombre, Cliente_Fecha_Nacimiento, Cliente_Mail, Cliente_Domicilio_Calle, Cliente_Nro_Calle, Cliente_Nro_Piso,
			Cliente_Dpto, Cliente_Codigo_Postal, Cliente_Tipo_DNI, Cliente_Dni, Cliente_CUIL, Cliente_Telefono, Cliente_Localidad)
		VALUES (
			@Usuario_id, @Apellido, @Nombre, @Fecha_Nac, @Mail, @Dominicio_Calle, @Nro_Calle, @Nro_Piso, @Dpto, @Codigo_Postal, @Tipo_Dni,@Nro_Doc, 
			@Cuil, @Telefono, @Localidad);
		SELECT @Cliente_id = SCOPE_IDENTITY();

		INSERT INTO GEDIENTOS.Asignacion_Rol(Asignacion_Rol_Id, Asignacion_Rol_Usuario_Id) VALUES(@Rol_id, @Usuario_id);

		INSERT INTO GEDIENTOS.Tarjeta_Credito(Tarjeta_Credito_Cliente_Id, Tarjeta_Credito_Nro) VALUES(@Cliente_id, @Nro_Tarjeta);
		
		IF @@ERROR <> 0   
			BEGIN
				SELECT 'ERROR', ERROR_MESSAGE()  
				ROLLBACK
				RETURN
			END  
	COMMIT
GO

-- SP Create Empresa
CREATE PROCEDURE GEDIENTOS.SP_Create_Empresa
  @Username VARCHAR (255) ,
  @Password VARCHAR (255) ,
  @Razon_Social VARCHAR (255) ,
  @Cuit VARCHAR (255) ,
  @Mail VARCHAR (50) ,
  @Direccion VARCHAR (50) ,
  @Nro_Calle NUMERIC(18,0) ,
  @Nro_Piso NUMERIC(18,0) = NULL ,
  @Dpto VARCHAR (50) = NULL ,
  @Codigo_Postal VARCHAR (255) ,
  @Localidad VARCHAR (50) ,
  @Ciudad VARCHAR (255) ,
  @Telefono VARCHAR(50) = NULL
AS
	BEGIN TRANSACTION
		DECLARE @Usuario_id INT
		DECLARE @Rol_id INT

		SELECT @Rol_id = Rol_Id FROM GEDIENTOS.Rol WHERE Rol_Nombre = 'Empresa'

		INSERT GEDIENTOS.Usuario(Usuario_Username, Usuario_Password) VALUES(@Username, @Password);
		SELECT @Usuario_id = SCOPE_IDENTITY();

		INSERT GEDIENTOS.Empresa(
			Empresa_Usuario_Id, Empresa_Razon_Social, Empresa_Cuit, Empresa_Mail, Empresa_Direccion, Empresa_Nro_Calle, Empresa_Nro_Piso, Empresa_Dpto,
			Empresa_Codigo_Postal, Empresa_Localidad, Empresa_Ciudad, Empresa_Telefono)
		VALUES (
			@Usuario_id, @Razon_Social, @Cuit, @Mail, @Direccion, @Nro_Calle, @Nro_Piso, @Dpto, @Codigo_Postal, @Localidad, @Ciudad, @Telefono);

		INSERT INTO GEDIENTOS.Asignacion_Rol(Asignacion_Rol_Id, Asignacion_Rol_Usuario_Id) VALUES(@Rol_id, @Usuario_id);

		IF @@ERROR <> 0   
			BEGIN
				SELECT 'ERROR', ERROR_MESSAGE()  
				ROLLBACK
				RETURN
			END  
	COMMIT
GO

-- SP Get Grados Publicacion
CREATE PROCEDURE GEDIENTOS.SP_Get_Grados_Publicacion
AS
  BEGIN TRY
	SELECT Grado_Publicacion_Id AS ID, Grado_Publicacion_Descripcion AS Nombre FROM GEDIENTOS.Grado_Publicacion
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

-- SP Get Grados Publicacion
CREATE PROCEDURE GEDIENTOS.SP_Update_Grados_Publicacion
	@Grado_Id INT,
	@Usuario_Id INT
AS
  BEGIN TRY
	UPDATE GEDIENTOS.Empresa SET Empresa_Grado_Publicacion_Id = @Grado_Id WHERE Empresa_Usuario_Id = @Usuario_Id
  END TRY
  BEGIN CATCH
    SELECT 'ERROR', ERROR_MESSAGE()
  END CATCH
GO

/*******************************************
*	Comienzo de la carga inicial de datos
*******************************************/

-- Roles
INSERT INTO GEDIENTOS.Rol(Rol_Nombre) VALUES ('Empresa')
INSERT INTO GEDIENTOS.Rol(Rol_Nombre) VALUES ('Administrativo')
INSERT INTO GEDIENTOS.Rol(Rol_Nombre) VALUES ('Cliente')
INSERT INTO GEDIENTOS.Rol(Rol_Nombre) VALUES ('Administrador General')
GO

-- Usuarios
INSERT INTO GEDIENTOS.Usuario(Usuario_Username, Usuario_Password) VALUES ('admin', 'e6-b8-70-50-bf-cb-81-43-fc-b8-db-01-70-a4-dc-9e-d0-0d-90-4d-dd-3e-2a-4a-d1-b1-e8-dc-0f-dc-9b-e7')
GO

-- Funcionalidades
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_ABM_Rol')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_Generar_Rendicion')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_ABM_Usuario')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_ABM_Cliente')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_ABM_Empresa')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_ABM_Rubro')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_ABM_Grado_De_Publicacion')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_Generar_Publicacion')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_Editar_Publicacion')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_Comprar')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_Historial_De_Cliente')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_Canje_De_Puntos')
INSERT INTO GEDIENTOS.Funcionalidad(Funcionalidad_Descripcion) VALUES ('Btn_Listado_Estadistico')
GO

-- Asigno los roles a los usuarios
INSERT INTO GEDIENTOS.Asignacion_Rol(Asignacion_Rol_Id, Asignacion_Rol_Usuario_Id)
SELECT Rol_Id, Usuario_Id FROM GEDIENTOS.Rol, GEDIENTOS.Usuario
WHERE Rol_Nombre = 'Administrador General' AND Usuario_Username = 'admin'  
GO

-- Agrego las funciones por rol
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_ABM_Rol',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_Generar_Rendicion',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_ABM_Usuario',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_ABM_Cliente',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_ABM_Empresa',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_ABM_Rubro',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_ABM_Grado_De_Publicacion',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_Generar_Publicacion',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_Editar_Publicacion',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_Comprar',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_Historial_De_Cliente',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_Canje_De_Puntos',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrador General','Btn_Listado_Estadistico',1

EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Empresa','Btn_Generar_Publicacion',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Empresa','Btn_Editar_Publicacion',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Empresa','Btn_ABM_Grado_De_Publicacion',1

EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrativo','Btn_Generar_Rendicion',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrativo','Btn_ABM_Usuario',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Administrativo','Btn_Listado_Estadistico',1

EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Cliente','Btn_Comprar',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Cliente','Btn_Historial_De_Cliente',1
EXECUTE GEDIENTOS.SP_Update_Funionalidad_Por_Rol 'Cliente','Btn_Canje_De_Puntos',1
GO

-- Agrego los Grados de publicacion
INSERT INTO GEDIENTOS.Grado_Publicacion(Grado_Publicacion_Descripcion, Grado_Publicacion_Porcentaje) VALUES('Alta',20)
INSERT INTO GEDIENTOS.Grado_Publicacion(Grado_Publicacion_Descripcion, Grado_Publicacion_Porcentaje) VALUES('Media',10)
INSERT INTO GEDIENTOS.Grado_Publicacion(Grado_Publicacion_Descripcion, Grado_Publicacion_Porcentaje) VALUES('Baja',5)
GO

/*******************************************
*	Creo las FK
*******************************************/

ALTER TABLE GEDIENTOS.Asignacion_Rol ADD CONSTRAINT FK_Usuario_Asignacion_Rol FOREIGN KEY (Asignacion_Rol_Usuario_Id) REFERENCES GEDIENTOS.Usuario(Usuario_Id);
ALTER TABLE GEDIENTOS.Asignacion_Rol ADD CONSTRAINT FK_Rol_Asignacion_Rol FOREIGN KEY (Asignacion_Rol_Id) REFERENCES GEDIENTOS.Rol(Rol_Id);
ALTER TABLE GEDIENTOS.Rol_X_Funcionalidad ADD CONSTRAINT FK_Funcionalidad_Rol_X_Funcionalidad FOREIGN KEY (Funcionalidad_Id) REFERENCES GEDIENTOS.Funcionalidad(Funcionalidad_Id);
ALTER TABLE GEDIENTOS.Rol_X_Funcionalidad ADD CONSTRAINT FK_Rol_Rol_X_Funcionalidad FOREIGN KEY (Rol_Id) REFERENCES GEDIENTOS.Rol(Rol_Id);
ALTER TABLE GEDIENTOS.Tarjeta_Credito ADD CONSTRAINT FK_Cliente_Tarjeta_Credito FOREIGN KEY (Tarjeta_Credito_Cliente_Id) REFERENCES GEDIENTOS.Cliente(Cliente_Id);
ALTER TABLE GEDIENTOS.Cliente ADD CONSTRAINT FK_Usuario_Cliente FOREIGN KEY (Cliente_Usuario_Id) REFERENCES GEDIENTOS.Usuario(Usuario_Id);
ALTER TABLE GEDIENTOS.Empresa ADD CONSTRAINT FK_Usuario_Empresa FOREIGN KEY (Empresa_Usuario_Id) REFERENCES GEDIENTOS.Usuario(Usuario_Id);
ALTER TABLE GEDIENTOS.Compra ADD CONSTRAINT FK_Forma_De_Pago_Compra FOREIGN KEY (Compra_Forma_De_Pago_Id) REFERENCES GEDIENTOS.Forma_De_Pago(Forma_De_Pago_Id);
ALTER TABLE GEDIENTOS.Compra ADD CONSTRAINT FK_Factura_Compra FOREIGN KEY (Compra_Factura_Id) REFERENCES GEDIENTOS.Factura(Factura_Id);
ALTER TABLE GEDIENTOS.Item_Factura ADD CONSTRAINT FK_Factura_Item_Factura FOREIGN KEY (Factura_Id) REFERENCES GEDIENTOS.Factura(Factura_Id);
ALTER TABLE GEDIENTOS.Compra ADD CONSTRAINT FK_Ubicacion_Compra FOREIGN KEY (Compra_Ubicacion_Id) REFERENCES GEDIENTOS.Ubicacion(Ubicacion_Id);
ALTER TABLE GEDIENTOS.Item_Factura ADD CONSTRAINT FK_Compra_Item_Factura FOREIGN KEY (Item_Factura_Compra_Id) REFERENCES GEDIENTOS.Compra(Compra_Id);
ALTER TABLE GEDIENTOS.Ubicacion ADD CONSTRAINT FK_Tipo_De_Ubicacion FOREIGN KEY (Ubicacion_Tipo_Descripcion_Id) REFERENCES GEDIENTOS.Tipo_De_Ubicacion(Tipo_De_Ubicacion_Id);
ALTER TABLE GEDIENTOS.Ubicacion ADD CONSTRAINT FK_Espectaculo_Ubicacion FOREIGN KEY (Ubicacion_Espectaculo_Id) REFERENCES GEDIENTOS.Espectaculo(Espectaculo_Id);
ALTER TABLE GEDIENTOS.Espectaculo ADD CONSTRAINT FK_Estado_Publicacion_Espectaculo FOREIGN KEY (Espectaculo_Estado_Publicacion_Id) REFERENCES GEDIENTOS.Estado_Publicacion(Estado_Publicacion_Id);
ALTER TABLE GEDIENTOS.Espectaculo ADD CONSTRAINT FK_Grado_Publicacion_Espectaculo FOREIGN KEY (Espectaculo_Grado_Publicacion_Id) REFERENCES GEDIENTOS.Grado_Publicacion(Grado_Publicacion_Id);
ALTER TABLE GEDIENTOS.Empresa ADD CONSTRAINT FK_Grado_Publicacion_Empresa FOREIGN KEY (Empresa_Grado_Publicacion_Id) REFERENCES GEDIENTOS.Grado_Publicacion(Grado_Publicacion_Id);
ALTER TABLE GEDIENTOS.Espectaculo ADD CONSTRAINT FK_Rubro_Espectaculo FOREIGN KEY (Espectaculo_Rubro_Id) REFERENCES GEDIENTOS.Rubro(Rubro_Id);
ALTER TABLE GEDIENTOS.Espectaculo ADD CONSTRAINT FK_Empresa_Espectaculo FOREIGN KEY (Espectaculo_Empresa_Id) REFERENCES GEDIENTOS.Empresa(Empresa_Id);
GO