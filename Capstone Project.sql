use classicmodels;

-- 1.1 Total orders monthwise
select monthname(orderdate) as Month, 
count(ordernumber) as Total_Orders from orders
group by 1;

-- 1.2 Total orders year wise
select year(orderdate) year, month(orderdate) month, 
count(ordernumber) Total_Orders
from orders
group by 1,2 order by 1,2;

-- 2. Total shipped orders vs failed
with cte as (
select *, case 
			when status = 'Shipped' then 1
            else 0
            end as successful_order
from orders
)
select round(sum(successful_order)/count(*)*100,2) as shipped_order_rate
from cte;

-- 3. Date range
select min(orderdate), max(orderdate) from orders;

-- 4. Total Sales by Status
select status, count(distinct ordernumber) as total_orders, round(sum(sale_amount)) as total_sales from (
select a.ordernumber, a.productcode, quantityordered*priceeach as sale_amount, status from orderdetails a
inner join orders b on a.ordernumber = b.ordernumber
group by 1,2) x
group by 1 order by 3 desc;

-- 5. Total Sales by year
select year(orderdate) year, round(sum(quantityordered*priceeach)) as total_sales 
from orders
inner join orderdetails using (ordernumber)
group by 1;

-- 6. Total Orders and Sales for each productLine
select productline, count(ordernumber) as total_orders, 
round(sum(quantityordered*priceeach)) as total_sales 
from orderdetails
inner join orders using(ordernumber)
inner join products using(productcode)
where status = 'Shipped'
group by 1 order by 3 desc;

-- 7. Total Orders and Total Sales for each productline yearwise and overall
with cte as(
select year(orderdate) as year, productline, count(ordernumber) as annual_orders, 
round(sum(quantityordered*priceeach)) as annual_sales
from orderdetails
inner join orders using(ordernumber)
inner join products using(productcode)
where status = 'Shipped'
group by 1,2
)
select *, sum(annual_orders) over (partition by productline) as total_orders,
sum(annual_sales) over (partition by productline) as total_sales 
from cte
order by 1;

-- 8. Unique Customer transactions per year
select year(orderdate) as year, 
count(distinct customernumber) as unique_customer, 
count(ordernumber) as total_orders
from orders
group by 1;

-- 9. New customers over the years
with cte1 as (
select distinct year(orderdate) year from orders
),
cte2 as (
select year(first_order) year, count(customernumber) as new_customers_count from (
select customernumber, min(orderdate) as first_order from orders 
group by 1) x
group by 1
)
select * from cte1
left join cte2 using(year);

