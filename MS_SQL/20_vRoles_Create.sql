-- 20_vRoles_Create.sql

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vRoles]'))
DROP VIEW [dbo].[vRoles]
GO

CREATE VIEW dbo.vRoles AS 
SELECT RoleName, MinHourlyRate
FROM dbo.Role