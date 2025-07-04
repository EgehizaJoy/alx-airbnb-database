# Index Performance Analysis - Airbnb Database

This report outlines the creation of indexes on key columns in the User, Booking, and Property tables and measures the query performance impact.

## 🧩 Indexes Created

### User Table
- `email`: Used for authentication (`WHERE`)
- `user_id`: Used in JOINs

### Booking Table
- `user_id`, `property_id`: Used in JOINs
- `start_date`: Used in filtering/upcoming bookings

### Property Table
- `property_id`: Used in JOINs
- `location`: Used in search filters
- `pricepernight`: Used in ORDER BY clauses

## 🔬 Performance Comparison

### Sample Query (Before Index)
```sql
EXPLAIN SELECT * FROM Booking WHERE user_id = 'abc-123';
