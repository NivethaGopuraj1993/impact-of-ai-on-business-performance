show databases;

CREATE DATABASE ai_business_analysis;

USE ai_business_analysis;

CREATE TABLE survey_results (
respondent_id INT,
company_size VARCHAR(20),
role VARCHAR(50),
ai_adoption_level VARCHAR(20),
productivity_improvement FLOAT,
decision_speed FLOAT,
operational_efficiency FLOAT,
revenue_growth FLOAT,
employee_satisfaction FLOAT
);

SELECT * 
FROM survey_results;

SELECT COUNT(*) As Total_No_Of_Survey
FROM survey_results;

/* How many companies are using AI? */

SELECT ai_adoption_level, COUNT(*) AS total_responses
FROM survey_results
GROUP BY ai_adoption_level
ORDER BY total_responses DESC;

/* which companies adopt AI more. (business intelligence analysis.) */

SELECT company_size, ai_adoption_level, COUNT(*) AS total
FROM survey_results
GROUP BY company_size, ai_adoption_level
ORDER BY company_size;

/* Does AI improve productivity? */

SELECT ai_adoption_level,
ROUND(AVG(productivity_improvement),2) AS avg_productivity
FROM survey_results
GROUP BY ai_adoption_level
ORDER BY avg_productivity DESC;

/* Does AI improve revenue growth? */

SELECT ai_adoption_level,
ROUND(AVG(revenue_growth),2) AS avg_revenue_growth
FROM survey_results
GROUP BY ai_adoption_level
ORDER BY avg_revenue_growth DESC;


/* Does AI improve employee satisfaction? */ 

SELECT ai_adoption_level,
ROUND(AVG(employee_satisfaction),2) AS avg_satisfaction
FROM survey_results
GROUP BY ai_adoption_level;

/* AI adoption vs multiple business KPIs. */

SELECT 
ai_adoption_level,
ROUND(AVG(productivity_improvement),2) AS productivity,
ROUND(AVG(decision_speed),2) AS decision_speed,
ROUND(AVG(operational_efficiency),2) AS efficiency,
ROUND(AVG(revenue_growth),2) AS revenue
FROM survey_results
GROUP BY ai_adoption_level
ORDER BY revenue DESC;

SELECT ai_adoption_level, COUNT(*)
FROM survey_results
GROUP BY ai_adoption_level;

SELECT 
ai_adoption_level,
ROUND(AVG(productivity_improvement),2) AS avg_productivity
FROM survey_results
GROUP BY ai_adoption_level
ORDER BY avg_productivity DESC;