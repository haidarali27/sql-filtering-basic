-- belajar grouping by di SQL
select * from title_medals;
select nation, sum (medals) as total_medals from title_medals group by nation;

-- belajar grouping by with multiple columns
select nation, cabor, sum (medals) as total_medals from title_medals group by nation, cabor;

-- belajar grouping by with multiple columns by having clause
select nation, cabor, sum (medals) as total_medals from title_medals group by nation, cabor having sum(medals) > 6;