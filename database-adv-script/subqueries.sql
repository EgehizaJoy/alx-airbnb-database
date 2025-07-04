-- 1. Non-correlated subquery:
-- Find all properties where the average rating is greater than 4.0

SELECT 
    p.property_id,
    p.name,
    AVG(r.rating) AS average_rating
FROM 
    Property p
JOIN 
    Review r ON p.property_id = r.property_id
GROUP BY 
    p.property_id, p.name
HAVING 
    AVG(r.rating) > 4.0;


-- 2. Correlated subquery:
-- Find users who have made more than 3 bookings

SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    (
        SELECT COUNT(*) 
        FROM Booking b 
        WHERE b.user_id = u.user_id
    ) AS total_bookings
FROM 
    User u
WHERE 
    (
        SELECT COUNT(*) 
        FROM Booking b 
        WHERE b.user_id = u.user_id
    ) > 3;
