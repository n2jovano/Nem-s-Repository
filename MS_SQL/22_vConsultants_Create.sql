-- 22_vConsultants_Create.sql

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vConsultants]'))
DROP VIEW [dbo].[vConsultants]
GO

CREATE VIEW dbo.vConsultants AS 
SELECT ConsultantID, FirstName, LastName , DateStarted, DateOfBirth,
PR.RoleName as PrimaryRole, SR.RoleName as SecondaryRole
FROM dbo.Consultant C (NOLOCK)
LEFT JOIN dbo.Role PR (NOLOCK)
ON C.PrimaryRoleID  = PR.RoleID
LEFT JOIN dbo.Role SR (NOLOCK)
ON C.SecondaryRoleID  = SR.RoleID