-- AIR CRASHES ANALYSIS


SELECT *  FROM Aircraft_Incidents;

-- Q1. Total Number of Aircraft Incidents Per Year.

SELECT Year, COUNT(*) AS Total_Incidents
FROM Aircraft_Incidents
GROUP BY Year
ORDER BY Year;


-- Q2. Top 5 Countries with the Most Aircraft Incidents.

SELECT Country_Region, COUNT(*) AS Incident_Count
FROM Aircraft_Incidents
GROUP BY Country_Region
ORDER BY Incident_Count DESC
LIMIT 5;


-- Q3. Monthly Trend of Incidents.

SELECT Year, Month, COUNT(*) AS Incidents
FROM Aircraft_Incidents
GROUP BY Year, Month
ORDER BY Year, 
         CASE Month
             WHEN 'January' THEN 1 WHEN 'February' THEN 2 WHEN 'March' THEN 3
             WHEN 'April' THEN 4 WHEN 'May' THEN 5 WHEN 'June' THEN 6
             WHEN 'July' THEN 7 WHEN 'August' THEN 8 WHEN 'September' THEN 9
             WHEN 'October' THEN 10 WHEN 'November' THEN 11 WHEN 'December' THEN 12
         END;


-- Q4.  Quarterly Fatalities Trend.

SELECT Year, Quarter, SUM(Fatalities_Air) AS Total_Fatalities
FROM Aircraft_Incidents
GROUP BY Year, Quarter
ORDER BY Year, Quarter;


-- Q5. Survival Rate Per Incident.

SELECT *, 
       CASE 
           WHEN Aboard > 0 THEN ROUND((Aboard - Fatalities_Air) * 100.0 / Aboard, 2)
           ELSE NULL
       END AS Survival_Rate_Percent
FROM Aircraft_Incidents;


-- Q6. Incidents by Aircraft Manufacturer.

SELECT Aircraft_Manufacturer, COUNT(*) AS Incident_Count
FROM Aircraft_Incidents
GROUP BY Aircraft_Manufacturer
ORDER BY Incident_Count DESC;


-- Q7. Fatal Incidents vs. Non-Fatal Incidents.

SELECT 
    CASE WHEN Fatalities_Air > 0 THEN 'Fatal' ELSE 'Non-Fatal' END AS Incident_Type,
    COUNT(*) AS Count
FROM Aircraft_Incidents
GROUP BY Incident_Type;


-- Q8. Aircraft Types with Highest Fatalities.

SELECT Aircraft, SUM(Fatalities_Air) AS Total_Fatalities
FROM Aircraft_Incidents
GROUP BY Aircraft
ORDER BY Total_Fatalities DESC;


-- Q9. Top 10 Locations with Highest Fatalities.

SELECT Location, SUM(Fatalities_Air) AS Total_Fatalities
FROM Aircraft_Incidents
GROUP BY Location
ORDER BY Total_Fatalities DESC
LIMIT 10;


-- Q10. Most Dangerous Months Across All Years.

SELECT Month, COUNT(*) AS Incident_Count
FROM Aircraft_Incidents
GROUP BY Month
ORDER BY Incident_Count DESC;


-- Q11. Average Survivors Per Incident.

SELECT ROUND(AVG(Aboard - Fatalities_Air), 2) AS Avg_Survivors
FROM Aircraft_Incidents;


-- Q12. Aircraft Manufacturers with 100% Fatal Incidents.

SELECT Aircraft_Manufacturer, COUNT(*) AS Incident_Count
FROM Aircraft_Incidents
WHERE Fatalities_Air = Aboard AND Aboard > 0
GROUP BY Aircraft_Manufacturer
ORDER BY Incident_Count DESC;


-- Q13. Country-Wise Survival Rate.

SELECT Country_Region,
       ROUND(SUM(Aboard - Fatalities_Air) * 100.0 / NULLIF(SUM(Aboard), 0), 2) AS Survival_Rate
FROM Aircraft_Incidents
GROUP BY Country_Region
ORDER BY Survival_Rate DESC;


-- Q14. Airlines with Increasing Incident Trends.

SELECT Operator, Year, COUNT(*) AS Incidents
FROM Aircraft_Incidents
GROUP BY Operator, Year
HAVING COUNT(*) > 1
ORDER BY Operator, Year;


-- Q15. Locations with Repeated Incidents.

SELECT Location, COUNT(*) AS Incident_Count
FROM Aircraft_Incidents
GROUP BY Location
HAVING COUNT(*) > 1
ORDER BY Incident_Count DESC;


-- Q16. Country vs. Aircraft Manufacturer Matrix.

SELECT Country_Region, Aircraft_Manufacturer, COUNT(*) AS Incident_Count
FROM Aircraft_Incidents
GROUP BY Country_Region, Aircraft_Manufacturer
ORDER BY Country_Region, Incident_Count DESC;


-- Q17. Survivability Ranking by Operator.

SELECT Operator, 
       ROUND(SUM(Aboard - Fatalities_Air) * 100.0 / NULLIF(SUM(Aboard), 0), 2) AS Survival_Rate
FROM Aircraft_Incidents
GROUP BY Operator
HAVING SUM(Aboard) > 0
ORDER BY Survival_Rate DESC;



-- END --
