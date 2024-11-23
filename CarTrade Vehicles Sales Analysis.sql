-- Read Cars data
select * 
from CarTrade;

-- Find the total number of vehicles in the CarTrade table.

select count(*) as total_vehicle
from CarTrade;

-- Find the total number of vehicles in the CarTrade table for the year 2023.

select count(*) as total_vehicles
from CarTrade
where year=2023;


-- find the total number of vehicles grouped by year for the years 2020, 2021, and 2022.

select count(*) as total_vehiclesfrom CarTradewhere year=2020;

select count(*) as total_vehiclesfrom CarTradewhere year=2021;

select count(*) as total_vehiclesfrom CarTradewhere year=2022;


-- Using Group By

select year,count(*) as total_vehicles
from CarTrade
where year in (2020, 2021, 2022)
group by year;

 -- find the total number of vehicles grouped by year for all years in the CarTrade table.

select year,count(*) as total_vehicles
from CarTrade 
group by year;


-- Find the total number of diesel vehicles in the year 2020 in the CarTrade table.

select year,count(*) as total_vehicles
from CarTrade
where year= 2020 and fuel = 'Diesel'
group by year;


-- Find the total number of petrol vehicles in the year 2020 in the CarTrade table.

select year,count(*) as total_vehicles 
from CarTrade
where year= 2020 and fuel = 'Petrol'
group by year;


-- Find the total number of vehicles grouped by fuel and year for Petrol, Diesel, and CNG, and order the result by year in ascending order.

select 
    fuel, 
    year, 
    count(*) as total_vehicles
from CarTrade
where fuel in ('Petrol', 'Diesel', 'CNG')
group by year, fuel
order by year asc;


-- Find the total number of vehicles grouped by year where the count of vehicles is greater than 100.

select year,count(*) as total_vehicle
from CarTrade
group by year 
having count (*) >100;


-- Find the total number of vehicles in the CarTrade table for the years between 2015 and 2023.

select count(*) as total_vehicle 
from CarTrade
where year between 2015 and 2023;


-- Select all data from the CarTrade table for the years between 2015 and 2023.

select *
from CarTrade
where year between 2015 and 2023;


-- Find the total number of vehicles and total selling price grouped by seller_type and year for Petrol, Diesel, and CNG, ordered by year and seller_type in ascending order.

select 
    seller_type, 
    year, 
    count(*) as total_vehicles, 
    sum(selling_price) as total_price
from CarTrade
where fuel in ('Petrol', 'Diesel', 'CNG')
group by seller_type, year
order by year asc, seller_type;

