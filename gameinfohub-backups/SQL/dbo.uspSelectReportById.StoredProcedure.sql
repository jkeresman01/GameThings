USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspSelectReportById]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspSelectReportById]
    @ReportId INT
AS
BEGIN
    SELECT Id, Title, Content
    FROM Report
    WHERE Id = @ReportId;
END
GO
