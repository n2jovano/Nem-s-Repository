
public class MarketCondition {

    double inflationPerc;
    double projectedPortfolioGrowthPerc;

    public MarketCondition (double infPerc, double portfolioGrowthPerc) {
        inflationPerc = infPerc;
        projectedPortfolioGrowthPerc = portfolioGrowthPerc;
    }

    public void printMe() {
        System.out.println("inflation percentage: " + this.inflationPerc+"%");
        System.out.println("portfolio growth percentage: " + this.projectedPortfolioGrowthPerc+"%");
        System.out.println(" ");
    }

}
