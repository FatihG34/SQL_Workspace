/*=================================================
1. How many tracks does each album have? 
Your solution should include Album id and 
its number of tracks sorted from highest to lowest.
===================================================*/
SELECT AlbumId, COUNT (*) as number_of_tracks
FROM tracks
GROUP BY AlbumId
ORDER BY number_of_tracks DESC;

/*==========================================================
2. Find the album title of the tracks. 
Your solution should include track name and its album title.
============================================================*/
SELECT t.name, a.Title
FROM tracks t
LEFT JOIN albums a
ON t.AlbumId = a.AlbumId;

/*====================================================
3. Find the minimum duration of the track in each album. 
Your solution should include album id, album title and 
duration of the track sorted from highest to lowest.
======================================================*/
SELECT a.AlbumId, a.Title, MIN(t.Milliseconds) as minimum_duration
FROM tracks t
LEFT JOIN albums a
ON t.AlbumId = a.AlbumId
GROUP BY t.AlbumId
ORDER BY minimum_duration DESC;

/*====================================================
4. Find the total duration of each album. 
Your solution should include album id, album title and 
its total duration sorted from highest to lowest.
======================================================*/
SELECT a.AlbumId, a.Title, SUM(t.Milliseconds) as total_duration
FROM tracks t
JOIN albums a
ON t.AlbumId = a.AlbumId
GROUP BY t.AlbumId
ORDER BY total_duration DESC;

/*==========================================================
5. Based on the previous question, find the albums whose 
total duration is higher than 70 minutes. 
Your solution should include album title and total duration.
============================================================*/
SELECT a.AlbumId, a.Title, SUM(t.Milliseconds) / 60000 as total_duration
FROM tracks t
JOIN albums a
ON t.AlbumId = a.AlbumId
GROUP BY t.AlbumId
HAVING total_duration > 70
ORDER BY total_duration DESC;