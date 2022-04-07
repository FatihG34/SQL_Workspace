/* =========================================================
WRITE A QUERY THAT RETURNS TRACK NAME AND ITS COMPOSER FROM
TRACKS TABLE
============================================================*/
SELECT name, Composer
FROM tracks;

/*========================================================
WRITE A QUERY THAT RETURNS ALL COLUMNS FROM TRACKS TABLE
==========================================================*/

SELECT *
FROM tracks;

/*=======================================================
WRITE A QUERY THAT RETURNS THE NAME OF COMPOSERS OF EACH
TRACK
=========================================================*/
SELECT Composer
FROM tracks;

/*==========================================================
WRITE A QUERY THAT RETURNS UNIQUE ALBUMID, MEDIATYPEID FROM
TRACKS TABLE
============================================================*/
SELECT DISTINCT AlbumId, MediaTypeId
FROM tracks;

/*=========================================================
WRITE A QUERY THAT RETURNS TRACK NAME AND TRACKID OF ‘Jorge
Ben’
===========================================================*/
SELECT name, TrackId
FROM tracks;
WHERE Composer = 'Jorge Ben';

/*===========================================================
WRITE A QUERY THAT RETURNS ALL INFO OF THE INVOICES OF WHICH
TOTAL AMOUNT IS GREATER THAN $25
=============================================================*/
SELECT *
FROM invoices
WHERE total > 25 ;

/*===========================================================
WRITE A QUERY THAT RETURNS ALL INFO OF THE INVOICES OF WHICH
TOTAL AMOUNT IS LESS THAN $15. JUST RETURN 5 ROWS
=============================================================*/
SELECT *
FROM invoices
WHERE total < 15 LIMIT 5 ;

/*============================================================
WRITE A QUERY THAT RETURNS ALL INFO OF THE INVOICES OF WHICH
TOTAL AMOUNT IS GREATER THAN $10. THEN SORT THE TOTAL AMOUNTS
IN DESCENDING ORDER, LASTLY DISPLAY TOP 2 ROWS
==============================================================*/
SELECT *
FROM invoices
WHERE total > 10
ORDER BY total DESC LIMIT 2;

/*=============================================================
WRITE A QUERY THAT RETURNS ALL INFO OF THE INVOICES OF WHICH
BILLING COUNTRY IS NOT CANADA. THEN SORT THE TOTAL AMOUNTS IN
ASCENDING ORDER, LASTLY DISPLAY TOP 10 ROWS
===============================================================*/
SELECT *
FROM invoices
WHERE BillingCountry <> 'Canada'
ORDER BY total ASC LIMIT 10;

/*=========================================================
WRITE A QUERY THAT RETURNS INVOICEID, CUSTOMERID AND TOTAL
DOLLAR AMOUNT FOR EACH INVOICE. THEN SORT THEM FIRST BY
CUSTOMERID IN ASCENDING, THEN TOTAL DOLLAR AMOUNT IN
DESCENDING ORDER.
===========================================================*/
SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY CustomerId ASC, total DESC ;

/*
WRITE A QUERY THAT RETURNS ALL TRACK NAMES THAT START WITH ‘B’
AND END WITH ‘S’
*/
SELECT name
FROM tracks
WHERE name like 'B%' AND name like '%S';

/*===========================================================
WRITE A QUERY THAT RETURNS THE NEWEST DATE AMONG THE INVOICE
DATES BETWEEN 2008 AND 2011
=============================================================*/
SELECT *
FROM invoices
WHERE InvoiceDate BETWEEN '2008-01-01 00:00:00' AND '2011-12-31 23:59:59'
ORDER BY InvoiceDate DESC;

/*========================================================
WRITE A QUERY THAT RETURNS THE FIRST AND LAST NAME OF THE
CUSTOMERS WHO HAVE ORDERS FROM NORWAY AND BELGIUM
==========================================================*/
SELECT FirstName, LastName
FROM customers
WHERE country IS 'Norway' OR country IS 'Belgium';

/*====================================================
WRITE A QUERY THAT RETURNS THE TRACK NAMES OF ‘ZAPPA’
======================================================*/
SELECT name
FROM tracks
WHERE name IS 'ZAPPA';

/*=========================================================
HOW MANY TRACKS AND INVOICES ARE THERE IN THE DIGITAL MUSIC
STORE, DISPLAY SEPERATELY
===========================================================*/
SELECT  COUNT (name)
FROM tracks;

SELECT COUNT (InvoiceId)
FROM invoices;

/*=====================================================
HOW MANY COMPOSERS ARE THERE IN THE DIGITAL MUSIC STORE
=======================================================*/
SELECT COUNT (Composer)
FROM tracks ;

/*========================================================
HOW MANY TRACKS DOES EACH ALBUM HAVE, DISPLAY ALBUMID AND
NUMBER OF TRACKS SORTED FROM HIGHEST TO LOWEST
==========================================================*/
SELECT count (AlbumId)
FROM tracks;

SELECT *
FROM tracks
ORDER BY AlbumId DESC;

/*==========================================================
WRITE A QUERY THAT RETURNS TRACK NAME HAVING THE MINIMUM AND
MAXIMUM DURATION, DISPLAY SEPERATELY
============================================================*/
SELECT name, MIN (Milliseconds)/ 1000.0
FROM tracks;

SELECT name, MAX (Milliseconds)/ 1000.0
FROM tracks;

/*=========================================================
WRITE A QUERY THAT RETURNS THE TRACKS HAVING DURATION LESS
THAN THE AVERAGE DURATION
===========================================================*/

SELECT *
FROM tracks
WHERE Milliseconds < (SELECT AVG(Milliseconds) FROM tracks);

/*==================================================
WRITE A QUERY THAT RETURNS THE TOTAL NUMBER OF EACH
COMPOSER’s TRACK.
====================================================*/
