# DETERMINE THE TOP 3 PIZZA BASED ON REVENUE

select pizza_types.name,
sum(orders_details.quantity * pizzas.price)
as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details on
orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.name
order by revenue desc limit 3 ;

