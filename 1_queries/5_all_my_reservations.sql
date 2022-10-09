SELECT reservations.id, properties.title, reservations.start_date, properties.cost_per_night, avg(rating) as avg_rating
FROM reservations
JOIN property_reviews ON reservation_id = reservations.id
JOIN properties ON reservations.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10

