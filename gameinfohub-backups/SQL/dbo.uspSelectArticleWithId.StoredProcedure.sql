USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspSelectArticleWithId]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspSelectArticleWithId]
    @ArticleId INT
AS
BEGIN
    SELECT Id, Title, Link, Description, PublishedDateTime, PicturePath
    FROM Article
    WHERE Id = @ArticleId;
END
GO
