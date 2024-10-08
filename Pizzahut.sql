-- 1. Retrieve the total number of orders placed.
SELECT COUNT(*) AS total_orders
FROM orders;

-- 2. Calculate the total revenue generated from pizza sales.
SELECT SUM(total_price) AS total_revenue
FROM orders;

-- 3. Identify the highest-priced pizza.
SELECT *
FROM pizzas
ORDER BY price DESC
LIMIT 1;

-- 4. Identify the most common pizza size ordered.
SELECT size, COUNT(*) AS size_count
FROM pizzas
GROUP BY size
ORDER BY size_count DESC
LIMIT 1;

-- 5. List the top 5 most ordered pizza types along with their quantities.
SELECT pizza_type, COUNT(*) AS quantity_ordered
FROM pizzas
GROUP BY pizza_type
ORDER BY quantity_ordered DESC
LIMIT 5;

-- Intermediate Queries

-- 6. Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT c.category_name, SUM(p.quantity) AS total_quantity
FROM pizzas p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name;

-- 7. Determine the distribution of orders by hour of the day.
SELECT HOUR(order_time) AS hour_of_day, COUNT(*) AS order_count
FROM orders
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- 8. Join relevant tables to find the category-wise distribution of pizzas.
SELECT c.category_name, COUNT(*) AS pizza_count
FROM pizzas p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY pizza_count DESC;

-- 9. Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT DATE(order_date) AS order_date, AVG(total_pizzas) AS avg_pizzas_ordered
FROM (
    SELECT order_date, SUM(quantity) AS total_pizzas
    FROM orders
    GROUP BY order_date
) AS daily_orders
GROUP BY order_date
ORDER BY order_date;

-- 10. Determine the top 3 most ordered pizza types based on revenue.
SELECT p.pizza_type, SUM(o.total_price) AS total_revenue
FROM orders o
JOIN pizzas p ON o.pizza_id = p.pizza_id
GROUP BY p.pizza_type
ORDER BY total_revenue DESC
LIMIT 3;
