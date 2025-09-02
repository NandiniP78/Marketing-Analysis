select * from customer_reviews; 
--There are some double spaces in the ReviewText, replacing it with a single space

select ReviewID,
		CustomerID,
		ProductID,
		ReviewDate,
		Rating,
		REPLACE(ReviewText, '  ', ' ') as ReviewText
from customer_reviews;

EXEC sp_help 'customer_reviews';

 

