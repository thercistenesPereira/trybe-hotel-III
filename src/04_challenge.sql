SELECT
  name 'Hotel',
  street 'Rua',
  district 'Bairro',
  price 'Diária',
  available 'Disponível'
FROM hotels AS HO INNER JOIN rooms AS RO ON HO.id = RO.hotel_id;