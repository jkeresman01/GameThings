USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspCreateGenre]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- GENRE -- 

CREATE PROCEDURE [dbo].[uspCreateGenre]
    @Name NVARCHAR(100),
    @GenreId INT OUTPUT
AS
BEGIN
    INSERT INTO Genre (Name)
    VALUES (@Name);

    SET @GenreId = SCOPE_IDENTITY();
END
GO
