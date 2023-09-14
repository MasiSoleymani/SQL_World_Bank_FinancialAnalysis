SELECT * FROM IDA_Data.ida_new;

    --  Transaction volume per-country 
    SELECT
    country,
    COUNT(`Credit Status`) as `Number of Transactions`
FROM
    `IDA_Data`.`ida_new`
GROUP BY
    country;

   -- Total number of transactions performed by IDA
   
    SELECT COUNT(*) AS `Total Transactions`
FROM `IDA_Data`.`ida_new`;

-- -Countries with the highest and lowest loan frequencies  
SELECT
    country,
    COUNT(`Credit Status`) as `Number of Transactions`
FROM
    `IDA_Data`.`ida_new`
GROUP BY
    country
ORDER by 
    `Number of Transactions` DESC;
    
-- India's key borrowing entities, and credit status details 

SELECT 
country, 
borrower, 
'Credit Status'
FROM 
`IDA_Data`.`ida_new`
WHERE 
country = 'India';


-- Number of loans granted to India for each credit status 

SELECT
    country,
    `Credit Status`,
    COUNT(`Credit Status`) as `Number of Loans`
FROM
    `IDA_Data`.`ida_new`
WHERE
    country = 'India'
GROUP BY
    country,
    `Credit Status`;
    
    --  Or
    
    SELECT
    COUNT(*) AS `Number of Loans`
FROM
    `IDA_Data`.`ida_new`
WHERE
    country = 'India';
    
    --  Total Disbursed Amount allocated to India

SELECT
    SUM(`Disbursed Amount  USD`) AS `Total Disbursed Amount for India`
FROM
    `IDA_Data`.`ida_new`
WHERE
    Country = 'India';
    
   -- The most expensive project based on disbursed amount for India 
   
   SELECT
    `Project ID`,
    `Project Name`,
    `Disbursed Amount  USD`
FROM
    `IDA_Data`.`ida_new`
WHERE
    country = 'India'
ORDER BY
    `Disbursed Amount  USD` DESC
LIMIT 1;

-- Top Borrowers in India
SELECT
    Borrower,
    COUNT(`Project Name`) AS `Number of Projects`
FROM
    `IDA_Data`.`ida_new`
WHERE
    Country = 'India'
GROUP BY
    Borrower
ORDER BY
    `Number of Projects` DESC;
        
    -- the most expensive Project in India and its Disbursed Amount
    Select 
    'Project Name',
    'Original Principal Amount  USD'
    From
    `IDA_Data`.`ida_new`
    where
    country = 'India'
    order by
    'Original Principal Amount  USD' DESC
    LIMIT 1;
    
    