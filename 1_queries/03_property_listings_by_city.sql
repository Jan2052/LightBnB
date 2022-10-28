SELECT p.id, p.title, p.cost_per_night, AVG(pr.rating) as average_rating
FROM properties p
JOIN property_reviews pr ON p.id = pr.property_id
WHERE p.city = 'Vancouver'
GROUP BY p.id
HAVING AVG(pr.rating) >= 4
ORDER BY p.cost_per_night
LIMIT 10;

-- SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
-- FROM properties
-- LEFT JOIN property_reviews ON properties.id = property_id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY properties.id
-- HAVING avg(property_reviews.rating) >= 4
-- ORDER BY cost_per_night
-- LIMIT 10;