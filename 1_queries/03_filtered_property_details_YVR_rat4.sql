SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
  FROM properties
  JOIN property_reviews ON properties.id = property_id
  WHERE properties.city LIKE '%ancouv%'
  GROUP BY properties.id
  HAVING avg(property_reviews.rating) >= 4
  ORDER BY average_rating
  LIMIT 10;