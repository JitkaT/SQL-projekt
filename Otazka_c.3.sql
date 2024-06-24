CREATE OR REPLACE VIEW price_growth AS 
SELECT ap.product_name, ap.date, ap2.date AS prev_year, round((ap.value - ap2.value)/ap2.value * 100) AS price_growth
FROM average_prices ap
JOIN average_prices ap2 ON ap.product_name = ap2.product_name 
AND ap.date = ap2.date +1;
