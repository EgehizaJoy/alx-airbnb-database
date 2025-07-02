# Airbnb Database Schema (DDL)

This schema defines the core structure for an Airbnb-like application, covering users, properties, bookings, payments, reviews, and messaging.

## Features
- Normalized to 3NF
- Uses UUIDs as primary keys
- ENUMs for constrained attributes (roles, booking status, payment methods)
- Indexes for performance optimization

## Tables
- User
- Property
- Booking
- Payment
- Review
- Message

## Notes
- Designed for scalability and real-world constraints.
- Foreign keys enforce relationships and maintain integrity.
