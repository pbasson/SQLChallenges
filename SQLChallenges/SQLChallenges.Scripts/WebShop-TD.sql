/*
TABLE sellers
  id INTEGER PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  rating INTEGER NOT NULL

TABLE items
  id INTEGER PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  sellerId INTEGER
  FOREIGN KEY (sellerId) REFERENCES sellers(id)

A query that selects the item name and the seller name with a sellers rating greater than 4.

*/

SELECT item.name, sell.name
FROM items as item
JOIN sellers as sell on item.sellerId == sell.id
where sell.rating > 4
