

insert into categories (name) values
('Milliy taomlar'),
('Yevropa taomlar'),
('Xitoy taomlar');

insert into types (name) values
('suyuq'),
('quyuq'),
('ichimliklar'),
('salat');

insert into products (name, price) values
('osh', 28000.00),
('mastava', 25000.00),
('manti', 5000.00),
('choy', 2000.00),
('Limon choy', 6000.00),
('sezar salat', 7000.00),
('pentuza', 7000.00);

insert into type_register(category_id, type_id, product_id) values
(1, 2, 1),
(1, 1, 2),
(1, 3, 4),
(2, 4, 7),
(3, 4, 6),
(1, 2, 3),
(1, 3, 5);


select
    c.name,
    ARRAY_AGG(DISTINCT t.name),
    ARRAY_AGG(p.name)
from
    categories AS c
JOIN type_register AS tr USING(category_id)
JOIN types AS t USING(type_id)
JOIN products AS p USING(product_id)
GROUP BY c.name
;


1.Task
Hamma table larning malumotini toldirish. Kamida 3 ta

2.Task 
Shu 2022-11-10 sanada osh qatnashgan nechta zakaz bolgan

4 ta zakaz olingan

3.Task
Shu 2022-11-10 sanada eng kop osh aytilgan zakazning malumoti chiqishi kerak

1 | osh | 7
2 | osh | 2
3 | osh | 5
