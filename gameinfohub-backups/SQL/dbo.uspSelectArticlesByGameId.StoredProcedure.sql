USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspSelectArticlesByGameId]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspSelectArticlesByGameId]
    @GameId INT
AS
BEGIN
    SELECT a.Id, a.Title, a.Link, a.Description, a.PublishedDateTime, a.PicturePath
    FROM Article a
    JOIN ArticleGame ag ON a.Id = ag.ArticleId
    WHERE ag.GameId = @GameId;
END
GO
