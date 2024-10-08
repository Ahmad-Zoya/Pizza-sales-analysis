# Pizza Sales Analysis Queries

## Overview

This repository contains SQL queries designed to extract meaningful insights from a pizza sales database. These queries allow you to perform basic and intermediate-level analysis on pizza sales, including order counts, revenue generation, pizza popularity, and more.

## File Structure

- **`pizza_sales_analysis.sql`**: The main SQL script containing queries for both basic and intermediate-level pizza sales analysis.

## Queries Overview

### Basic Queries
These queries provide essential metrics regarding the total number of orders, revenue, and the most popular pizza types and sizes.

1. **Total Orders Placed**:  
   Retrieve the total number of orders made in the system.

2. **Total Revenue Generated**:  
   Calculate the total revenue generated from pizza sales.

3. **Highest-Priced Pizza**:  
   Identify the most expensive pizza available in the menu.

4. **Most Common Pizza Size**:  
   Find out which pizza size is ordered the most.

5. **Top 5 Most Ordered Pizza Types**:  
   List the top 5 pizza types with their corresponding order quantities.

### Intermediate Queries
These queries provide more advanced analytics, such as category-wise distribution, order trends by time, and revenue-based ranking of pizza types.

1. **Total Quantity of Each Pizza Category Ordered**:  
   Retrieve the total number of pizzas ordered for each pizza category (e.g., vegetarian, meat, etc.).

2. **Order Distribution by Hour**:  
   Determine the distribution of orders by the hour to understand peak order times.

3. **Category-Wise Distribution of Pizzas**:  
   Analyze how pizza orders are distributed across different categories.

4. **Average Number of Pizzas Ordered Per Day**:  
   Group orders by date to calculate the average number of pizzas ordered each day.

5. **Top 3 Most Ordered Pizza Types by Revenue**:  
   Identify the top 3 pizza types that generated the most revenue.

## Usage

To use the queries in this repository, follow these steps:

1. **Download or clone** this repository.
   ```bash
   git clone https://github.com/your-username/pizza-sales-analysis.git
   ```

2. **Import the SQL file** into your database management tool (e.g., MySQL Workbench, phpMyAdmin, etc.).

3. **Run the queries** against your pizza sales database. Make sure to adapt the table names and column names in the queries to match your database schema.

## Database Assumptions

The queries in this script assume the following structure in your database:
- **`orders` table**: Contains information about each order, including order time, total price, and pizza quantity.
- **`pizzas` table**: Contains pizza information such as type, size, price, and category.
- **`categories` table**: Contains categories like vegetarian, non-vegetarian, etc.

Feel free to adjust the queries if your schema differs from this structure.

## Contribution

If you have improvements or suggestions for additional queries, feel free to contribute!

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
