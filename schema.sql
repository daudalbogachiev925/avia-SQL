CREATE TABLE airports (id INTEGER PRIMARY KEY, code TEXT, city TEXT);
CREATE TABLE flights (id INTEGER PRIMARY KEY, from_id INTEGER, to_id INTEGER,
    departure DATETIME, price REAL, seats INTEGER);
CREATE TABLE passengers (id INTEGER PRIMARY KEY, name TEXT, passport TEXT);
CREATE TABLE bookings (id INTEGER PRIMARY KEY, flight_id INTEGER,
    passenger_id INTEGER, seat TEXT, booked_at DATETIME);
