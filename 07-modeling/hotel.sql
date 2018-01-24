CREATE TABLE room (
  id integer,
  room_number integer,
  floor integer,
  price_night integer
);

CREATE TABLE guest (
  id integer,
  first_name text,
  last_name text,
  phone_number integer,
  email text,
  address text
);

CREATE TABLE bookings (
  id integer,
  guest_id integer,
  room_id integer,
  check_in date,
  check_out date
);

SELECT * FROM guest
INNER JOIN bookings.guest_id
ON bookings.guest_id = guest.id
WHERE


SELECT guest_id FROM bookings
