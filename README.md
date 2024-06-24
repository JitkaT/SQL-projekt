# SQL-projekt
Výzkumné otázky + odpovědi (SQL statementy použité pro vypracování níže uvedných úkolů jsou uloženy jako sql soubory: "Otázka č.1 - 5").
Všechny finální výstupy z SQL statements byly převedeny do csv a uloženy do přiloženého excel souboru "Comments".

# 1. Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají? 
Mzdy ve všech odvětvích v průběhu let převážně rostou, ale najdeme zde pár výjimek (pokles mezd ve srovnání s předešlým oddobím ve stejném odvětví).
Tyto výjimky jsou uvedeny v přiloženém excel souboru, list "Otázka č. 1", filter na sloupci: "result comment" - "decrease".

# 2. Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
První srovnatelné období je 2006, poslední srovnatelné období je 2018.
V roce 2006 bylo možné si za průměrnou mzdu koupit 1 172 kg chleba a 1 413 litrů mléka.
V roce 2018 bylo potom možné si za průměrnou mzdu koupit 1 292 kg chleba a 1 574 litrů mléka.
Shrnutí je uloženo v excel souboru, list "Otázka č. 2".

# 3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
Z celkového přehledu zdražování potravin mezi roky 2006 až 2018 se za celé toto sledované období nejméně zvyšovala cena krystalového cukru.
Nejnižší procentuální nárůst se týká jablek konzumních mezi roky 2009 a 2008.
Viz excel soubor, list "Otázka č. 3".

# 4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
Ve sledovaném období nebyl meziroční nárůst cen potravin o 10 % vyšší než růst mezd.

# 5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?
V případě výraznějšího růstu HDP (v tomto případě považujeme za výraznější růst HDP hodnotu 5 %), se tento jev ne vždy promítne do zvýšení cen potravin či do růstu mezd. Nedá se tedy říci, že mezi výraznějším nárůstm HDP, růstem cen potravin a růstem mezd existuje korelace.
