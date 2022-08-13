-- 1
CREATE TABLE world_population (
  ID INTEGER,
  country VARCHAR,
  area INTEGER,
  population INTEGER,
  population_growth float,
  birth_rate float,
  death_rate float,
  migration_rate float
 );
 
COPY world_population FROM 'E:\Track\Resources\5. SQL Data Analysis\SQL Data Analysis for Real Life Projects\2\World Population.csv' DELIMITER ',' CSV HEADER null '';
-- drop table world_population; if needed
select * from world_population;

-- 2 Which country has the most people?
select country, population 
FROM World_Population 
where population > 0
order by population desc 
limit 1;



select country,population from world_Population
order by population DESC 
limit 1;

-- 3 Which country has the highest growth rate?
select country, population_growth
from World_Population
where population_growth > 0
order by population_growth desc 
limit 1;

select country,population_growth from world_Population
order by population_growth DESC 
limit 1;



-- 4 Which countries will add the most people to their
populations next year?
select country, migration_rate
from World_Population
where migration_rate > 0
order by migration_rate desc 
limit 20;

select country,migration_rate from world_Population
order by migration_rate DESC ;



-- 5 Which countries have a higher death rate than birth rate?
select country, death_rate , birth_rate 
from World_Population
where death_rate > birth_rate 
and death_rate > 0 and birth_rate > 0
order by death_rate desc
limit 20;


select country,death_rate , birth_rate from world_Population
where death_rate >birth_rate
order by death_rate DESC ;




-- 6 Which countries have the highest Population density
select country, max (CAST(population AS Float) / CAST(area AS Float))
FROM World_Population 
where area > 0 
and population > 0
group by country 
order by max desc; 






select country, population / area as population_density from world_Population
where area <> 0
order by population_density DESC ;













