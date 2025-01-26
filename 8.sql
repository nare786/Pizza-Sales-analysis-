#JOIN THE RELEVENT TABLES TO FIND THE CATEGORY WISE DISTRIBUTION OF PIZZA

select category,count(name) as cat
from pizza_types 
group by category;