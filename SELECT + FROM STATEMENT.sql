
--# SELECT + FROM STATEMENT

---Select all
SELECT *
FROM ocd_patient_dataset$

---Top 20 in the entire dataset
SELECT TOP 20 *
FROM ocd_patient_dataset$


---Distinct/ unique ids
SELECT DISTINCT([Patient ID])
FROM ocd_patient_dataset$

---Maximum number of months
SELECT MAX([Duration of Symptoms (months)]) AS HighestNumberofMonths
FROM ocd_patient_dataset$

---Minimum number of months
SELECT MIN([Duration of Symptoms (months)]) AS LowestCountofMonths
FROM ocd_patient_dataset$

---- Average
SELECT AVG([Duration of Symptoms (months)]) AS AverageMonthTaken
FROM ocd_patient_dataset$

----Rounding off and Average
SELECT ROUND(AVG([Duration of Symptoms (months)]),2) AS AverageMonthTaken
FROM ocd_patient_dataset$


---Counting the number of Ids
SELECT COUNT([Patient ID]) AS PatientidCount
FROM ocd_patient_dataset$

