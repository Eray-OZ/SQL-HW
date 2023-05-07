


SELECT 



Name,
Year,
(SUM(NA_Sales)+SUM(EU_Sales)+SUM(JP_Sales)+SUM(Other_Sales)) AS 'World Wide Sale' 
FROM CG



WHERE Name IS NOT NULL
GROUP BY Name
ORDER BY Year DESC;



SELECT 
(SUM(NA_Sales)+SUM(EU_Sales)+SUM(JP_Sales)+SUM(Other_Sales)) AS 'Total Sale', Year
FROM CG;



SELECT
Name,
Publisher,
NA_Sales AS 'North America Sales'
FROM CG

WHERE Name LIKE 'The%' AND
WHERE Year BETWEEN 2010 AND 2015
LIMIT 10;