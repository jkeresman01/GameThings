USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspSelectAllReports]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspSelectAllReports]
AS
BEGIN
    SELECT Id, Title, Content
    FROM Report
    ORDER BY CreatedAt DESC;
END
GO
