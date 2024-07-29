#Podkladová tabulka pro otázku č. 5:
CREATE OR REPLACE TABLE t_jitka_ticha_project_sql_secondary_final AS
SELECT e.country, e.year, e.GDP, e.population, e.GINI
FROM economies e 
JOIN countries c ON e.country = c.country
WHERE c.continent = 'Europe' AND e.year BETWEEN 2006 AND 2018
ORDER BY e.country, e.year;
