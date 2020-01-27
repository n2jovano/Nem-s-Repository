
public class Client {
	
	String firstName;
	String lastName;
	int age;       //dateOfBirth
	char gender;
	double requiredInitAnnualSalary; 
	int projectedLifeExpectancy;
	double startCPPAmount;
	double startOASAmount;
	double startOtherAmount;
	double startSuplAmount;
	
	public Client (String firstName, String lastName, int age, char gender, double requiredInitAnnualSalary, int projectedLifeExpectancy, double startCPPAmount, double startOASAmount, double startOtherAmount, double startSuplAmount) {
		 this.firstName = firstName;
		 this.lastName = lastName;
		 this.age = age;
		 this.gender = gender;
		 this.requiredInitAnnualSalary = requiredInitAnnualSalary;
		 this.projectedLifeExpectancy = projectedLifeExpectancy;
		 this.startCPPAmount = startCPPAmount;
		 this.startOASAmount = startOASAmount;
		 this.startOtherAmount = startOtherAmount;
		 this.startSuplAmount = startSuplAmount;
	 }
	
	public void printMe() {
        System.out.println("Client: " + this.firstName +" "+this.lastName + " is " + this.age + " years old");
        //System.out.println("portfolio growth percentage: " + this.projectedPortfolioGrowthPerc+"%");
        System.out.println(" ");
    }


}
