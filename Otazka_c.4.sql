CREATE OR REPLACE VIEW total_avg_wages_food_price AS 
SELECT cpg.payroll_year, round(avg(cpg.gross_value_growth),2) AS average_wages,round(avg(pg.price_growth),2) AS average_food_price,
CASE WHEN round(avg(pg.price_growth),2) - round(avg(cpg.gross_value_growth),2) > 10 THEN 'Food price increase is more than 10 % above the salary increase' ELSE 'Does not meet 10 % increase'
END AS difference
FROM czechia_payroll_growth cpg 
JOIN price_growth pg ON pg.date = cpg.payroll_year 
GROUP BY cpg.payroll_year;
