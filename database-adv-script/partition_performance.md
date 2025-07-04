# Booking Table Partitioning Report

## 🎯 Objective
Improve query performance on the `Booking` table by applying table partitioning based on `start_date`.

---

## ⚙️ Partitioning Strategy
The `Booking` table was partitioned by `RANGE` on the `start_date` column.

### Partitions:
- `Booking_2023`: 2023 data
- `Booking_2024`: 2024 data
- `Booking_2025`: 2025 data

---

## 🔬 Performance Test

### Query Used:
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2024-05-01' AND '2024-06-30';
