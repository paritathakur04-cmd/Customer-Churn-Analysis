USE customer_churn_analysis;
SHOW TABLES;

USE customer_churn_analysis;
SELECT *
FROM customer_churn;

SELECT COUNT(*)
FROM customer_churn;

SELECT COUNT(*) AS Total_Customers
FROM customer_churn;

SELECT COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn = 'Yes';

SELECT COUNT(*) AS Retained_Customers
FROM customer_churn
WHERE Churn = 'No';

SELECT *
FROM customer_churn
WHERE gender = 'Female';

SELECT COUNT(*) AS Female_Customers
FROM customer_churn
WHERE gender = 'Female';

SELECT *
FROM customer_churn
WHERE gender = 'male';

SELECT COUNT(*) AS Female_Customers
FROM customer_churn
WHERE gender = 'male';

SELECT *
FROM customer_churn
WHERE tenure > 24;

SELECT *
FROM customer_churn
WHERE MonthlyCharges > 70;

SELECT COUNT(*) AS Monthly_Charges_greaterthan70
FROM customer_churn
WHERE MonthlyCharges > 70;


SELECT *
FROM customer_churn
ORDER BY MonthlyCharges DESC;

SELECT *
FROM customer_churn
ORDER BY MonthlyCharges DESC
LIMIT 10;

SELECT *
FROM customer_churn
ORDER BY tenure DESC
LIMIT 10;

SELECT
    Churn,
    COUNT(*) AS Total_Customers,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_churn),
        2
    ) AS Percentage
FROM customer_churn
GROUP BY Churn;

SELECT
    Contract,
    COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY Contract
ORDER BY Churned_Customers DESC;

SELECT
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly_Charge
FROM customer_churn
GROUP BY Churn;


SELECT 
churn,
ROUND(AVG(tenure),2) AS Avg_Tenure
FROM customer_churn
GROUP BY Churn;

SELECT 
InternetService,
COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY InternetService;


SELECT
    PaymentMethod,
    COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn='Yes'
GROUP BY PaymentMethod
ORDER BY Churned_Customers DESC;

SELECT
    SeniorCitizen,
    Churn,
    COUNT(*) AS Customers
FROM customer_churn
GROUP BY SeniorCitizen, Churn;

SELECT
    Contract,
    ROUND(AVG(MonthlyCharges),2) AS Average_Charge
FROM customer_churn
GROUP BY Contract;

SELECT
    customerID,
    MonthlyCharges,
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low'
        WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium'
        ELSE 'High'
    END AS Customer_Category
FROM customer_churn;

SELECT
    customerID,
    MonthlyCharges
FROM customer_churn
WHERE MonthlyCharges >
(
    SELECT AVG(MonthlyCharges)
    FROM customer_churn
);


SELECT
    Contract,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        *100.0/COUNT(*),
        2
    ) AS Churn_Percentage
FROM customer_churn
GROUP BY Contract;
     
SELECT
    customerID,
    MonthlyCharges,
    RANK() OVER(ORDER BY MonthlyCharges DESC) AS Ranking
FROM customer_churn;


SELECT *
FROM
(
    SELECT
        customerID,
        Contract,
        MonthlyCharges,
        ROW_NUMBER() OVER(
            PARTITION BY Contract
            ORDER BY MonthlyCharges DESC
        ) AS rn
    FROM customer_churn
) t
WHERE rn = 1;


WITH AvgCharges AS
(
    SELECT
        Contract,
        AVG(MonthlyCharges) AS AvgCharge
    FROM customer_churn
    GROUP BY Contract
)

SELECT *
FROM AvgCharges;


SELECT
    customerID,
    tenure,
    TotalCharges
FROM customer_churn
ORDER BY tenure DESC
LIMIT 5;






