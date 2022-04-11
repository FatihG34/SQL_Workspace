/*
Instructions:  
There are multiple questions.
Use chinook database to answer the questions.
Please paste your answers (statements) as a plain text using the related question number.
Good Luck!
*/

/*===============================================================
1. Write a query that displays InvoiceId, CustomerId 
and total dollar amount for each invoice, 
sorted first by CustomerId (in ascending order), 
and then by total dollar amount  (in descending order).
=================================================================*/
SELECT InvoiceId, CustomerId,total --SUM(total) as total_amount
FROM invoices
ORDER BY CustomerId ASC, total DESC;

/*======================================================================
2. Write a query that displays InvoiceId, CustomerId 
and total dollar amount for each invoice, 
but this time sorted first by total dollar amount (in descending order), 
and then by CustomerId (in ascending order).
=========================================================================*/
SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY total DESC, CustomerId ASC;

/*==========================================================================
3. Compare the results of these two queries above. 
How are the results different when you switch the column you sort on first? 
(Explain it in your own words.)

============================================================================
At first query, CustomerId  starts with the smallest value, 
total amount of dollar  starts with the largest value, 
but total amount of dollar  repeats the grouping 
from largest to smallest with each increment of CustomerId

In the second query, this situation changes place.
=============================================================================*/

/*=================================================================================
4. Write a query to pull the first 10 rows and all columns from the invoices table 
that have a dollar amount of total greater than or equal to 10.
===================================================================================*/
SELECT *
FROM invoices
WHERE total >= 10 LIMIT 10;

/*===============================================
5. Write a query to pull the first 5 rows and 
all columns from the invoices table 
that have a dollar amount of total less than 10.
=================================================*/
SELECT *
FROM invoices
WHERE total < 10 LIMIT 5;

/*===========================================================
6. Find all track names that start with 'B' and end with 's'.
=============================================================*/
SELECT *
FROM tracks
WHERE Name like 'B%s';

/*===================================================================
7. Use the invoices table to find all information regarding invoices 
whose billing address is USA or Germany or Norway or Canada and
 invoice date is at any point in 2010, sorted from newest to oldest.
=====================================================================*/
SELECT *
FROM invoices
WHERE BillingCountry IN ('USA', 'Germany', 'Norway', 'Canada') 
AND InvoiceDate LIKE '2010%'
ORDER BY InvoiceDate DESC;