USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspUpdateDeveloperWithId]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uspUpdateDeveloperWithId]
    @DeveloperId INT,
    @Name NVARCHAR(100)
AS
BEGIN
    UPDATE Developer
    SET Name = @Name
    WHERE Id = @DeveloperId;
END
GO
