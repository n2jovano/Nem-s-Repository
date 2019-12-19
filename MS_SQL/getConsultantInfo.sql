IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetConsultantInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].GetConsultantInfo
GO

CREATE PROCEDURE GetConsultantInfo AS

BEGIN 
SELECT * FROM Consultant

END

