
SELECT REPLACE (nationality, 'http://fr.dbpedia.org/resource/','')
FROM nationnalité_et_année 
LIMIT 500;

WITH tp1 AS
(SELECT REPLACE (nationality, 'http://fr.dbpedia.org/resource/','') AS nationality
FROM nationnalité_et_année)
SELECT nationality, COUNT (*) AS effectif
FROM tp1
GROUP BY nationality
ORDER BY effectif DESC;

