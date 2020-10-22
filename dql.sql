select * from customer ;


select product_name and category from products where price  5000 <> 10000;

select * from product ORDER by price DESC;


select count(*) AVG(total_amount) max(total_amount) min(total_amount) from orders ORDER BY product_id;


select customer_id from orders 
GROUP BY customer_id 
HAVING count(*)>2;


select count(*) from orders
where year(order_date)=2020
order by month(order_date);


select p.product_id
 p.product_name 
 c.customer_id 
 c.customer_name 
 o.order_date 
 from orders o

 INNER JOIN (
     customer c on c.customer_id = o.customer_id
     product p  on p.product_id = o.product_id
 )



 select (*) from orders where order_date = DATEADD(MONTH, -3, GETDATE()) 


 select customer_id  from orders
  where not exists
( select * from orders as o
   where c.customer_id = o.customer_id)




