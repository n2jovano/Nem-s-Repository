-- 3_Client_Create.sql


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type in (N'U'))
DROP TABLE [dbo].[Client]
GO

CREATE TABLE [dbo].[Client](
	ClientID [int] identity (1,1) NOT NULL,
	ClientName [nvarchar](100) NULL,
	ClientAddress varchar (100) NULL	
	
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	ClientID ASC
) 
ON [PRIMARY]
) ON [PRIMARY]

