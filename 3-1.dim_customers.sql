-- Deviding customers into age buckets ('Young','Middle-aged','Old-aged')
select max(Age),min(Age) from customers;  -- max=69, min=18

select *,
		case when Age between 18 and 30 then 'Young'
			 when Age between 31 and 45 then 'Middle-aged'
			 else 'Old-aged'
		end as AgeCategory
from customers;

select c.CustomerID,  
    c.CustomerName,  
    c.Email, 
    c.Gender,  
    c.Age,
    g.Country, 
    g.City
from customers c
join geography g
on c.GeographyID = g.GeographyID;
