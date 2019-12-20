from sirmoDBMSnew import DBaccess

SirmoDB = DBaccess("SirmotechBMS")
SirmoDB.connectDB()
SirmoDB.addNewConsultant('Niki', 'White', '2019-02-03', '1979-10-25', '4','3')
SirmoDB.addNewConsultant('Sandy', 'Thompson', '2015-04-10', '1986-11-05', '1','1')


SirmoDB.removeConsultant("Niki","White")
SirmoDB.getMinHourlyRateAVG()
SirmoDB.getConsultantInfo()

SirmoDB.getConsultantRolePay()
SirmoDB.connectDBClose()