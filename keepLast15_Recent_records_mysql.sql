-- keepLast15_Recent_records , MySQL
DELETE 
FROM `myTable`
WHERE `myTimestamp` not in (
      SELECT * FROM (
            SELECT `myTimestamp`
            FROM `myTable`
            ORDER BY `myTimestamp` desc limit 0, 15
      ) 
      as toto);
