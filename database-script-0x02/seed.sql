-- Seed Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Wanjiru', 'alice@example.com', 'hashed_pw_1', '0712345678', 'guest'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Mwangi', 'bob@example.com', 'hashed_pw_2', '0723456789', 'host'),
  ('33333333-3333-3333-3333-333333333333', 'Clara', 'Odhiambo', 'clara@example.com', 'hashed_pw_3', '0734567890', 'admin');

-- Seed Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Studio', 'Nice place near CBD', 'Nairobi', 4500.00),
  ('aaaa2222-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Beach House', 'Sea-view villa', 'Mombasa', 12000.00);

-- Seed Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-05', 18000.00, 'confirmed'),
  ('b222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaa2222-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-08-10', '2025-08-12', 24000.00, 'pending');

-- Seed Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('p111-pppp-pppp-pppp-pppppppppppp', 'b111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 18000.00, 'mpesa'),
  ('p222-pppp-pppp-pppp-pppppppppppp', 'b222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 24000.00, 'credit_card');

-- Seed Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('r111-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Excellent stay!'),
  ('r222-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaa2222-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4, 'Beautiful views.');

-- Seed Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m111-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, is the Beach House available in August?'),
  ('m222-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes, it’s available from the 10th.');
