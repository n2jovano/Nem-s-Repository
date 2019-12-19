-- 23_vProjects_Create.sql

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vProjects]'))
DROP VIEW [dbo].[vProjects]
GO

CREATE VIEW dbo.vProjects AS 
SELECT RoleName, MinHourlyRate
FROM dbo.Role