USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspDeleteGameWithId]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspDeleteGameWithId]
    @Id INT
AS
BEGIN
    DELETE FROM Game WHERE Id = @Id;
END
GO
