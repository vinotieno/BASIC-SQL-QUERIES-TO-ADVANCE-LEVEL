

--CASE STATEMENT

--SUPPOSE YOUR MANAGER WANTS YOU TO CATEGORISE THE BILLIONAIRAS BY LOW AND HIGH. AND THE THRESHOLD IS 10B IE IF <10B THEN LOW IF NOT THEN HIGH
--SUPPOSE ALSO YOU WANT TO CATEGORISE THE AGE OF PATIENTS



SELECT [Gender],[Ethnicity],[Age],
CASE 
    WHEN [Age]>30 THEN 'OLD'
    ELSE 'YOUNG'
END AS AGEGROUP
FROM [dbo].[ocd_patient_dataset$]





SELECT [Gender],[Ethnicity],[Age],
CASE 
    WHEN [Age]>=70 THEN 'OLD'
	WHEN [Age]>=40 THEN 'SENIOR'
	WHEN [Age] BETWEEN 20 AND 39 THEN 'YOUNG ADULT'
    ELSE 'YOUNG'
END AS AGEGROUP
FROM [dbo].[ocd_patient_dataset$]







SELECT [firstName],[lastName],[gender],[industries],[finalWorth],
CASE
   WHEN [finalWorth]>70000 THEN 'SUPER RICH'
   ELSE 'SECOND CLASS'
END AS Salarycomparison
FROM [dbo].['Billionaires Statistics Dataset$']





SELECT [firstName],[lastName],[gender],[industries],[finalWorth],
CASE
   WHEN [firstName]='Elon' THEN [finalWorth] + ([finalWorth] * 20)
   WHEN [firstName]='Larry' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Jeff' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Bill' THEN [finalWorth] + ([finalWorth] * 50)
   WHEN [firstName]='Vladimir' THEN [finalWorth] + ([finalWorth] * 100)
   ELSE [finalWorth]
END AS Salarycomparison
FROM [dbo].['Billionaires Statistics Dataset$']






SELECT [firstName],[lastName],[gender],[industries],[finalWorth],
CASE
   WHEN [firstName]='Elon' THEN [finalWorth] + ([finalWorth] * 20)
   WHEN [firstName]='Larry' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Jeff' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Bill' THEN [finalWorth] + ([finalWorth] * 50)
   WHEN [firstName]='Vladimir' THEN [finalWorth] + ([finalWorth] * 100)
   ELSE [finalWorth]
END AS Salarycomparison
FROM [dbo].['Billionaires Statistics Dataset$']








SELECT [firstName],[lastName],[gender],[industries],[finalWorth],
CASE
   WHEN [firstName]='Elon' THEN [finalWorth] + ([finalWorth] * 20)
   WHEN [firstName]='Larry' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Jeff' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Bill' THEN [finalWorth] + ([finalWorth] * 50)
   WHEN [firstName]='Vladimir' THEN [finalWorth] + ([finalWorth] * 100)
   ELSE [finalWorth]
END AS Salarycomparison
FROM [dbo].['Billionaires Statistics Dataset$']
WHERE [age]<40








SELECT [firstName],[lastName],[gender],[industries],[finalWorth],
CASE
   WHEN [firstName]='Elon' THEN [finalWorth] + ([finalWorth] * 20)
   WHEN [firstName]='Larry' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Jeff' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Bill' THEN [finalWorth] + ([finalWorth] * 50)
   WHEN [firstName]='Vladimir' THEN [finalWorth] + ([finalWorth] * 100)
   ELSE [finalWorth]
END AS Salarycomparison
FROM [dbo].['Billionaires Statistics Dataset$']
WHERE [age]<40
ORDER BY [age]











SELECT [firstName],[lastName],[gender],[industries],[finalWorth],[country],[Continent],[age],
CASE
   WHEN [firstName]='Elon' THEN [finalWorth] + ([finalWorth] * 20)
   WHEN [firstName]='Larry' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Jeff' THEN [finalWorth] + ([finalWorth] * 10)
   WHEN [firstName]='Bill' THEN [finalWorth] + ([finalWorth] * 50)
   WHEN [firstName]='Vladimir' THEN [finalWorth] + ([finalWorth] * 100)
   ELSE [finalWorth]
END AS Salarycomparison
FROM [dbo].['Billionaires Statistics Dataset$']
RIGHT JOIN [dbo].['Geography - Geography$']
ON [dbo].['Billionaires Statistics Dataset$'].country=[dbo].['Geography - Geography$'].Country_Name
ORDER BY [age]































