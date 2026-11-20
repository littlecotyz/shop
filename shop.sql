CREATE TABLE customers (
  id    INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT UNIQUE NOT NULL,
  name  TEXT NOT NULL
);

CREATE TABLE products (
  id    INTEGER PRIMARY KEY AUTOINCREMENT,
  name  TEXT NOT NULL,
  price NUMERIC NOT NULL
);

CREATE TABLE orders (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_id INTEGER NOT NULL REFERENCES customers(id),
  product_id  INTEGER NOT NULL REFERENCES products(id),
  quantity    INTEGER NOT NULL
);

INSERT INTO customers (email, name) VALUES ('ana@example.com', 'Ana');
INSERT INTO products (name, price) VALUES ('Keyboard', 49.99), ('Mouse', 19.50);
INSERT INTO orders (customer_id, product_id, quantity) VALUES (1, 1, 2), (1, 2, 1);

SELECT c.name, p.name AS product, o.quantity, p.price * o.quantity AS total
FROM orders o
JOIN customers c ON c.id = o.customer_id
JOIN products p  ON p.id = o.product_id
WHERE c.email = 'ana@example.com';