USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspUpdateGameWithId]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspUpdateGameWithId]
    @Id INT,
    @Name NVARCHAR(255),
    @ReleaseDate DATE
AS
BEGIN
    UPDATE Game
    SET Name = @Name,
        ReleaseDate = @ReleaseDate
    WHERE Id = @Id;
END
GO
