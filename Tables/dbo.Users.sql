CREATE TABLE [dbo].[Users]
(
[UserName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoleID] [int] NULL,
[IsActive] [bit] NULL,
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_UserRoles] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[UserRoles] ([RoleID])
GO
