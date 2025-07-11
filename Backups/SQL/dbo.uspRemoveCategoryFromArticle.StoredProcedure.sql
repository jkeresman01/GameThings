USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspRemoveCategoryFromArticle]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspRemoveCategoryFromArticle]
    @ArticleId INT,
    @CategoryId INT
AS
BEGIN
    DELETE FROM ArticleCategory WHERE ArticleId = @ArticleId AND CategoryId = @CategoryId;
END
GO
