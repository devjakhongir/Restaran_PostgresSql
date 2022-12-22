

create table tables (
    table_id serial primary key,
    number int2 not null
);

create table orders (
    order_id serial primary key,
    table_id int not null references tables(table_id),
    created_at timestamp default current_timestamp,
    closed_at timestamp
);

create table products (
    product_id serial primary key,
    name varchar(64),
    price decimal(16, 2)
);

create table components (
    component_id serial primary key,
    name varchar(24)
);

create table ingredients (
    ingredient_id serial primary key,
    product_id int not null references products(product_id),
    component_id int not null references components(component_id),
    weight int2
);

create table order_details (
    order_detail_id serial primary key,
    quantity int2 not null,
    order_id int not null references orders(order_id),
    product_id int not null references products(product_id)
);

create table types (
    type_id serial primary key,
    name varchar(24)
);

create table categories (
    category_id serial primary key,
    name varchar(64)
);

create table type_register (
    type_register_id serial primary key,
    category_id int not null references categories(category_id),
    type_id int not null references types(type_id),
    product_id int not null references products(product_id)
);
