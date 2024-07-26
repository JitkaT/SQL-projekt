SELECT *
FROM czechia_price_category cpc 
WHERE lower(name) like lower('%mléko%') or lower(name) like lower('%chléb%');

SELECT min(date_from), max(date_from)
FROM czechia_price cp; 

CREATE OR REPLACE VIEW average_prices AS 
SELECT YEAR(cp.date_from) AS date, cp.category_code, cpc.name AS product_name, cp.value, cpc.price_value, cpc.price_unit
FROM czechia_price cp 
JOIN czechia_price_category cpc ON cpc.code = cp.category_code 
WHERE region_code IS NULL
GROUP BY cp.category_code, year(cp.date_from) ;

SELECT ap.category_code, ap.product_name, ap.date, round(avg(cpc.gross_value)/ap.value, 2), ap.price_unit
FROM average_prices ap 
JOIN czechia_payroll_comp cpc ON cpc.payroll_year = ap.date
WHERE category_code IN (111301, 114201) AND date IN (2006, 2018)
GROUP BY category_code, date;
