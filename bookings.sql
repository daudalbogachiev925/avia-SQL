-- Загрузка рейсов
SELECT f.id, a1.city AS from_city, a2.city AS to_city,
  f.seats, COUNT(b.id) AS booked,
  ROUND(100.0*COUNT(b.id)/f.seats,1) AS pct
FROM flights f
JOIN airports a1 ON f.from_id=a1.id
JOIN airports a2 ON f.to_id=a2.id
LEFT JOIN bookings b ON f.id=b.flight_id
GROUP BY f.id;

-- Выручка по рейсам
SELECT f.id, SUM(f.price) AS revenue
FROM flights f JOIN bookings b ON f.id=b.flight_id
GROUP BY f.id ORDER BY revenue DESC;

-- Пассажиры с > 1 полётом
SELECT p.name, COUNT(*) FROM passengers p
JOIN bookings b ON p.id=b.passenger_id
GROUP BY p.id HAVING COUNT(*) > 1;
