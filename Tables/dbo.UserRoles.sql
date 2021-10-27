CREATE TABLE [dbo].[UserRoles]
(
[RoleID] [int] NOT NULL IDENTITY(1, 1),
[RoleTitle] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserRoles] ADD CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED ([RoleID]) ON [PRIMARY]
GO
