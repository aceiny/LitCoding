select pro.product_name , sa.year , sa.price
from Sales sa 
left join Product pro 
on sa.product_id = pro.product_id
