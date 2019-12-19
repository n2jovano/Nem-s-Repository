IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getConsultantRolePay]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].getConsultantRolePay
GO

CREATE PROCEDURE getConsultantRolePay AS

BEGIN 
 select C.FirstName , C.LastName , R.MinHourlyRate, R.RoleName AS MainRole        
 from Consultant C
 inner join Role R
 on C.PrimaryRoleID  = R.RoleID 

END
 
 

 
 