
-- even

-- A 1
-- B 2
-- C 3
-- E 5
-- F 6
-- H 7
-- J 8

CREATE TABLE letters (
    id serial not null primary key,
    name varchar
);

INSERT INTO letters (name) VALUES
('A'),
('B'),
('C'),
('D'),
('F'),
('G'),
('H'),
('J');


SELECT
    *
FROM
    letters AS l1
WHERE
    (
        SELECT
            count(*) % 2 <> 0
        FROM
            letters AS l2
        WHERE l2.id < l1.id
    )


CREATE TABLE elements (
    element_id serial not null primary key,
    name varchar(24)
);

INSERT INTO elements (name) VALUES
('Apple'),
('Google'),
('Amazon'),
('Netflix'),
('Samsung');

ALTER TABLE elements ADD COLUMN salary int;

UPDATE elements SET salary = 500 WHERE element_id = 1;
UPDATE elements SET salary = 400 WHERE element_id = 2;
UPDATE elements SET salary = 300 WHERE element_id = 3;
UPDATE elements SET salary = 200 WHERE element_id = 4;
UPDATE elements SET salary = 100 WHERE element_id = 5;


SELECT
    *
FROM
    elements AS e1
WHERE
    (
        SELECT
            SUM(salary)
        FROM
            elements AS e2
        WHERE e2.element_id <= e1.element_id
    ) > 300
;

SELECT
    SUM(salary)
FROM
    elements AS e2
WHERE e2.element_id < 1


