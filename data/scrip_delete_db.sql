USE [GD2C2018]

IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Get_Usuario') DROP PROCEDURE GEDIENTOS.SP_Get_Usuario;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Update_Funionalidad_Por_Rol') DROP PROCEDURE GEDIENTOS.SP_Update_Funionalidad_Por_Rol;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Get_Usuario_Rol') DROP PROCEDURE GEDIENTOS.SP_Get_Usuario_Rol;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Get_Funcionalidades') DROP PROCEDURE GEDIENTOS.SP_Get_Funcionalidades;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Get_Roles') DROP PROCEDURE GEDIENTOS.SP_Get_Roles;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Create_Rol') DROP PROCEDURE GEDIENTOS.SP_Create_Rol;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Get_Funcionalidades_Rol') DROP PROCEDURE GEDIENTOS.SP_Get_Funcionalidades_Rol;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Update_Rol') DROP PROCEDURE GEDIENTOS.SP_Update_Rol;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Create_Cliente') DROP PROCEDURE GEDIENTOS.SP_Create_Cliente;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Create_Empresa') DROP PROCEDURE GEDIENTOS.SP_Create_Empresa;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Get_Grados_Publicacion') DROP PROCEDURE GEDIENTOS.SP_Get_Grados_Publicacion;
IF EXISTS (SELECT * FROM sys.objects where name = 'SP_Update_Grados_Publicacion') DROP PROCEDURE GEDIENTOS.SP_Update_Grados_Publicacion;

IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Usuario_Asignacion_Rol') ALTER TABLE GEDIENTOS.Asignacion_Rol DROP CONSTRAINT FK_Usuario_Asignacion_Rol;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Rol_Asignacion_Rol') ALTER TABLE GEDIENTOS.Asignacion_Rol DROP CONSTRAINT FK_Rol_Asignacion_Rol;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Funcionalidad_Rol_X_Funcionalidad') ALTER TABLE GEDIENTOS.Rol_X_Funcionalidad DROP CONSTRAINT FK_Funcionalidad_Rol_X_Funcionalidad;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Rol_Rol_X_Funcionalidad') ALTER TABLE GEDIENTOS.Rol_X_Funcionalidad DROP CONSTRAINT FK_Rol_Rol_X_Funcionalidad;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Cliente_Tarjeta_Credito') ALTER TABLE GEDIENTOS.Tarjeta_Credito DROP CONSTRAINT FK_Cliente_Tarjeta_Credito;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Usuario_Cliente') ALTER TABLE GEDIENTOS.Cliente DROP CONSTRAINT FK_Usuario_Cliente;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Usuario_Empresa') ALTER TABLE GEDIENTOS.Empresa DROP CONSTRAINT FK_Usuario_Empresa;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Forma_De_Pago_Compra') ALTER TABLE GEDIENTOS.Compra DROP CONSTRAINT FK_Forma_De_Pago_Compra;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Factura_Compra') ALTER TABLE GEDIENTOS.Compra DROP CONSTRAINT FK_Factura_Compra;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Factura_Item_Factura') ALTER TABLE GEDIENTOS.Item_Factura DROP CONSTRAINT FK_Factura_Item_Factura;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Ubicacion_Compra') ALTER TABLE GEDIENTOS.Compra DROP CONSTRAINT FK_Ubicacion_Compra;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Compra_Item_Factura') ALTER TABLE GEDIENTOS.Item_Factura DROP CONSTRAINT FK_Compra_Item_Factura;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Tipo_De_Ubicacion') ALTER TABLE GEDIENTOS.Ubicacion DROP CONSTRAINT FK_Tipo_De_Ubicacion;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Espectaculo_Ubicacion') ALTER TABLE GEDIENTOS.Ubicacion DROP CONSTRAINT FK_Espectaculo_Ubicacion;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Estado_Publicacion_Espectaculo') ALTER TABLE GEDIENTOS.Espectaculo DROP CONSTRAINT FK_Estado_Publicacion_Espectaculo;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Grado_Publicacion_Espectaculo') ALTER TABLE GEDIENTOS.Espectaculo DROP CONSTRAINT FK_Grado_Publicacion_Espectaculo;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Grado_Publicacion_Empresa') ALTER TABLE GEDIENTOS.Empresa DROP CONSTRAINT FK_Grado_Publicacion_Empresa;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Rubro_Espectaculo') ALTER TABLE GEDIENTOS.Espectaculo DROP CONSTRAINT FK_Rubro_Espectaculo;
IF EXISTS (SELECT * FROM sys.objects where name = 'FK_Empresa_Espectaculo') ALTER TABLE GEDIENTOS.Espectaculo DROP CONSTRAINT FK_Empresa_Espectaculo;

IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rol') DROP TABLE [GEDIENTOS].[Rol]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Usuario') DROP TABLE [GEDIENTOS].[Usuario]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Asignacion_Rol') DROP TABLE [GEDIENTOS].[Asignacion_Rol]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Funcionalidad') DROP TABLE [GEDIENTOS].[Funcionalidad]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rol_X_Funcionalidad') DROP TABLE [GEDIENTOS].[Rol_X_Funcionalidad]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Cliente') DROP TABLE [GEDIENTOS].[Cliente]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Empresa') DROP TABLE [GEDIENTOS].[Empresa]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Espectaculo') DROP TABLE [GEDIENTOS].[Espectaculo]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Estado_Publicacion') DROP TABLE [GEDIENTOS].[Estado_Publicacion]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Grado_Publicacion') DROP TABLE [GEDIENTOS].[Grado_Publicacion]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Rubro') DROP TABLE [GEDIENTOS].[Rubro]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Tarjeta_Credito') DROP TABLE [GEDIENTOS].[Tarjeta_Credito]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Ubicacion') DROP TABLE [GEDIENTOS].[Ubicacion]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Compra') DROP TABLE [GEDIENTOS].[Compra]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Factura') DROP TABLE [GEDIENTOS].[Factura]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Forma_De_Pago') DROP TABLE [GEDIENTOS].[Forma_De_Pago]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Item_Factura') DROP TABLE [GEDIENTOS].[Item_Factura]
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Tipo_De_Ubicacion') DROP TABLE [GEDIENTOS].[Tipo_De_Ubicacion]

IF EXISTS (SELECT * FROM sys.schemas WHERE name = 'GEDIENTOS') DROP SCHEMA [GEDIENTOS]