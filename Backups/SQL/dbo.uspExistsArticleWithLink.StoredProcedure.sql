USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspExistsArticleWithLink]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspExistsArticleWithLink]
    @Link NVARCHAR(1000),
    @Exists BIT OUTPUT
AS
BEGIN
    SET @Exists = CASE WHEN EXISTS (
        SELECT 1 FROM Article WHERE Link = @Link
    ) THEN 1 ELSE 0 END;
END
GO
