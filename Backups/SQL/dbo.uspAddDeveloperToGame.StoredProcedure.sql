USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspAddDeveloperToGame]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[uspAddDeveloperToGame]
    @GameId INT,
    @DeveloperName NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @DeveloperId INT;

    SELECT @DeveloperId = Id FROM Developer WHERE Name = @DeveloperName;

    IF @DeveloperId IS NULL
    BEGIN
        INSERT INTO Developer (Name) VALUES (@DeveloperName);
        SET @DeveloperId = SCOPE_IDENTITY();
    END

    IF NOT EXISTS (SELECT 1 FROM GameDeveloper WHERE GameId = @GameId AND DeveloperId = @DeveloperId)
    BEGIN
        INSERT INTO GameDeveloper (GameId, DeveloperId) VALUES (@GameId, @DeveloperId);
    END
END
GO
