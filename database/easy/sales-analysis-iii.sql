select pro.product_id , pro.product_name
from Sales sa
join Product pro
on sa.product_id = pro.product_id
group by pro.product_id , pro.product_name
having max(sa.sale_date) <= "2019-03-31"
and min(sa.sale_date) >= "2019-01-01"