use iNeuron;
CREATE TABLE test_a(id NUMERIC);
INSERT INTO test_a(id) VALUES
(10),
(20),
(30),
(40),
(50);

CREATE TABLE test_b(id NUMERIC);
INSERT INTO test_b(id) VALUES
(10),
(30),
(50);

Write a query to fetch values in table test_a that are and not in test_b without using the NOT keyword.

## Answer
SELECT test_a.id
FROM test_a
LEFT JOIN test_b ON test_a.id = test_b.id
WHERE test_b.id IS NULL;

