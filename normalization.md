# Normalization to Third Normal Form (3NF)

## ✅ First Normal Form (1NF)
- Ensured **atomicity**: All attributes contain only indivisible values.
- No repeating groups or arrays.
- Examples:
  - `phone_number` in `User` is a single value, not a list.
  - `start_date` and `end_date` in `Booking` are stored in separate atomic columns.

## ✅ Second Normal Form (2NF)
- Ensured 1NF is satisfied.
- All **non-key attributes** are fully functionally dependent on the **entire primary key**.
- Since all tables use **UUIDs as primary keys**, no composite keys exist.
- Example:
  - In `Booking`, `total_price` depends on the full `booking_id`, not just part of a composite.

## ✅ Third Normal Form (3NF)
- Ensured 2NF is satisfied.
- All attributes are **only dependent on the primary key** — no **transitive dependencies**.
- Checks:
  - `User`:
    - All fields depend directly on `user_id`.
  - `Property`:
    - `host_id` is a foreign key, but all attributes like `name`, `description`, `location` relate directly to `property_id`.
  - `Booking`, `Payment`, `Review`, and `Message`:
    - No attributes depend on other non-key attributes.

## 🚫 Redundancies Eliminated
- No duplicated data across tables.
- Payments are linked only to `Booking`, not directly to `User` or `Property`, avoiding transitive dependencies.
- Reviews link users to properties without repeating property details.
- Messaging uses user IDs only, avoiding name or email repetition.

## ✅ Conclusion
The schema satisfies **3NF**:
- No repeating groups (1NF)
- Full functional dependency (2NF)
- No transitive dependencies (3NF)

Database is now normalized for efficiency, scalability, and consistency.
