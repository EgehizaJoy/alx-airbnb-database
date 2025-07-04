  GNU nano 8.3           database-adv-script/perfomance.sql

















-- 🔴 Unoptimized Query: Retrieves bookings, user, property, and payment info
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_date
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id;
-- ✅ Refactored Query: Uses LEFT JOIN for optional payments and avoids unnecessary data
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_date
FROM 
    Booking b
INNER JOIN 
    User u ON b.user_id = u.user_id
INNER JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id;
-- 🔴 Initial Query with WHERE and AND clause
-- Retrieves bookings with user, property, and payment info where payment date is in 2024 and status is confirmed

EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_date
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed'
    AND pay.payment_date >= '2024-01-01';


-- ✅ Refactored Query with same filter but better structure (LEFT JOIN for optional payments)

EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_date
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed'
    AND (pay.payment_date >= '2024-01-01' OR pay.payment_date IS NULL);
