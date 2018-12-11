USE [GD2C2018]

IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Usuarios') DROP TABLE [GEDIENTOS].[Usuarios]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Asignacion_Rol') DROP TABLE [GEDIENTOS].[Asignacion_Rol]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rol') DROP TABLE [GEDIENTOS].[Rol]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Funcionalidades') DROP TABLE [GEDIENTOS].[Funcionalidades]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rol_X_Funcionalidad') DROP TABLE [GEDIENTOS].[Rol_X_Funcionalidad]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Clientes') DROP TABLE [GEDIENTOS].[Clientes]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Empresa') DROP TABLE [GEDIENTOS].[Empresa]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Espectaculos') DROP TABLE [GEDIENTOS].[Espectaculos]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Estados_Publicaciones') DROP TABLE [GEDIENTOS].[Estados_Publicaciones]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Precio_Grado') DROP TABLE [GEDIENTOS].[Precio_Grado]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rubro') DROP TABLE [GEDIENTOS].[Rubro]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Tarjetas_Credito') DROP TABLE [GEDIENTOS].[Tarjetas_Credito]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Ubicaciones') DROP TABLE [GEDIENTOS].[Ubicaciones]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Compra') DROP TABLE [GEDIENTOS].[Compra]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Factura') DROP TABLE [GEDIENTOS].[Factura]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Forma_De_Pago') DROP TABLE [GEDIENTOS].[Forma_De_Pago]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Item_Factura') DROP TABLE [GEDIENTOS].[Item_Factura]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Tipo_De_Ubicacion') DROP TABLE [GEDIENTOS].[Tipo_De_Ubicacion]

IF EXISTS (SELECT * FROM sys.schemas WHERE name = 'GEDIENTOS') DROP SCHEMA [GEDIENTOS]