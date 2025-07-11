USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspAddPlatformToGame]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[uspAddPlatformToGame]
    @GameId INT,
    @PlatformName NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PlatformId INT;

    SELECT @PlatformId = Id FROM Platform WHERE Name = @PlatformName;

    IF @PlatformId IS NULL
    BEGIN
        INSERT INTO Platform (Name) VALUES (@PlatformName);
        SET @PlatformId = SCOPE_IDENTITY();
    END

    IF NOT EXISTS (SELECT 1 FROM GamePlatform WHERE GameId = @GameId AND PlatformId = @PlatformId)
    BEGIN
        INSERT INTO GamePlatform (GameId, PlatformId) VALUES (@GameId, @PlatformId);
    END
END
GO
