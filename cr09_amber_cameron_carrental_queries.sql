	Show all customers who have an upcoming booking;

SELECT customer_name, pickup_date
FROM customer
INNER JOIN booking ON customer.customer_id = booking.customer_id
WHERE customer.customer_id in ( SELECT booking.customer_id
                               FROM booking
                               WHERE pickup_date > '2018-07-06' )

	Show count of all cars at each location

SELECT address, COUNT(unit_id)
FROM office
LEFT JOIN car_unit on location_id = office_id
GROUP BY address

	Show full booking details on particular invoice

SELECT customer_name, booking.booking_id, model_name, pickup_date, dropoff_date, price
FROM booking
INNER JOIN customer ON booking.customer_id = customer.customer_id
INNER JOIN invoice ON booking.booking_id = invoice.booking_id
INNER JOIN car_unit ON car_id = unit_id
INNER JOIN car_model ON unit_model = model_id
WHERE booking.booking_id = 1

	Show all staff earning over 30,000

SELECT name, salary
FROM employee
WHERE salary > 30000

	Show all invoices with customer name in order from highest to lowest price

SELECT invoice_id, customer_name, price
FROM invoice
INNER JOIN booking ON booking.booking_id = invoice.booking_id
INNER JOIN customer ON booking.customer_id = customer.customer_id
ORDER BY price DESC

	Show all cars make, model and location

SELECT man_name, model_name, address, city
FROM car_unit
INNER JOIN car_model ON car_model.model_id = car_unit.unit_model
INNER JOIN car_manufacturer ON man_id = model_man
INNER JOIN office ON office_id = location_id
