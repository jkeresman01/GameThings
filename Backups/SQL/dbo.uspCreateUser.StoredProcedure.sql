USE [GameArticles2]
GO
/****** Object:  StoredProcedure [dbo].[uspCreateUser]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- STORE PROCEDURES

-- USER

CREATE   PROCEDURE [dbo].[uspCreateUser]
    @Username NVARCHAR(50),
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @PasswordHash NVARCHAR(255),
    @Email NVARCHAR(100),
    @PicturePath NVARCHAR(255),
    @Gender NVARCHAR(20),
    @UserId INT OUTPUT
AS
BEGIN
    DECLARE @RoleId INT = (SELECT Id FROM [Role] WHERE Name = 'User');
    DECLARE @GenderId INT = (SELECT Id FROM Gender WHERE Name = @Gender);

    INSERT INTO [User] (
        Username, FirstName, LastName, PasswordHash, Email,
        PicturePath, RoleId, GenderId, IsActive, CreatedAt, UpdatedAt
    )
    VALUES (
        @Username, @FirstName, @LastName, @PasswordHash, @Email,
        @PicturePath, @RoleId, @GenderId, 1, GETDATE(), GETDATE()
    );

    SET @UserId = SCOPE_IDENTITY();
END
GO
