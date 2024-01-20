USE trybe_hotel;

CREATE TABLE hotels(
  id INTEGER  AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  street VARCHAR(80),
  district VARCHAR(80),
  city VARCHAR(80),
  state VARCHAR(80),
  zip_code VARCHAR(8) NOT NULL,
  star INTEGER NOT NULL
);

INSERT INTO hotels (name, street, district, city, state, zip_code, star)
VALUES 
('Brown, Kihn and Bergnaum', 'Myrna Ports 188', 'South', 'Christiansenhaven', 'Ohio', '61749464', 1),
('Dickinson, Mayer and Boyer', 'Tommie Street 781', 'Lake', 'Abbottshire', 'NorthDakota', '79345910', 3),
('Hettinger-Raynor', 'Emerson Square 494', 'Port', 'Pollichborough', 'Wyoming', '29551210', 3),
('Ernser Inc', 'Bart Knolls 161', 'East', 'Kodymouth', 'Nebraska', '16541278', 4);

SELECT * FROM hotels;