IF OBJECT_ID('dbo.SpCREDIDispersionVtasTecnologicas') > 0
  DROP PROCEDURE dbo.SpCREDIDispersionVtasTecnologicas
GO
SET DATEFIRST 7
SET ANSI_NULLS ON
SET ANSI_WARNINGS ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT - 1
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO
---------------------------------------------------------------------------------------------------------------------------------------------
-- NOMBRE         : SpCREDIDispersionVtasTecnologicas
-- AUTOR          : JOSE MANUEL GOMEZ ALAVEZ
-- FECHA CREACION : 30/10/2019
-- DESARROLLO     : 
-- MODULO         : CREDITO
-- DESCRIPCION	  : Reporte Dispersion de Ventas Tecnologicas
-- DESARROLLO     : 
-- EJEMPLO	      : 
-- EJEMPLO        : 
--				  : 
CREATE PROCEDURE [dbo].[SpCREDIDispersionVtasTecnologicas] @cuentaDima varchar(10),
@periodoPago int,
@ejercicioFiscal int
AS
BEGIN
END 
SELECT modulo from modulo 