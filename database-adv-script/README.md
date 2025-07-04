# SQL Joins - Airbnb Database

This file contains SQL queries that demonstrate the use of different types of joins in the context of the Airbnb Clone project.

## Queries

1. **INNER JOIN**  
   Retrieves all bookings and the users who made those bookings.

2. **LEFT JOIN**  
   Retrieves all properties and their reviews, including those with no reviews.

3. **FULL OUTER JOIN**  
   Retrieves all users and all bookings, even if a user has no booking or a booking is not linked to a user.


# SQL Subqueries - Airbnb Database

This file contains two subquery examples used in the Airbnb Clone project.

## Queries

1. **Non-Correlated Subquery**
   - Retrieves all properties with an average rating greater than 4.0.
   - Uses `GROUP BY` and `HAVING` on the `Review` table.

2. **Correlated Subquery**
   - Retrieves users who have made more than 3 bookings.
   - Uses a subquery inside the `WHERE` clause that depends on the outer query.
