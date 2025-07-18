USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspUpdateArticleWithId]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspUpdateArticleWithId]
    @ArticleId INT,
    @Title NVARCHAR(255),
    @Link NVARCHAR(1000),
    @Description NVARCHAR(MAX),
    @PubDate DATETIME,
    @PicturePath NVARCHAR(500)
AS
BEGIN
    UPDATE Article
    SET Title = @Title,
        Link = @Link,
        Description = @Description,
        PublishedDateTime = @PubDate,
        PicturePath = @PicturePath
    WHERE Id = @ArticleId;
END
GO
