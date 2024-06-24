SELECT my.country, my.YEAR, my2.YEAR AS previous_year, round((my.GDP - my2.GDP)/my2.GDP * 100,2) AS GDP_growth, tawfd.average_wages, tawfd.average_food_price
FROM t_jitka_ticha_project_sql_secondary_final AS my
JOIN t_jitka_ticha_project_sql_secondary_final AS my2
ON my.country = my2.country AND my.YEAR = my2.YEAR + 1
JOIN total_avg_wages_food_price tawfd ON tawfd.payroll_year = my.year
WHERE my.country = 'Czech Republic'
GROUP BY my.year;
