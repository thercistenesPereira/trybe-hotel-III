SELECT
  name 'Hotel',
  state 'Estado',
  city 'Cidade',
  district 'Bairro',
  street 'Rua'
FROM hotels AS HO INNER JOIN rooms AS RO ON HO.is = RO.hotel_id
WHERE avaliable = 1 AND star >= 3 AND price <= 200;