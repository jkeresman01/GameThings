USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspCreatePlatform]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Platform


CREATE PROCEDURE [dbo].[uspCreatePlatform]
    @Name NVARCHAR(100),
    @PlatformId INT OUTPUT
AS
BEGIN
    INSERT INTO Platform (Name)
    VALUES (@Name);

    SET @PlatformId = SCOPE_IDENTITY();
END
GO
