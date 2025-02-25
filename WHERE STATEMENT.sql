
--# WHERE STATEMENT

SELECT *
FROM ocd_patient_dataset$
WHERE [Age]>35 


SELECT *
FROM ocd_patient_dataset$
WHERE [Age]<35 


SELECT *
FROM ocd_patient_dataset$
WHERE [Age]<=35 



SELECT *
FROM ocd_patient_dataset$
WHERE [Age]>=35 


SELECT *
FROM ocd_patient_dataset$
WHERE [Age]=35 



SELECT *
FROM ocd_patient_dataset$
WHERE [Age]=35  AND [Gender]='Male'


SELECT *
FROM ocd_patient_dataset$
WHERE [Age]=35  AND [Gender]='Female'



SELECT *
FROM ocd_patient_dataset$
WHERE [Age]=35  OR [Gender]='Female'




SELECT *
FROM ocd_patient_dataset$
WHERE [Ethnicity] IN ('African')


SELECT *
FROM ocd_patient_dataset$
WHERE [Age] like 47



SELECT *
FROM ocd_patient_dataset$
WHERE [Education Level] like 'G%'





SELECT *
FROM ocd_patient_dataset$
WHERE [Education Level] is NULL



SELECT *
FROM ocd_patient_dataset$
WHERE [Education Level] is NOT NULL








