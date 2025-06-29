      -- DATA CLEANING --


-- 1. Detecting Duplicates.

SELECT 
    *, COUNT(*)
FROM
    Aircraft_Incidents
GROUP BY Year , Quarter , Month , Day , Country_Region , Aircraft_Manufacturer , Aircraft , Location , Operator , Ground , Fatalities_air , Aboard
HAVING COUNT(*) > 1;


-- 2. Detecting and Deleting Garbage Values

SELECT *
FROM aircraft_incidents
WHERE
    Country_Region REGEXP '[^a-zA-Z0-9 ,.-]'
    OR Aircraft REGEXP '[^a-zA-Z0-9 ,.-]'
    OR Aircraft_Manufacturer REGEXP '[^a-zA-Z0-9 ,.-]'
    OR Location REGEXP '[^a-zA-Z0-9 ,.-]';


       -- END --