select 
user_id,
id as order_id,
amount
from "RAW"."JAFFLE_SHOP"."ORDERS" a
left join (
select sum(amount) as amount ,orderid from "RAW"."STRIPE"."PAYMENT"
group by orderid) b on a.id=b.orderid