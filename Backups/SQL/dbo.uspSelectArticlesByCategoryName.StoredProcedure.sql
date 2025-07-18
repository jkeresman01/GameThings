USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspSelectArticlesByCategoryName]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspSelectArticlesByCategoryName]
    @CategoryName NVARCHAR(255)
AS
BEGIN
    SELECT a.Id, a.Title, a.Link, a.Description, a.PublishedDateTime, a.PicturePath
    FROM Article a
    JOIN ArticleCategory ac ON a.Id = ac.ArticleId
    JOIN Category c ON ac.CategoryId = c.Id
    WHERE c.Name = @CategoryName;
END
GO
