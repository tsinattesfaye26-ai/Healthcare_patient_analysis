-- Q1  Patient & Demographics Questions

-- What is the age distribution of patients?
SELECT 
    CASE 
        WHEN Age < 18 THEN '0-17 (Minor)'
        WHEN Age BETWEEN 18 AND 35 THEN '18-35 (Young Adult)'
        WHEN Age BETWEEN 36 AND 55 THEN '36-55 (Middle-Aged)'
        WHEN Age BETWEEN 56 AND 75 THEN '56-75 (Senior)'
        ELSE '76+ (Elderly)'
    END AS age_group,
    COUNT(*) AS patient_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM helth.healthcare_dataset ), 2) AS percentage
FROM helth.healthcare_dataset
GROUP BY age_group
ORDER BY age_group;

-- Q2 Are certain medical conditions more common in specific age groups
SELECT 
    CASE 
        WHEN Age < 18 THEN '0-17 (Minor)'
        WHEN Age BETWEEN 18 AND 35 THEN '18-35 (Young Adult)'
        WHEN Age BETWEEN 36 AND 55 THEN '36-55 (Middle-Aged)'
        WHEN Age BETWEEN 56 AND 75 THEN '56-75 (Senior)'
        ELSE '76+ (Elderly)'
    END AS age_group,
    medical_Condition,
    COUNT(*) AS patient_count
FROM helth.healthcare_dataset
GROUP BY age_group, medical_Condition
ORDER BY age_group, patient_count DESC;

-- Q3 Are there gender differences in admission rates

SELECT * FROM helth.healthcare_dataset;
SELECT 
    Gender, 
    COUNT(*) AS total_admissions,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM helth.healthcare_dataset ), 2) AS percentage_of_total
FROM helth.healthcare_dataset
GROUP BY Gender;
-- Top 3 conditions for each gender
SELECT Gender, medical_Condition, COUNT(*) as frequency
FROM helth.healthcare_dataset
GROUP BY Gender, medical_Condition
ORDER BY Gender, frequency DESC;

-- Q4 Which blood types appear most frequently?
SELECT 
    Blood_Type, 
    COUNT(*) AS frequency,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM helth.healthcare_dataset ), 2) AS percentage
FROM helth.healthcare_dataset
GROUP BY Blood_Type
ORDER BY frequency DESC;
-- Hospital Operations Questions
-- Q5 How many patients are admitted per day / month?
-- Admissions Per Month (The Big Picture)
SELECT 
    DATE_FORMAT(Date_of_Admission, '%Y-%m') AS month, 
    COUNT(*) AS total_patients
FROM helth.healthcare_dataset
GROUP BY month;
-- Admissions Per Day (The Daily Load)

SELECT AVG(daily_count) AS avg_patients_per_day
FROM (
    SELECT COUNT(*) AS daily_count 
    FROM helth.healthcare_dataset
    GROUP BY Date_of_Admission
) AS daily_totals;
-- Q6 What are the most common admission types?
SELECT 
    admission_Type, 
    COUNT(*) AS total_patients,
    ROUND(AVG(Billing_Amount), 2) AS avg_cost
FROM helth.healthcare_dataset
GROUP BY admission_Type
ORDER BY total_patients DESC;
-- Q7 What is the average length of stay?
SELECT 
    ROUND(AVG(DATEDIFF(discharge_Date, date_of_Admission)), 1) AS average_days_stayed
FROM helth.healthcare_dataset ;
-- Q8 Which medical conditions lead to longer hospital stays?
SELECT 
    medical_Condition, 
    ROUND(AVG(DATEDIFF(discharge_Date, date_of_Admission)), 1) AS avg_days_stayed
FROM helth.healthcare_dataset
GROUP BY Medical_Condition
ORDER BY avg_days_stayed DESC;
-- Q9 Are some rooms used more frequently than others?
SELECT 
    room_Number, 
    COUNT(*) AS times_used
FROM helth.healthcare_dataset
GROUP BY room_Number
ORDER BY times_used DESC
LIMIT 10;
-- Q10 Are there peak admission periods?
SELECT 
    admission_Year,
    MONTHNAME(date_of_Admission) AS admission_month, 
    COUNT(*) AS total_admissions
FROM helth.healthcare_dataset
GROUP BY admission_Year, admission_month
ORDER BY total_admissions DESC;
-- Q11  What is the average bill amount?
SELECT ROUND(AVG(billing_amount), 2) AS average_bill_amount
FROM helth.healthcare_dataset;

-- Q12 Which medical conditions generate the highest costs
SELECT medical_Condition, 
       ROUND(SUM(billing_amount), 2) AS total_revenue,
       ROUND(AVG(billing_amount), 2) AS average_cost
FROM helth.healthcare_dataset
GROUP BY medical_Condition
ORDER BY total_revenue DESC;
-- Q13  How does billing differ by admission type?
SELECT admission_Type, 
       ROUND(AVG(billing_amount), 2) AS average_bill
FROM helth.healthcare_dataset
GROUP BY admission_Type
ORDER BY average_bill DESC;
-- Q14 Are insured patients billed differently from uninsured?
sELECT insurance_Provider, 
       ROUND(AVG(billing_amount), 2) AS average_bill
FROM helth.healthcare_dataset
GROUP BY insurance_Provider
ORDER BY average_bill DESC;
-- Q15  Which insurance providers cover the most patients?
SELECT insurance_Provider, 
       COUNT(*) AS patient_count
FROM helth.healthcare_dataset
GROUP BY insurance_Provider
ORDER BY patient_count DESC;
-- Q16  What is the total revenue over time?
SELECT admission_Year, 
       ROUND(SUM(Billing_Amount), 2) AS total_annual_revenue
FROM helth.healthcare_dataset
GROUP BY admission_Year
ORDER BY admission_Year;
    