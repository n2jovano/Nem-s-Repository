
public class GovernmentPension {
	
	 int regStartAgeCPP;
	 int regStartAgeOAS;
	 int startAgeSupl;
	 int regStartAgeOther;
	 double govInflationPercentage;

	 public GovernmentPension (int regStartAgeCPP, int regStartAgeOAS, int startAgeSupl, int regStartAgeOther, double govInflationPercentage) {
		 this.regStartAgeCPP = regStartAgeCPP;
		 this.regStartAgeOAS = regStartAgeOAS;
		 this.startAgeSupl = startAgeSupl;
		 this.regStartAgeOther = regStartAgeOther;
		 this.govInflationPercentage = govInflationPercentage;
	 }
	 
	 public void printMe() {
	        System.out.println("Regular starting age of CPP: " + this.regStartAgeCPP+" years");
	        //System.out.println("portfolio growth percentage: " + this.projectedPortfolioGrowthPerc+"%");
	        System.out.println(" ");
	    }
}
