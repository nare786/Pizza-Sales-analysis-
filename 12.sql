# ANALYZE CUMULATIVE REVENUE GENERATED OVER TIME

select order_date,round(sum(total_revenue)over (partition by order_date ),2) as cum_revenue
from

(SELECT orders.order_date,
sum(orders_details.quantity*pizzas.price) as total_revenue
from orders_details join pizzas on
orders_details.pizza_id =pizzas.pizza_id
join orders on orders.order_id = orders_details.order_id 
group by orders.order_date ) as sales;