SELECT
  name 'Hotel',
  street 'Rua',
  district 'Bairro',
  city 'Cidade'
FROM hotels AS HO INNER JOIN rooms as RO ON HO.id = RO.hotel_id
WHERE avaliable = 1; 