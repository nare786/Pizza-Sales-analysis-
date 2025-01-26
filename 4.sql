# IDENTITY THE MOST COMMON PIZZA SIZE ORDERED

select pizzas.size,
count(orders_details.order_details_id)
as order_count
from pizzas join orders_details on pizzas.pizza_id = orders_details.pizza_id
group by pizzas.size
order by order_count desc limit 1;