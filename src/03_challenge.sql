SELECT 
  available,
  city,
  district,
  hotel_id,
  roo.id,
  name,
  price,
  star,
  state,
  street,
  zip_code
FROM hotels AS hot INNER JOIN rooms AS roo ON hot.id = roo.hotel_id;