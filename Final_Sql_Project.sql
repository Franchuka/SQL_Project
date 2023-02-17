
select * from transportation_statistics 
-- select * from sales
-- 

-- SELECT MAX(public_transportation_pct), MIN(public_transportation_pct) 
-- FROM transportation_statistics

-- DELETE FROM transportation_statistics
-- WHERE public_transportation_pct < 0

-- -- QUESTION 3
-- SELECT MAX(public_transportation_pct), MIN(public_transportation_pct) 
-- FROM transportation_statistics

-- -- QUESTION 4
-- low public transport regions
-- SELECT 
--     AVG(sales_amount) AS average_sales
-- FROM transportation_statistics t 
--     INNER JOIN customers c 
--         ON t.zip_code = c.postal_code 
--     INNER JOIN sales s 
--         USING (customer_id)
-- WHERE public_transportation_pct  <= 10
--  high public transport regions

-- SELECT 
--     AVG(sales_amount) AS average_sales
-- FROM transportation_statistics t 
--     INNER JOIN customers c 
--         ON t.zip_code = c.postal_code 
--     INNER JOIN sales s 
--         USING (customer_id)
-- WHERE public_transportation_pct  > 10
 

-- ALTER TABLE transportation_statistics
-- ADD COLUMN region_density text
-- UPDATE transportation_statistics AS t
-- SET region_density = 
-- CASE 
-- WHEN public_transportation_pct  > 10 THEN 'high'
-- ELSE 'low'
-- END
-- WHERE public_transportation_pct BETWEEN 0 AND 100


-- SELECT zip_code, AVG(sales_amount) :: integer
-- FROM transportation_statistics t 
-- INNER JOIN customers c ON t.zip_code = c.postal_code 
-- INNER JOIN sales s USING (customer_id)
-- GROUP BY zip_code, region_density
-- having region_density = 'low'

-- SELECT zip_code, AVG(sales_amount) :: integer
-- FROM transportation_statistics t 
-- INNER JOIN customers c ON t.zip_code = c.postal_code 
-- INNER JOIN sales s USING (customer_id)
-- GROUP BY zip_code, region_density
-- having region_density = 'high'


-- -- Question 7
-- SELECT  
--         zip_code,
--         ROUND(CAST(public_transportation_pct AS numeric), -1) as public_transportation_pct,
--         customer_id, 
--         AVG(sales_amount) as average_sales_per_customer
-- FROM transportation_statistics t 
--     INNER JOIN customers c ON t.zip_code = c.postal_code 
--     INNER JOIN sales s USING (customer_id)
-- GROUP BY 
--         zip_code, customer_id,  
--         ROUND(CAST(public_transportation_pct AS numeric), -1)

-- -- EXTRA ANALYSIS
-- -- To determine and categorise which zip code belongs to which state
-- -- Then analysing the data groueed by states and visualizing it on python
-- ALTER TABLE transportation_statistics 
--  ALTER COLUMN zip_code TYPE numeric
--  USING zip_code:: numeric

-- ALTER TABLE transportation_statistics
-- ADD COLUMN state text
 
