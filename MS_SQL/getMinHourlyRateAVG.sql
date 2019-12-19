IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getMinHourlyRateAVG]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].getMinHourlyRateAVG
GO

CREATE PROCEDURE getMinHourlyRateAVG AS

BEGIN 
SELECT AVG(MinHourlyRate) From Role 

END