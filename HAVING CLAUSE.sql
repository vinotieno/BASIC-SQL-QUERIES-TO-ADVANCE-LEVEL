
--HAVING CLAUSE 


SELECT [Gender],[Age],[Ethnicity],[Marital Status],SUM([Age]) AS TOTALAGE
FROM [dbo].[ocd_patient_dataset$]
GROUP BY [Gender],[Age],[Ethnicity],[Marital Status]
HAVING AVG([Age])>10


SELECT [Age], [Gender], COUNT([Duration of Symptoms (months)]) AS Symptom_Count
FROM [dbo].[ocd_patient_dataset$]
GROUP BY [Age], [Gender]  -- Grouping required before HAVING
HAVING COUNT([Duration of Symptoms (months)]) > 10;







SELECT [firstName],[gender],SUM([finalWorth]) AS TOTALFINALWORTH
FROM ['Billionaires Statistics Dataset$']
GROUP BY [firstName],[gender]
HAVING SUM([finalWorth])>50000





SELECT [firstName],[lastName],[gender],[age], COUNT([age]) AS AGECOUNT
FROM ['Billionaires Statistics Dataset$']
GROUP BY [firstName],[lastName],[gender],[age]
HAVING COUNT([age])>=1





SELECT [firstName],[lastName],[gender],[age],[country], COUNT([country]) AS AGECOUNT
FROM ['Billionaires Statistics Dataset$']
GROUP BY [firstName],[lastName],[gender],[age],[country]
HAVING COUNT([country])>=1






SELECT [industries], COUNT([industries]) AS INDUSTRYNAMES
FROM [dbo].['Billionaires Statistics Dataset$']
LEFT JOIN [dbo].['Geography - Geography$']
ON [dbo].['Billionaires Statistics Dataset$'].country=[dbo].['Geography - Geography$'].Country_Name
GROUP BY [industries]
HAVING COUNT([industries])>1
































