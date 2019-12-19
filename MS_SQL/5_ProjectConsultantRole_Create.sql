-- 5_ProjectConsultantRole.sql


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectConsultantCreate]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectConsultantRole]
GO

CREATE TABLE [dbo].[ProjectConsultantRole](
	ProjectID int,
	ConsultantID int,
	RoleID int,
	StartDate datetime NULL,
	EndDate datetime NULL,
	CurrentlyBilled int NULL
		
 CONSTRAINT [PK_ProjectID] PRIMARY KEY CLUSTERED 
(
	ProjectID ASC
) 
)


ALTER TABLE ProjectConsultantRole
ADD CONSTRAINT PCR_Role FOREIGN KEY (RoleID) REFERENCES Role (RoleID)

ALTER TABLE ProjectConsultantRole
ADD CONSTRAINT PCR_Consultant FOREIGN KEY (ConsultantID) REFERENCES Consultant (ConsultantID)


ALTER TABLE ProjectConsultantRole
ADD CONSTRAINT PCR_Project FOREIGN KEY (ProjectID) REFERENCES Project (ProjectID)





