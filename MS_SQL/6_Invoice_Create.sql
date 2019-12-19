--6_Invoice.sql


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice]') AND type in (N'U'))
DROP TABLE [dbo].[Invoice]
GO

CREATE TABLE Invoice(
	InvoiceID int identity (1,1) NOT NULL,
	ProjectID int,
	InvoiceDate datetime NULL,
	TotalCharged int,
	ReceivedDate datetime


 CONSTRAINT [PK_InvoiceID] PRIMARY KEY CLUSTERED   
(
	InvoiceID ASC
) 

ON [PRIMARY]  

)ON [PRIMARY]


ALTER TABLE Invoice
ADD CONSTRAINT Invoice_Project FOREIGN KEY (ProjectID) REFERENCES Project (ProjectID)