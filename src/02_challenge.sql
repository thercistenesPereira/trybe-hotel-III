USE trybe_hotel;

CREATE TABLE rooms (
  id INT AUTO_INCREMENT PRIMARY KEY,
  price DECIMAL(6,2) NOT NULL,
  available BOOLEAN DEFAULT TRUE,
  hotel_id INT NOT NULL
);

ALTER TABLE rooms ADD FOREIGN KEY (hotel_id) REFERENCES hotels (id);
ALTER TABLE rooms DROP COLUMN hotel_id;

INSERT INTO rooms (price, available)
  VALUES
    (120.35,	0),
    (200.00,	1),
    (329.99,	0),
    (379.99,	1),
    (929.99,	0),
    (201.62,	1),
    (699.99,	1),
    (500.00,	1),
    (150.05,	1),
    (99.99,	1),
    (199.99,	1),
    (399.99,	1),
    (118.01,	1),
    (739.99,	1),
    (829.99,	1);
SELECT * FROM rooms;