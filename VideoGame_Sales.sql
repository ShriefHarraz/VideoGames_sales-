select * from [dbo].[videogane_sales]

select distinct Publisher from [dbo].[videogane_sales]
select distinct name from [dbo].[videogane_sales]
select distinct Platform from [dbo].[videogane_sales]
select distinct Year from [dbo].[videogane_sales]  order by year  --1980 - 2020 --

alter table  [dbo].[videogane_sales]
drop column Rank 

---- Q1 what is the top 10 games in North America from 1980 to 2020 in millions ---

SELECT Top 10 NAME , Platform, year, Genre, NA_Sales
FROM [dbo].[videogane_sales]
ORDER BY NA_Sales dESC

---- Q2 what is the top 10 games in EU from 1980 to 2020 in millions ---

SELECT Top 10 NAME , Platform, year, Genre, EU_Sales
FROM [dbo].[videogane_sales]
ORDER BY EU_Sales dESC

---- Q3 what is the top 10 games in Japan from 1980 to 2020 in millions ---

SELECT Top 10 NAME , Platform, year, Genre, JP_Sales
FROM [dbo].[videogane_sales]
ORDER BY JP_Sales dESC

---- Q4 what is the top 10 games in Other countries from 1980 to 2020 in millions ---

SELECT Top 10 NAME , Platform, year, Genre, Other_Sales
FROM [dbo].[videogane_sales]
ORDER BY Other_Sales dESC

---- Q5 what is the top 10 games worldwide from 1980 to 2020 in millions ---

SELECT Top 10 NAME , Platform, year, Genre, Global_Sales
FROM [dbo].[videogane_sales]
ORDER BY Global_Sales dESC

----- Q6 What is the top 10 platforms from 1980 to 2020 in millions ----

select Platform, round(sum(global_sales),0) TotalGlobalSales, round(sum(EU_Sales),0) TotalEUSales
from [dbo].[videogane_sales]
group by Platform
order by sum(global_sales)desc,sum(EU_SALES) desc

---  Q7 what is the most year for selling video games from 1980 to 2020 in millions ----

select year, round(sum(global_sales),2) TotalGlobalSales
from [dbo].[videogane_sales]
group by year
order by sum(global_sales) desc

--- Q8 what is the most genre people are selling from 1980 to 2020 in millions ----

select Genre, round(sum(global_sales),0) TotalGlobalSales
from [dbo].[videogane_sales]
group by Genre
order by sum(global_sales) desc

--- Q9 what is the most Publisher sold video games from 1980 to 2020 in millions ----

select  Publisher, round(sum(global_sales),0) TotalGlobalSales
from [dbo].[videogane_sales]
group by Publisher
order by sum(global_sales) desc




