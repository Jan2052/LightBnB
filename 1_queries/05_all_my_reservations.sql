SELECT r.id, p.title, p.cost_per_night, r.start_date, AVG(pr.rating) as average_rating
FROM reservations r
JOIN properties p ON p.id = r.property_id
JOIN property_reviews pr ON r.id = pr.reservation_id
WHERE r.guest_id = 1
GROUP BY r.id, p.id
ORDER BY r.start_date
LIMIT 10;
