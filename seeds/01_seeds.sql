INSERT INTO users (name, email, password) VALUES
('Tom Smith', 'tsmith@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Sarah Black', 'sarah.b@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Aaron Long', 'a.l@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) VALUES
(1, 'Beachfront Condo', 'A beautiful 1br condo just steps to the beach!', 'http://imgur.com/someUrl', 'http://imgur.com/someUrl', 250, 1, 1, 1, 'Canada', '2 Edgewater Dr.', 'Toronto', 'ON', 'M5A0L1', TRUE),
(2, 'Golf Getaway', 'Modern 3bd house just steps to the golf course!', 'http://imgur.com/someUrl', 'http://imgur.com/someUrl', 315, 3, 3, 2, 'Canada', '141 Connor Ave.', 'Collingwood', 'ON', 'L9Y5H4', TRUE),
(2, 'Kayakers Paradise', 'Lakeside home perfect for any water activites!', 'http://imgur.com/someUrl', 'http://imgur.com/someUrl', 280, 2, 2, 1, 'Canada', '83 Westwind Cr.', 'Willow Beach', 'ON', 'L0E1S0', TRUE);

INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES
('2020-07-03', '2020-07-14', 1, 3),
('2020-07-15', '2020-08-01', 1, 2),
('2020-06-12', '2020-06-15', 3, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES
(3, 1, 1, 7, 'Had a great time!'),
(2, 1, 2, 8, 'The beach was great'),
(1, 3, 3, 6, 'The water was very cold!');