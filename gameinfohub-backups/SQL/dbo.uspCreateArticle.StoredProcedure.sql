USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspCreateArticle]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Article

CREATE   PROCEDURE [dbo].[uspCreateArticle]
    @Title NVARCHAR(255),
    @Link NVARCHAR(1000),
    @Description NVARCHAR(MAX),
    @PubDate DATETIME,
    @PicturePath NVARCHAR(500),
    @ArticleId INT OUTPUT
AS
BEGIN
    INSERT INTO Article (Title, Link, Description, PublishedDateTime, PicturePath)
    VALUES (@Title, @Link, @Description, @PubDate, @PicturePath);

    SET @ArticleId = SCOPE_IDENTITY();
END
GO
