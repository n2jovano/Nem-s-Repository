-- 1_Role_Create.sql


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO

CREATE TABLE [dbo].[Role](
	RoleID [int] identity (1,1) NOT NULL,
	RoleName [varchar](50) NULL,
	MinHourlyRate float NULL
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	RoleID ASC
)--WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) 
ON [PRIMARY]
) ON [PRIMARY]

