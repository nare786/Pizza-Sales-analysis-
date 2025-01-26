# CALCULATE THE TOTAL REVENUE GENERATED FORM PIZZA SALES

SELECT 
    ROUND(SUM(orders_details.quantity * pizzas.price),
            2) AS total_sale
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id
