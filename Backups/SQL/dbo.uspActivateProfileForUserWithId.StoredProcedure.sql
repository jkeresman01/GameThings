USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspActivateProfileForUserWithId]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspActivateProfileForUserWithId]
    @UserId INT
AS
BEGIN
    UPDATE [User] SET IsActive = 1 WHERE Id = @UserId;
END
GO
