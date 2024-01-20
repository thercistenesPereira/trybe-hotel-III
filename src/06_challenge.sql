SELECT 
  name 'Hotel',
  state 'Estado',
  city 'Cidade',
  district 'Bairro',
  street 'Rua'
FROM hotels AS hot INNER JOIN rooms AS roo ON hot.id = roo.hotel_id
WHERE available = TRUE AND star >= 3 AND price <= 200;
