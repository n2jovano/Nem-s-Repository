--4_Project_Create.sql


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Project]') AND type in (N'U'))
DROP TABLE [dbo].[Project]
GO

CREATE TABLE Project(
	ProjectID int identity (1,1) NOT NULL,
	ClientID int FOREIGN KEY REFERENCES Client (ClientID),
	ProjectName [nvarchar] (100) NULL,
	TotalAmount [nvarchar] (10) NULL


 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED   --pj_project moze se zvati zaba
(
	ProjectID ASC
) 

ON [PRIMARY]  -- primary file group is default location where you have decided to store your file groups. see below for more info

)ON [PRIMARY]

/*
When you create a database in Microsoft SQL Server you can have multiple file groups, 
where storage is created in multiple places, directories or disks. Each file group can be named. 
The PRIMARY file group is the default one, which is always created, and so the SQL you've given 
creates your table ON the PRIMARY file group.
*/


