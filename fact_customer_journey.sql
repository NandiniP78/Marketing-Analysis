select * from customer_journey;

select distinct Stage from customer_journey;

select distinct Action from customer_journey;

-- Number of records having null Duration vlaue
select count(*)
from customer_journey
where Duration is null;  --613

-- Checking duplicates by grouping the records by JourneyID(As it should be unique for each record) and filtering to records that has same JourneyIDs
select JourneyID, count(*)
from customer_journey
group by JourneyID
having count(*) > 1
order by JourneyID;

-- Looking at some of the duplicates
select *
from customer_journey
where JourneyID in (23,687,3232)
order by JourneyID;

-- Identifying duplicates using CTE
with duplicates as (
        select *,
               ROW_NUMBER() OVER(
                            PARTITION BY CustomerID,ProductID,VisitDate,Stage,Action 
                            ORDER BY JourneyID) as row_num
        from customer_journey
)
select *
from duplicates
where duplicates.row_num > 1
order by JourneyID;

-- Filtering duplicates and replacing nulls in Duration with Average of duration
with cte as (
    select 
        JourneyID,
        CustomerID,
        ProductID,
        FORMAT(CONVERT(DATE, VisitDate), 'dd.MM.yyyy') AS VisitDate,  --Changing date format to keep it consistent with other table
        UPPER(Stage) as Stage,
        Action,
        Duration,
        AVG(Duration) OVER(PARTITION BY VisitDate) as AvgDuration, -- Average duration for each day
        ROW_NUMBER() OVER (
                    PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action  -- Groups by these columns to identify duplicate records
                    ORDER BY JourneyID  -- Orders by JourneyID to keep the first occurrence of each duplicate
                ) as row_num  -- Assigns a row number to each row within the partition to identify duplicates
      from customer_journey
)
select
    JourneyID,
     CustomerID,
     ProductID,
     VisitDate,
     Stage,
     Action,
     COALESCE(Duration, ROUND(AvgDuration,0)) AS Duration
from cte
where row_num = 1 and Duration is null
order by JourneyID;
         


        
