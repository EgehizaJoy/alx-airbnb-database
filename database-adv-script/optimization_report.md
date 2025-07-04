# Optimization Report - Airbnb Database

## 🎯 Objective
Improve the performance of a complex query that retrieves bookings with user, property, and payment details.

---

## 🐢 Original Query (Unoptimized)
```sql
SELECT b.booking_id, u.first_name, u.last_name, p.name, pay.amount, pay.payment_date
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
JOIN Payment pay ON b.booking_id = pay.booking_id;
