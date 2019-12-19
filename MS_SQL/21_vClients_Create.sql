-- 21_vClients_Create.sql

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vClients]'))
DROP VIEW [dbo].[vClients]
GO

CREATE VIEW dbo.vClients AS 
SELECT ClientName, ClientAddress 
FROM dbo.Client