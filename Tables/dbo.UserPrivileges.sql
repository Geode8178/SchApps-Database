CREATE TABLE [dbo].[UserPrivileges]
(
[PrivilegeID] [int] NOT NULL IDENTITY(1, 1),
[UserName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserPrivileges] ADD CONSTRAINT [PK_UserPrivileges] PRIMARY KEY CLUSTERED ([PrivilegeID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserPrivileges] ADD CONSTRAINT [FK_UserPrivileges_Users] FOREIGN KEY ([UserName]) REFERENCES [dbo].[Users] ([UserName])
GO