-- UPDATE transportation_statistics AS t
-- SET state = 
--     CASE
--         when zip_code between 0 and 999 then 'PR'
--         when zip_code between 1000 and 2799 then 'MA'
--         WHEN zip_code between 2800 and 2999 THEN 'RI'
--         WHEN zip_code between 3000 and 3899 THEN 'NH'
--         WHEN zip_code between 3900 and 4999 THEN 'ME'
--         WHEN zip_code between 5000 and 5999 THEN 'VT'
--         WHEN zip_code between 6000 and 6999 THEN 'CT'
--         WHEN zip_code between 7000 and 8999 THEN 'NJ'
--         WHEN zip_code between 9000 and 9999 THEN 'AE'
--         WHEN zip_code between 10000 and 14999 THEN 'NY'
--         WHEN zip_code between 15000 and 19699 THEN 'PA'
--         WHEN zip_code between 19700 and 19999 THEN 'DE'
--         WHEN zip_code between 20000 and 20099 THEN 'DC'
--         WHEN zip_code between 20100 and 20199 THEN 'VA'
--         WHEN zip_code between 20200 and 20599 THEN 'DC'
--         WHEN zip_code between 20600 and 21999 THEN 'MD'
--         WHEN zip_code between 22000 and 24699 THEN 'VA'
--         WHEN zip_code between 24700 and 26899 THEN 'WV'
--         WHEN zip_code between 27000 and 28999 THEN 'NC'
--         WHEN zip_code between 29000 and 29999 THEN 'SC'
--         WHEN zip_code between 30000 and 31999 THEN 'GA'
--         WHEN zip_code between 32000 and 34999 THEN 'FL'
--         WHEN zip_code between 35000 and 36999 THEN 'AL'
--         WHEN zip_code between 37000 and 38599 THEN 'TN'
--         WHEN zip_code between 38600 and 39799 THEN 'MS'
--         WHEN zip_code between 39800 and 39999 THEN 'GA'
--         WHEN zip_code between 40000 and 42799 THEN 'KY'
--         WHEN zip_code between 43000 and 45999 THEN 'OH'
--         WHEN zip_code between 46000 and 47999 THEN 'IN'
--         WHEN zip_code between 48000 and 49999 THEN 'MI'
--         WHEN zip_code between 50000 and 52899 THEN 'IA'
--         WHEN zip_code between 53000 and 54999 THEN 'WI'
--         WHEN zip_code between 55000 and 56799 THEN 'MN'
--         WHEN zip_code between 56900 and 56999 THEN 'DC'
--         WHEN zip_code between 57000 and 57999 THEN 'SD'
--         WHEN zip_code between 58000 and 58999 THEN 'ND'
--         WHEN zip_code between 59000 and 59999 THEN 'MT'
--         WHEN zip_code between 60000 and 62999 THEN 'IL'
--         WHEN zip_code between 63000 and 65999 THEN 'MO'
--         WHEN zip_code between 66000 and 67999 THEN 'KS'
--         WHEN zip_code between 68000 and 69400 THEN 'NE'
--         WHEN zip_code between 70000 and 71500 THEN 'LA'
--         WHEN zip_code between 71600 and 72999 THEN 'AR'
--         WHEN zip_code between 73000 and 74999 THEN 'OK'
--         WHEN zip_code between 75000 and 79999 THEN 'TX'
--         WHEN zip_code between 80000 and 81999 THEN 'CO'
--         WHEN zip_code between 82000 and 83199 THEN 'WY'
--         WHEN zip_code between 83200 and 83999 THEN 'ID'
--         WHEN zip_code between 84000 and 84899 THEN 'UT'
--         WHEN zip_code between 85000 and 86900 THEN 'AZ'
--         WHEN zip_code between 87000 and 88499 THEN 'NM'
--         WHEN zip_code between 88500 and 88599 THEN 'TX'
--         WHEN zip_code between 88900 and 89900 THEN 'NV'
--         WHEN zip_code between 90000 and 96200 THEN 'CA'
--         WHEN zip_code between 96700 and 96899 THEN 'HI'
--         WHEN zip_code between 96900 and 96999 THEN 'GU'
--         WHEN zip_code between 97000 and 97999 THEN 'OR'
--         WHEN zip_code between 98000 and 99499 THEN 'WA'
--         WHEN zip_code between 99500 and 99999 THEN 'AK'
--         ELSE 'No_state'
--     END
-- WHERE zip_code between 0 and 100000

--  ALTER TABLE transportation_statistics 
--  ALTER COLUMN zip_code TYPE text
--  USING zip_code:: text

-- SELECT 
--     t.state, 
--     SUM(public_transportation_population) as transportation_population, 
--     SUM(sales_amount) :: integer as total_sales
-- FROM transportation_statistics t 
-- INNER JOIN customers c ON t.zip_code = c.postal_code 
-- INNER JOIN sales s USING (customer_id)
-- GROUP BY t.state





