USE [BikeStores]
GO
/****** Object:  UserDefinedFunction [Hospital].[FContarNumeroPacientesMujeres]    Script Date: 23/05/2020 5:41:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================

ALTER FUNCTION [Hospital].[FContarNumeroPacientesMujeres]
(
	-- Add the parameters for the function here
	 
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultGeneroM int

	-- Add the T-SQL statements to compute the return value here
	SELECT @ResultGeneroM = COUNT(Sexo) 
	FROM Hospital.Pacientes
	WHERE Sexo = 'M'

	-- Return the result of the function
	RETURN @ResultGeneroM


END
