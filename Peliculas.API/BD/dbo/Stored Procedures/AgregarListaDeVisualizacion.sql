﻿CREATE PROCEDURE AgregarListaDeVisualizacion
	-- Add the parameters for the stored procedure here efallas
	@Id UNIQUEIDENTIFIER,
	@IdPelicula AS int,
	@Prioridad AS varchar(MAX),
	@username NVARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	BEGIN TRANSACTION;
		INSERT INTO [dbo].ListaDeVisualizacion
					(Id,IdPelicula,
					Prioridad,username)
		VALUES
			(@Id,@IdPelicula 
			,@Prioridad,@username)
		SELECT @Id
		COMMIT TRANSACTION;
END
