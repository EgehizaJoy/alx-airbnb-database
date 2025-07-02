# Airbnb Database Sample Data

This file seeds the Airbnb-like database with realistic sample data, including:

- 3 Users (guest, host, admin)
- 2 Properties
- 2 Bookings
- 2 Payments
- 2 Reviews
- 2 Messages

## Notes

- UUIDs are hardcoded for simplicity.
- Sample data represents realistic booking and communication flows.
- Ensure schema is created before running this file.

To run:

```sql
SOURCE database-script-0x02/seed.sql;
