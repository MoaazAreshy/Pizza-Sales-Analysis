select * from pizza_sales
select sum(quantity*unit_price) as Total_Revenue from pizza_sales

select sum(total_price) / count(distinct(order_id)) as Average_Order_Value from pizza_sales

select sum (quantity) as Total_Pizzas_Sold from pizza_sales

select count (Distinct (order_id)) as Total_Orders from pizza_sales

select sum(quantity)/count(distinct(order_id)) from pizza_sales
/*انا هنا عايز اظهر المتوسط كامل لو في جزء من عشرة يظهر */

select cast (cast(sum(quantity) as decimal(10,2)) /
cast (count(distinct order_id ) as decimal (10,2)) as decimal (10,2)) as Avg_Pizzas_Per_Orders from pizza_sales

select DATENAME(DW,order_date) as Order_Day , count(distinct order_id ) as Total_Orders from pizza_sales group by 
DATENAME(DW,order_date) ;

select DATENAME(month,order_date) as Month_Name , count(distinct order_id) as Total_Orders from pizza_sales group by
DATENAME(month,order_date) order by Total_Orders desc ;


select pizza_category , sum(total_price) * 100 / (select sum(total_price) from pizza_sales ) as Per_Total_Sales
from pizza_sales group by  pizza_category

select pizza_category , sum(total_price) as Total_Sales , sum(total_price) * 100 / (select sum(total_price) from pizza_sales ) as Per_Total_Sales
from pizza_sales
where Month(order_date) = 1 
group by  pizza_category


select * from pizza_sales

select pizza_size , cast ( sum(total_price) as DECIMAl (10,2)) as Total_Sales , cast( sum(total_price)*100 /(select sum(total_price) from 
pizza_sales) as decimal(10,2)) as Perc from pizza_sales  group by pizza_size
order by Perc desc ;


select pizza_size , cast ( sum(total_price) as DECIMAl (10,2)) as Total_Sales , cast( sum(total_price)*100 /(select sum(total_price) from 
pizza_sales where DATEPART(quarter,order_date)=1 ) as decimal(10,2)) as Perc from pizza_sales 
where DATEPART(quarter,order_date)=1
group by pizza_size
order by Perc desc ;


select top 5 pizza_name , sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name 
order by Total_Revenue desc

select top 5 pizza_name , sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name 
order by Total_Revenue asc


select top 5 pizza_name , sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name 
order by Total_Quantity desc


select top 5 pizza_name , sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name 
order by Total_Quantity asc

select top 5 pizza_name , count(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name 
order by Total_Orders desc

select top 5 pizza_name , count(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name 
order by Total_Orders asc



