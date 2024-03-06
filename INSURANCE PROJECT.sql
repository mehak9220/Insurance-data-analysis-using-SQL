CREATE DATABASE INSURANCE_COMPANY;

USE INSURANCE_COMPANY;

SELECT * FROM INS;

-- Who are the top 5 patients who claimed the highest insurance

SELECT patientid 
from ins
order by claim desc
limit 5;

-- What is the average insurance claimed by patients based on the number of children they have

SELECT DISTINCT(children), avg_claim 
 FROM (SELECT *, AVG(claim) OVER(PARTITION BY children) as 'avg_claim'
from ins) t;

-- What is the highest and lowest claimed amount by patients in each region

SELECT DISTINCT(region), highest_claim, lowest_claim
 FROM (SELECT *, 
MAX(claim) OVER(PARTITION BY region) AS 'highest_claim',
MIN(claim) OVER(PARTITION BY region) AS 'lowest_claim'
from ins) t;

-- What is the percentage of smokers in each age group

WITH age_group_table AS (
  SELECT 
    age,
    smoker,
    CASE 
      WHEN age BETWEEN 10 AND 19 THEN 'Teenager'
      WHEN age BETWEEN 20 AND 29 THEN '20-29'
      WHEN age BETWEEN 30 AND 39 THEN '30-39'
      WHEN age BETWEEN 40 AND 49 THEN '40-49'
      WHEN age BETWEEN 50 AND 59 THEN '50-59'
      WHEN age >= 60 THEN 'Senior'
    END AS 'AGE_GROUP'
  FROM ins
) 
SELECT 
  AGE_GROUP,
  ROUND(SUM(CASE WHEN smoker = 'YES' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS percentage_of_smokers
FROM age_group_table
GROUP BY AGE_GROUP;

-- For each patient, calculate the difference between their claimed amount and the average claimed amount of 
-- patients with the same number of children   

SELECT patientid, children, claim, avg_claim, ROUND(avg_claim - claim, 2) AS 'Difference' 
FROM (SELECT *,
ROUND(avg(claim) over(partition by children), 2) as 'avg_claim'
from ins) t;

-- Show the patient with the highest BMI in each region and their respective rank in overall data

SELECT patientid, region, max_bmi, ranking 
FROM (SELECT *, MAX(BMI) OVER(PARTITION BY region) as 'max_bmi'
FROM (SELECT *, RANK() OVER(ORDER BY BMI DESC) as 'ranking'
FROM INS) t) v
where v.bmi = v.max_bmi;

--  Calculate the difference between the claimed amount of each patient and the claimed amount of the 
-- patient who has the highest BMI in their region

SELECT patientid, region, claim, claimed_amount, 
ROUND(claim - claimed_amount, 2) AS 'Difference'
from (SELECT *,
       FIRST_VALUE(claim) over(partition by region order by bmi desc) as claimed_amount
        from ins) t;

-- For each patient, calculate the difference in claim amount between the patient and 
-- the patient with the highest claim amount among patients with the same bmi and 
-- smoker status, within the same region. Return the result in descending 
-- order difference

SELECT patientid, claim, bmi, smoker, max_claim FROM ( 
SELECT *, max(claim) over(partition by region) as 'max_claim'
from ins) t
group by bmi, smoker, max_claim

SELECT MAX(CLAIM), BMI, SMOKER, REGION
FROM INS 
GROUP BY REGION, SMOKER, BMI























