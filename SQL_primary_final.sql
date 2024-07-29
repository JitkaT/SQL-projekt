#Sumarizace vstupních dat czechia_payroll_comp a average_prices:
CREATE TABLE t_jitka_ticha_project_SQL_primary_final AS 
SELECT *
FROM czechia_payroll_comp AS cpc
JOIN average_prices AS ap
ON cpc.payroll_year = ap.date;
