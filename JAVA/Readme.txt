This project was written in Java and is designed as a retirement planner to help clients plan for their future.

1) The project consists of various classes listed below:
TestPortfolioGrowth
MarketCondition
GovernmentPension
Client
Portfolio
PortfolioGrowth

2) The TestPortfolioGrowth class is a testing enviroment

3) The MarketCondition class contains the current inflation percentage aswell as the portfolio growth percentage

4) The GovernmentPension class contains the starting age requirement for the Canadian Pension Plan (CPP), Old Age Security (OAS), Guaranteed Income Supplement (GIS) and government inflation percentage. 

5) The Client class contains information about the client such as their name, age, annual salary, projected life expectancy and starting CPP, OAS and GIS amount

6) The Portfolio class contains the starting year, their initial portfolio amount, if its a joint account, project horizon years aswell as their client details

7) The PortfolioGrowth class contains the market condition, government pension and portfolio details. 

The getPortValueAtYearEnd method calculates the year end amount by first checking whether each client is eligible for each government pension requirement. Then combines those amounts with the required yearly salary/living expenses and deducts this amount from their portfolio all the while increasing portfolio growth and inflation on both their salary/living expenses and government pensions.  

The getPortValueFinal method outputs the bottom final value at the end of the bottom column


This project is a work in progress