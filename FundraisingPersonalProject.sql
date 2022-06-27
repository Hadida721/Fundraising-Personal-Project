Select * 
From PortfolioProject.dbo.fundraising$ as Fundraising



--Here we will select the data that will be used

Select Marital_status, Wealth_rating, Totalgiving
From PortfolioProject.dbo.fundraising$

--Here we will sum the total givings by Marital Status & Wealth Ratings excluding results showing 'NA'

Select Distinct(Marital_status), Wealth_rating, Sum(Totalgiving) as Total_Giving_by_MS
From PortfolioProject.dbo.fundraising$
Where Marital_status <> 'NA'
And Wealth_rating <> 'NA'
Group by Marital_status, Wealth_rating
Order by Total_Giving_by_MS desc



-- Here we will drop unused columns

Select * 
From PortfolioProject.dbo.fundraising$ as Fundraising

ALTER TABLE PortfolioProject.dbo.fundraising$
DROP COLUMN ZIPCODE, AGE, MEMBERSHIP_IND, ALUMNUS_IND, PARENT_IND, HAS_INVOLVEMENT_IND, DEGREE_LEVEL, PREF_ADDRESS_TYPE, EMAIL_PRESENT_IND, CON_YEARS, PrevFYGiving, PrevFY1Giving, PrevFY2Giving, PrevFY4Giving, CurrFYGiving, DONOR_IND, BIRTH_DATE 