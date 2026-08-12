-- Databricks notebook source
USE brighttv.brighttvanalysis; --- code to select the catalog and the schema 

SELECT * 
FROM userprofiles; --- running userprofiles data table 

SELECT *
FROM viewership; ---- running the full viewership data table 

SELECT distinct Gender
FROM userprofiles; ---------- running users' gender checks 

SELECT DISTINCT ---- replacing None and blank values in the gender data
    CASE
        WHEN Gender = 'None' THEN 'Unknown'
        WHEN Gender = ' ' THEN 'Unknown'
    ELSE Gender 
    END AS Sex
FROM userprofiles;       

SELECT DISTINCT Race ----- running race checks 
FROM userprofiles; 

SELECT DISTINCT 
    CASE 
        WHEN Race = 'other' THEN 'Unknown'
        WHEN Race = 'None' THEN 'Unknown'
        WHEN Race = ' ' THEN 'Unknown'
       ELSE Race 
       END AS `Racial Categories`
FROM userprofiles;         


