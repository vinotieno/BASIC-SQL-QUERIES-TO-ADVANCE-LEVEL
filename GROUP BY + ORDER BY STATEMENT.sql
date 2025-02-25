


--# GROUP BY + ORDER BY STATEMENT
SELECT *
FROM ocd_patient_dataset$

--*/ Every column in SELECT must either:
--Be in the GROUP BY clause, OR
--Be used in an aggregate function (COUNT(), SUM(), AVG(), etc.).
--Every selected column must be included in the GROUP BY clause unless it is used in an aggregate function (COUNT(), SUM(), AVG(), etc.).*/




----GROUP BY STATEMENT
--- If you want a count per group (based on Gender, Age, Ethnicity, Marital Status, and Education Level):

SELECT [Gender], [Age], [Ethnicity], [Marital Status], [Education Level], COUNT([Gender]) AS SEX
FROM ocd_patient_dataset$
WHERE [Age] > 35 AND [Duration of Symptoms (months)] > 130
GROUP BY [Gender], [Age], [Ethnicity],[Marital Status], [Education Level];

-- If you only want to count the number of genders per Age:

SELECT [Age], COUNT([Gender]) AS SEX
FROM ocd_patient_dataset$
WHERE [Age] > 35 AND [Duration of Symptoms (months)] > 130
GROUP BY [Age];


--If you want to count how many males vs. females exist per Age:
SELECT [Age], [Gender], COUNT([Gender]) AS GenderCount
FROM ocd_patient_dataset$
WHERE [Age] > 35 AND [Duration of Symptoms (months)] > 130
GROUP BY [Age], [Gender];


--If you want to count how many males vs. females exist per Age:

SELECT [Gender],[Age], COUNT([Gender]) AS GenderCount
FROM ocd_patient_dataset$
WHERE [Age]<50 AND [Duration of Symptoms (months)] > 130
GROUP BY [Age], [Gender];




---ORDER BY STATEMENT
--order by columns, should be included in SELECT.

SELECT [Gender], [Age], [Ethnicity], [Marital Status], [Education Level], COUNT([Gender]) AS SEX
FROM ocd_patient_dataset$
WHERE [Age] > 35 AND [Duration of Symptoms (months)] > 130
GROUP BY [Gender], [Age], [Ethnicity],[Marital Status], [Education Level]
ORDER BY [Ethnicity]




SELECT [Age], COUNT([Gender]) AS SEX
FROM ocd_patient_dataset$
WHERE [Age] > 35 AND [Duration of Symptoms (months)] > 130
GROUP BY [Age]
ORDER BY [Age] ASC




SELECT [Age], COUNT([Gender]) AS SEX
FROM ocd_patient_dataset$
WHERE [Age] > 35 AND [Duration of Symptoms (months)] > 130
GROUP BY [Age]
ORDER BY [Age] DESC


