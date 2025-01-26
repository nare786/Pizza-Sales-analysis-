# DETERMINE THE DISTRIBUTION OF ORDER BY HOUR OF THE DAY

select * from orders;

select hour(order_time),count(order_id) as order_count
from orders group by
hour(order_time);