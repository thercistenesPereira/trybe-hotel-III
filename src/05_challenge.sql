SELECT 
  name 'Hotel',
  street 'Rua',
  district 'Bairro',
  city 'Cidade'
FROM hotels AS hot INNER JOIN rooms AS roo ON hot.id = roo.hotel_id
WHERE roo.available = 1;