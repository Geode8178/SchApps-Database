SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_UserRoles_SearchByTitle]
(
		@RoleTitle nvarchar(50)

)
AS

	BEGIN
		SELECT  RoleID,
				RoleTitle,
				Description,
				CreatedBy,
				CONVERT (nvarchar(50), CreatedDate, 105) AS 'Created Date'
		FROM UserRoles
		WHERE RoleTitle = @RoleTitle

	END
GO
