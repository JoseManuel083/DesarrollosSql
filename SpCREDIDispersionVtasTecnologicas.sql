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
-- EJEMPLO	      : EXEC SpCREDIDispersionVtasTecnologicas
-- EJEMPLO        : 
CREATE PROCEDURE [dbo].[SpCREDIDispersionVtasTecnologicas] 
@movimiento varchar(10),
@Estatus varchar(10),
@CanalDeVenta int,
@Servicio varchar(15),
@FechaDesde date,
@FechaHasta date,
@ImporteDesde money,
@ImporteHast Money,
@Cliente varchar(12),
@BeneficiarioFinal varchar(12),
@ReferenciaCtaBanco varchar(50),
@ConceptoCtaBanco varchar(50)
AS
BEGIN
	SELECT TOP 3 c.cliente,c.Nombre,v.EnviarA,*
	FROM Venta v WITH(NOLOCK)
	JOIN VentaD vd WITH(NOLOCK) ON v.ID = vd.ID
	JOIN cte c ON v.Cliente = c.Cliente
	WHERE MOV = 'CREDILANA' 

	SELECT * FROM cte WITH(NOLOCK) Where Cliente IN ('C01838546','C01550329','C01845801')
END 

--select distinct EnviarA from Venta where mov = 'credilana'
--select DISTINCT* from ventasCanalMavi where categoria in ('ASOCIADOS','CREDITO MENUDEO','CREDILANA EMPRESARIO','DINERALIA') order by id
--select * from ventasCanalMavi where CADENA in ('ANALISIS DE CREDITO','CREDILANA','SOLICITUD CHEQUE')


