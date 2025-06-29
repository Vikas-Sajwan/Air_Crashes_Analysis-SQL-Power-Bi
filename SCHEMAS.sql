-- Aircraft Incidents ANALYSIS SCHEMAS

CREATE DATABASE air_crashes;
USE air_crashes;


DROP TABLE IF EXISTS Aircraft_Incidents;


CREATE TABLE Aircraft_Incidents 
(
    Year INT NOT NULL ,
    Quarter VARCHAR(15) NOT NULL,
    Month VARCHAR(20) NOT NULL,
    Day TINYINT NOT NULL ,
    Country_Region VARCHAR(100),
    Aircraft_Manufacturer VARCHAR(100),
    Aircraft VARCHAR(100),
    Location VARCHAR(150),
    Operator VARCHAR(100),
    Ground INT,
    Fatalities_Air INT,
    Aboard INT								
);


  -- END OF SCHEMAS --