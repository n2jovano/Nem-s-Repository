//Version 1.0

public class TestPortfolioGrowth {

    public static void main(String[] args) {
        // write your code here
        MarketCondition myMc = new MarketCondition(2.5,6.0);
        myMc.printMe();
        GovernmentPension myGP = new GovernmentPension (65, 65, 65, 0, 2.0);
        myGP.printMe();
        
        Client myClient1 = new Client ("Michael", "Johnson", 60, 'M', 32500, 90, 6000, 7500, 0, 0);
        Client myClient2 = new Client ("Sandy", "Johnson", 59, 'F', 32500, 90, 9600, 7500, 0, 0);
        myClient1.printMe();
        Portfolio myPortfolio = new Portfolio (2016, 1000000, true, 25, myClient1, myClient2);
        myPortfolio.printMe();
        
        PortfolioGrowth myPGrowth = new PortfolioGrowth (myPortfolio, myMc, myGP);
        myPGrowth.printMe();
        System.out.printf("Year End Value: $%.2f",myPGrowth.getPortValueAtYearEnd(6));
        System.out.printf("\n");
        System.out.printf("Final Value: $%.2f",myPGrowth.getPortValueFinal());
    }
}
