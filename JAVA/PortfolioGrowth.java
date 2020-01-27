
public class PortfolioGrowth {
	
	Portfolio targetPortfolio;
	MarketCondition targetMarketCondition;
	GovernmentPension govtPension;
	
	
	public PortfolioGrowth (Portfolio targetPortfolio, MarketCondition targetMarketCondition,
			GovernmentPension govtPension) {
        this.targetPortfolio = targetPortfolio;
		this.targetMarketCondition = targetMarketCondition;
		this.govtPension = govtPension;
	}   
	
	public void printMe() {
        System.out.println("Porftfolio Growth: " + this.targetMarketCondition.projectedPortfolioGrowthPerc + "%");
        System.out.println("Porftfolio Growth CPP Age: " + this.govtPension.regStartAgeCPP);
        System.out.println(" ");  
	
	}
	
	public double getPortValueAtYearEnd(int numberOfYears){ //value at the last column
		
		double requiredDeltaWithdrawal = 0;
		double tempCPPamount1 = 0;
		double tempCPPamount2 = 0;
		double tempOASamount1 = 0;
		double tempOASamount2 = 0;
		double tempSUPamount1 = 0;
		double tempSUPamount2 = 0;
		
		//double startOfTheYearAmount = 0;
		double increasedPortfolioValue = 0; //start of year after growth
		double endOfTheYearAmount = 0;
		
		double initAnnualAmount = this.targetPortfolio.client1.requiredInitAnnualSalary + this.targetPortfolio.client2.requiredInitAnnualSalary; //required salary
		double annualSalaryAfterInfl  = initAnnualAmount;  //required delta withdrawal
		double startOfTheYearAmount = this.targetPortfolio.initialAmount;
		endOfTheYearAmount = startOfTheYearAmount; //(1+(this.targetMarketCondition.projectedPortfolioGrowthPerc)/100) * startOfTheYearAmount;
		int client1Age = this.targetPortfolio.client1.age;
		int client2Age = this.targetPortfolio.client2.age;
		
		double CPPAmount1 = this.targetPortfolio.client1.startCPPAmount;
		double CPPAmount2 = this.targetPortfolio.client2.startCPPAmount;
		double OASAmount1 = this.targetPortfolio.client1.startOASAmount;
		double OASAmount2 = this.targetPortfolio.client2.startOASAmount;
		double SuplAmount1 = this.targetPortfolio.client1.startSuplAmount;
		double SuplAmount2 = this.targetPortfolio.client1.startSuplAmount;
		
		//determine whether the clients meet the age requirements for cpp,oas and sup
		for(int i=0; i<numberOfYears; i++) {
			
			client1Age ++; //increment clients age
			client2Age ++;
		
			if (client1Age >= this.govtPension.regStartAgeCPP) {
			
				tempCPPamount1 = CPPAmount1;
			}
			if (client2Age >= this.govtPension.regStartAgeCPP) {
			
				tempCPPamount2 = CPPAmount2;
			}
		//////
			if (client1Age >= this.govtPension.regStartAgeOAS) {
			
				tempOASamount1 = OASAmount1;
			}
			if (client2Age >= this.govtPension.regStartAgeOAS) {
			
				tempOASamount2 = OASAmount2;
			}
		/////
			if (client1Age >= this.govtPension.startAgeSupl) {
			
				tempSUPamount1 = SuplAmount1;
			}
			if (client2Age >= this.govtPension.startAgeSupl) {
			
				tempSUPamount2 = SuplAmount2;
			}
			
			
		////
			
			CPPAmount1 = (1+(this.govtPension.govInflationPercentage)/100) * CPPAmount1;
			CPPAmount2 = (1+(this.govtPension.govInflationPercentage)/100) * CPPAmount2;
			OASAmount1 = (1+(this.govtPension.govInflationPercentage)/100) * OASAmount1;
			OASAmount2 = (1+(this.govtPension.govInflationPercentage)/100) * OASAmount2;
			SuplAmount1 = (1+(this.govtPension.govInflationPercentage)/100) * SuplAmount1;
			SuplAmount2 = (1+(this.govtPension.govInflationPercentage)/100) * SuplAmount2;
			
			annualSalaryAfterInfl = (1+(this.targetMarketCondition.inflationPerc)/100) * annualSalaryAfterInfl;
			requiredDeltaWithdrawal = annualSalaryAfterInfl - tempCPPamount1 - tempCPPamount2 - tempOASamount1 - tempOASamount2 - tempSUPamount1 - tempSUPamount2;
		
		
			
			
		//startOfTheYearAmount = this.targetPortfolio.initialAmount;
		increasedPortfolioValue = (1+(this.targetMarketCondition.projectedPortfolioGrowthPerc)/100) * endOfTheYearAmount; //start of year after growth
		endOfTheYearAmount = increasedPortfolioValue - requiredDeltaWithdrawal;
		
		}
		return endOfTheYearAmount; 
		//return increasedPortfolioValue;
		
	}	
	
	public double getPortValueFinal(){ //value at the last column at the bottom
		int portFinalHorizon;
		int client1Horizon = this.targetPortfolio.client1.projectedLifeExpectancy - this.targetPortfolio.client1.age;
		int client2Horizon = this.targetPortfolio.client2.projectedLifeExpectancy - this.targetPortfolio.client2.age;
		portFinalHorizon= Math.max(client1Horizon, client2Horizon);
		
		return getPortValueAtYearEnd(portFinalHorizon);
		
	}

}

