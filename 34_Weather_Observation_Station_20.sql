'''
Weather Observation Station 20 :

A median is defined as a number separating the higher half of a data set from the lower half.
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
'''
SELECT 
    ROUND(AVG(lat_n), 4) AS median
FROM
(
    SELECT lat_n, ROW_NUMBER() OVER (ORDER BY lat_n) AS rn
    FROM station
) AS subq
WHERE
    rn = (SELECT CEIL((COUNT(rn)+1)/2) FROM station)
    OR
    rn = (SELECT FLOOR((COUNT(rn)+1)/2) FROM station)