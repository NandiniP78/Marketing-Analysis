select * from products;

-- Dividing the Price column in 3 buckets ('Low','Medium','High')
select *,
		case when Price < 50 then 'Low'
			 when Price between 50 and 200 then 'Medium'
			 else 'High'
		end as ProductCategory
from products;

