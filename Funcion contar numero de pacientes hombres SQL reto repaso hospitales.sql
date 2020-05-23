USE [BikeStores]
GO
/****** Object:  UserDefinedFunction [Hospital].[FContarNumeroPacientesHombres]    Script Date: 23/05/2020 5:42:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================

ALTER FUNCTION [Hospital].[FContarNumeroPacientesHombres]
(
	-- Add the parameters for the function here
	 
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultGeneroH int

	-- Add the T-SQL statements to compute the return value here
	SELECT @ResultGeneroH = COUNT(Sexo) 
	FROM Hospital.Pacientes
	WHERE Sexo = 'H'

	-- Return the result of the function
	RETURN @ResultGeneroH


END
