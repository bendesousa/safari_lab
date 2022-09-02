SELECT animals.name
FROM animals
INNER JOIN enclosures 
ON animals.enclosureid = enclosures.id
WHERE enclosures.id = 1;
