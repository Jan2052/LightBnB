SELECT p.city, COUNT(r.id) as total_reservations
FROM properties p
JOIN reservations r ON r.property_id = p.id
GROUP BY p.city
ORDER BY total_reservations DESC;

-- SELECT properties.city, count(reservations) as total_reservations
-- FROM reservations
-- JOIN properties ON property_id = properties.id
-- GROUP BY properties.city
-- ORDER BY total_reservations DESC;