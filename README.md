# Insurance-data-analysis-using-SQL

Objective:
The objective of this SQL project is to analyze a dataset containing insurance-related information, focusing on various aspects such as claimed amounts, patient demographics, and behaviors. The dataset provides a comprehensive overview of insurance claims made by patients, including details like patient ID, age, gender, region, BMI (Body Mass Index), smoking status, number of children, and the claimed insurance amount. Here is the link to dataset https://www.kaggle.com/datasets/thedevastator/insurance-claim-analysis-demographic-and-health.

Key Queries and Analysis:

Top 5 Patients with Highest Insurance Claims:
The project begins by identifying and presenting the top 5 patients who have claimed the highest insurance amounts. This query assists in recognizing the individuals with the most significant insurance claims in the dataset.

Average Insurance Claims Based on Number of Children:
This query calculates the average insurance claimed by patients, considering the number of children they have. It aims to uncover potential trends or variations in claimed amounts based on family size.

Highest and Lowest Claimed Amounts by Patients in Each Region:
The project explores regional variations by determining the highest and lowest claimed amounts made by patients within each region. This query provides insights into the distribution of insurance claims across different geographic areas.

Percentage of Smokers in Each Age Group:
Using a common demographic classification, the project calculates the percentage of smokers in distinct age groups. This analysis aims to uncover patterns or trends related to smoking habits across different age categories.

Difference in Claim Amounts Based on Number of Children:
For each patient, this query calculates the difference between their claimed amount and the average claimed amount of patients with the same number of children. This analysis helps identify outliers and deviations in claimed amounts.

Patient with Highest BMI in Each Region and Overall Ranking:
The project identifies patients with the highest BMI in each region and provides their respective overall ranking in the entire dataset. This query assists in understanding the distribution of high BMI individuals across different regions.

Difference in Claim Amounts Based on Highest BMI in Region:
This query calculates the difference between the claimed amount of each patient and the claimed amount of the patient with the highest BMI in their respective region. It aims to highlight variations in claimed amounts related to BMI within specific regions.

Difference in Claim Amounts Based on BMI, Smoker Status, and Region:
Focusing on BMI, smoker status, and region, this query calculates the difference in claim amounts between each patient and the patient with the highest claim in the same BMI and smoker status category within the same region.

Maximum BMI Among Next Three Records for Each Patient:
The project identifies, for each patient, the maximum BMI value among their next three records, ordered by age. This analysis offers insights into the potential trends and changes in BMI for individual patients over time.

Rolling Average of Last 2 Claims for Each Patient:
This query calculates the rolling average of the last two insurance claims for each patient. It provides a dynamic perspective on a patient's recent claims, aiding in identifying patterns or changes in claimed amounts.

First Claimed Insurance Value for Non-Diabetic Patients (BMI 25-30) by Gender and Region:
Focusing on non-diabetic patients with BMI values between 25 and 30, this query identifies the first claimed insurance value for both male and female patients within each region. The results are ordered by patient age in ascending order, offering a detailed understanding of initial insurance claims for specific demographics.

Conclusion:
This comprehensive SQL project dives deep into the provided insurance dataset, offering a range of analyses to uncover patterns, trends, and outliers related to insurance claims. The queries explore demographics, lifestyle factors, and regional variations, providing valuable insights for insurance companies and policymakers to better understand their patient population.





