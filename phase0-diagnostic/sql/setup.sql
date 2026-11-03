DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  id   INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT NOT NULL
);
CREATE TABLE orders (
  id          INTEGER PRIMARY KEY,
  customer_id INTEGER NOT NULL REFERENCES customers(id),
  total_cents INTEGER NOT NULL
);
INSERT INTO customers VALUES (1,'Ana','Houston'),(2,'Ben','Austin'),(3,'Chloe','Houston'),(4,'Dev','Dallas');
INSERT INTO orders VALUES (1,1,2500),(2,1,1500),(3,2,4000),(4,3,1000),(5,1,500),(6,2,1200);