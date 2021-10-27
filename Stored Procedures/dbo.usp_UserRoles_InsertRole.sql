SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_UserRoles_InsertRole]
(
		 @RoleTitle nvarchar(50)
		,@Description nvarchar(200)
		,@CreatedBy nvarchar(50)
		
)
AS

	BEGIN
		INSERT INTO [dbo].[UserRoles]
           ([RoleTitle]
           ,[Description]
           ,[CreatedBy]
           ,[CreatedDate])
     VALUES
           (@RoleTitle
           ,@Description
           ,@CreatedBy
           ,GETDATE()
		   )
	END

GO
