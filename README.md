# sql-exists-not-exists-practice
Hands-on SQL practice covering EXISTS, NOT EXISTS, correlated subqueries, nested queries, and advanced filtering techniques using an e-commerce dataset. Includes practice problems, SQL solutions, and explanations for Data Analyst interview preparation.

# SQL EXISTS and NOT EXISTS Practice

## About This Repository

This repository contains hands-on SQL practice problems focused on `EXISTS`, `NOT EXISTS`, and correlated subqueries using a sample e-commerce database.

The goal is to strengthen SQL problem-solving skills, understand subquery behavior, and prepare for Data Analyst and SQL interviews.

## Objectives

- Understand how `EXISTS` and `NOT EXISTS` work.
- Practice correlated subqueries.
- Identify records with and without matching records in related tables.
- Apply filtering conditions inside subqueries.
- Progress from beginner-level questions to advanced SQL challenges.

## Dataset Overview

The project uses a sample e-commerce dataset consisting of four tables.

| Table | Description |
|---|---|
| `Customers` | Customer details, including name and city |
| `Products` | Product details, categories, and prices |
| `Orders` | Customer orders, dates, and order statuses |
| `OrderItems` | Products and quantities associated with each order |

### Table Relationships

- `Customers.customer_id` → `Orders.customer_id`
- `Orders.order_id` → `OrderItems.order_id`
- `Products.product_id` → `OrderItems.product_id`

## SQL Concepts Covered

### 1. EXISTS

Checks whether a subquery returns at least one row.

Example: Find customers who have placed at least one order.

```sql
SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customer_id = c.customer_id
);
```

### 2. NOT EXISTS

Checks whether a subquery returns no rows.

Example: Find customers who have never placed an order.

```sql
SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customer_id = c.customer_id
);
```

## Practice Roadmap

| Level | Topics | Status |
|---|---|---|
| Level 1: Easy | Customers with/without orders; products ordered/never ordered | Completed |
| Level 2: Intermediate | Order status filters and product category conditions | In Progress |
| Level 3: Advanced | Multiple `EXISTS` conditions and date-based filtering | Upcoming |
| Level 4: Expert | Double `NOT EXISTS` and relational division problems | Upcoming |

## Repository Structure

```text
sql-exists-not-exists-practice/
├── README.md
├── setup/
│   └── create_tables_insert_data.sql
├── questions/
│   ├── 01_easy.sql
│   ├── 02_intermediate.sql
│   ├── 03_advanced.sql
│   └── 04_expert.sql
└── solutions/
    ├── 01_easy_solutions.sql
    ├── 02_intermediate_solutions.sql
    ├── 03_advanced_solutions.sql
    └── 04_expert_solutions.sql
```

*The folder structure represents the planned organization; add the files as you create them.*

## How to Use This Project

1. Set up the database using the SQL script in the `setup` folder.
2. Attempt each question in the `questions` folder.
3. Write and test your queries in MySQL Workbench.
4. Save verified solutions in the corresponding `solutions` folder.
5. Compare different approaches and document important learnings.

## Key Learnings

- `EXISTS` is useful for checking whether related records are present.
- `NOT EXISTS` helps identify records without matching rows.
- Correlated subqueries reference columns from the outer query.
- `EXISTS` does not require counting matching rows.
- Multiple `EXISTS` and `NOT EXISTS` conditions can solve complex filtering problems.

## Tools Used

- MySQL
- MySQL Workbench
- Git and GitHub

## Project Goal

Build a structured collection of SQL problems and verified solutions that demonstrates practical query-writing skills, logical reasoning, and readiness for Data Analyst interviews.

---

**Learning by solving, testing, and improving one query at a time.**
