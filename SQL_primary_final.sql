#Sumarizace vstupních dat pro otázky č. 1 až 5 do jednoho zdroje:
CREATE TABLE t_jitka_ticha_project_SQL_primary_final AS 
SELECT *
FROM czechia_payroll_comp AS cpc
JOIN average_prices AS ap
ON cpc.payroll_year = ap.date;
