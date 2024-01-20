USE trybe_hotel;

CREATE TABLE rooms (
  id INT AUTO_INCREMENT PRIMARY KEY,
  price DECIMAL(6,2) NOT NULL,
  available BOOLEAN DEFAULT TRUE,
  hotel_id INT NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotels (id)
);

INSERT INTO rooms (price, available, hotel_id)
  VALUES
    (120.35,	0, 1),
    (200.00,	1, 2),
    (329.99,	0, 1),
    (379.99,	1, 4),
    (929.99,	0, 1),
    (201.62,	1, 2),
    (699.99,	1, 3),
    (500.00,	1, 4),
    (150.05,	1, 3),
    (99.99,	1, 1),
    (199.99,	1, 2),
    (399.99,	1, 2),
    (118.01,	1, 4),
    (739.99,	1, 1),
    (829.99,	1, 1);

SELECT * FROM rooms;