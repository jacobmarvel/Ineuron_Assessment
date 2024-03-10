What will be the result of the query below?
SELECT * FROM runners WHERE id NOT IN (SELECT winner_id FROM races)
Explain your answer and also provide an alternative version of this query that will avoid the issue that it exposes.

## Answer
Answer will be a list of runners who have never won a race.

If the winner_id column in the races table has NULL values, the NOT IN clause 
will not work as expected. This happens because the NOT IN subquery will return a NULL value 
within its list, and any comparison with NULL using IN or NOT IN will result in unknown, 
causing the entire NOT IN clause to return false. Therefore, no rows would be returned at all.

SELECT * FROM runners r
WHERE NOT EXISTS (
    SELECT 1 FROM races WHERE winner_id = r.id
)
