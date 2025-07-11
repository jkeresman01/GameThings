USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspSelectAllUsers]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[uspSelectAllUsers]
AS
BEGIN
    SELECT 
        u.Id,
        u.Username,
        u.PasswordHash,
        u.FirstName,
        u.LastName,
        u.Email,
        r.Name AS RoleName,
        g.Name AS GenderName,
        u.IsActive,
        u.PicturePath,
        u.CreatedAt,
        u.UpdatedAt
    FROM [User] u
    JOIN Role r ON u.RoleId = r.Id
    JOIN Gender g ON u.GenderId = g.Id;
END
GO
