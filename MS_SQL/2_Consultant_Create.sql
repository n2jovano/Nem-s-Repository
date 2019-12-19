-- 2_Consultant_Create.sql


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Consultant]') AND type in (N'U'))
DROP TABLE [dbo].[Consultant]
GO

CREATE TABLE [dbo].[Consultant](
	ConsultantID [int] identity (1,1) NOT NULL,
	FirstName [nvarchar](50) NULL,
	LastName [nvarchar](50) NULL,
	DateStarted datetime NULL,
	DateOfBirth datetime NULL,
	PrimaryRoleID int NULL,
	SecondaryRoleID int NULL
 CONSTRAINT [PK_Consultant] PRIMARY KEY CLUSTERED 
(
	ConsultantID ASC
) 
ON [PRIMARY]
) ON [PRIMARY]

----------------------


------------------

ALTER TABLE Consultant
ADD CONSTRAINT Consultant_Role_Prim FOREIGN KEY (PrimaryRoleID) REFERENCES Role (RoleID)


ALTER TABLE Consultant
ADD CONSTRAINT Consultant_Role_Sec FOREIGN KEY (SecondaryRoleID) REFERENCES Role (RoleID)

