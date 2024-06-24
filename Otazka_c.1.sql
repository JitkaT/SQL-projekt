CREATE OR REPLACE VIEW czechia_payroll_comp AS 
SELECT cp.industry_branch_code, cpib.name, cp.payroll_year, round(avg(cp.value)) AS gross_value
FROM czechia_payroll cp  
JOIN czechia_payroll cp2 ON cp.industry_branch_code = cp2.industry_branch_code 
JOIN czechia_payroll_industry_branch cpib ON cpib.code = cp.industry_branch_code
AND cp.payroll_year = cp2.payroll_year + 1
WHERE cp.value_type_code = 5958 AND cp.calculation_code = 100
GROUP BY cp.payroll_year, cpib.name
ORDER BY cp.industry_branch_code, cp.payroll_year;

CREATE OR REPLACE VIEW czechia_payroll_growth AS 
SELECT cpc.industry_branch_code, cpc.name, cpc.payroll_year, cpc2.payroll_year AS previous_year, round((cpc.gross_value-cpc2.gross_value)/cpc2.gross_value * 100, 2) AS gross_value_growth,
CASE WHEN round((cpc.gross_value-cpc2.gross_value)/cpc2.gross_value * 100, 2) > 0 THEN "increase" ELSE "decrease" END AS result_comment
FROM czechia_payroll_comp cpc 
JOIN czechia_payroll_comp cpc2 
ON cpc.name = cpc2.name AND cpc.payroll_year = cpc2.payroll_year + 1
GROUP BY industry_branch_code, payroll_year; 

