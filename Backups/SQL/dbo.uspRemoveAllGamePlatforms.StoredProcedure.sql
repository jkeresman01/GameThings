USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspRemoveAllGamePlatforms]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uspRemoveAllGamePlatforms]
AS
BEGIN
    DELETE FROM GamePlatform
END
GO
