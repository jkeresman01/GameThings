USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspSelectGamesByPlatformId]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[uspSelectGamesByPlatformId]
    @PlatformId INT
AS
BEGIN
    SELECT g.*
    FROM Game g
    INNER JOIN GamePlatform gp ON g.Id = gp.GameId
    WHERE gp.PlatformId = @PlatformId;
END
GO
