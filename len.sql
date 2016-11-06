SELECT * FROM
    (SELECT City, LENGTH(City) FROM STATION 
    ORDER BY LENGTH(City),city ASC) 
WHERE ROWNUM <= 1
UNION ALL
SELECT * FROM 
    (SELECT City, LENGTH(City) FROM STATION 
    ORDER BY LENGTH(City) DESC) 
WHERE ROWNUM <= 1;