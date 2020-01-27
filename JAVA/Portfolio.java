
public class Portfolio {
	
	int startYear; 
	double initialAmount;
	boolean isJointAccount;
	int projectedHorizonYears;
	Client client1;
	Client client2;
	
	public Portfolio (int startYear, double initialAmount, boolean isJointAccount, int projectedHorizonYears, Client client1, Client client2) {
        this.startYear = startYear;
        this.initialAmount = initialAmount;
        this.isJointAccount = isJointAccount;
        this.projectedHorizonYears = projectedHorizonYears;
        this.client1 = client1;
        this.client2 = client2;
    }
	
	public void printMe() {
        System.out.println("Client 1's gender is: " + this.client1.gender);
        //System.out.println("portfolio growth percentage: " + this.projectedPortfolioGrowthPerc+"%");
        System.out.println(" ");
    }


}
