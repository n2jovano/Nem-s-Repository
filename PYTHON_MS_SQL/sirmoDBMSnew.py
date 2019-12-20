import pyodbc

class DBaccess:
    def __init__(self, myDBName):
        self.DBName = myDBName

    cnxn = None

    #function name: connectDB
    #purpose: connect to the database
    def connectDB(self):
        global cnxn
        cnxn = pyodbc.connect(Trusted_Connection='yes', driver='{SQL Server}', server='ULTRA\SQLEXPRESS',
                              database=self.DBName)

    #function name: addNewConsultant
    #purpose: adds a new record into the Consultant table
    def addNewConsultant(self, myFirstName, myLastName, myDateStarted, myDateOfBirth, myPrimaryRoleID,
                         mySecondaryRoleID):
        global cnxn
        cursor = cnxn.cursor()
        cursor.execute(
            "INSERT INTO Consultant (FirstName, LastName, DateStarted , DateOfBirth, PrimaryRoleID , SecondaryRoleID) VALUES "
            "('"+myFirstName+"', '"+myLastName+"', '"+myDateStarted+ "', '"
        +myDateOfBirth+ "', "+myPrimaryRoleID+ ","+mySecondaryRoleID+ ")")
        cnxn.commit()
        print("Data was added successfully into Sirmo DBMS =0)")
        cursor.close()

    #function name: getConsultantInfo
    #purpose: retrieves all the consultant info
    def getConsultantInfo(self):
        global cnxn
        cursor = cnxn.cursor()
        cursor.execute("exec GetConsultantInfo") #calling stored procedure
        results = cursor.fetchall()
        for r in results:
            print(r)
        cursor.close()

    #function name: removeConsultant
    #purpose: removes a consultant record based on parameters
    #input parameters: FirstName, LastName
    def removeConsultant(self, FirstName, LastName):
        global cnxn
        cursor = cnxn.cursor()
        cursor.execute("DELETE FROM Consultant WHERE FirstName = '"+FirstName+"' AND LastName = '"+LastName+"'")
        cnxn.commit()
        print("The Consultant was removed successfully into Sirmo DBMS =0)")
        cursor.close()

    #function name: getMinHourlyRateAVG
    #purpose: gets the average value of the minimum hourly wage rate among all consultants
    def getMinHourlyRateAVG(self):
        global cnxn
        cursor = cnxn.cursor()
        cursor.execute("exec getMinHourlyRateAVG") #calling stored procedure
        result = cursor.fetchone()
        print("AVG: ")
        print(result[0])
        cursor.close()

    #function name: getConsultantRolePay
    #purpose: retrieves all the consultants roles and pay
    def getConsultantRolePay(self):
        global cnxn
        cursor = cnxn.cursor()
        cursor.execute("exec getConsultantRolePay") #calling stored procedure
        results = cursor.fetchall()
        for r in results:
           print(r)
           #print(r[0])
        print("Here is the inner joined list for Consultant and Role =0)")
        cursor.close()

    #function name: connectDBClose
    #purpose: closes the database connection
    def connectDBClose(self):
        global cnxn
        cnxn.close()