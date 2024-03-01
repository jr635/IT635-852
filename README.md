# IT635-852 Database Administration Midterm Deliverable
* Jakub Roszkowski
* Professor Reyes
* Project Status - Midterm Submitted

# Usage


# Files
* init.sql
* data.sql
* inventory_app.py

# Tables in init.sql
* Items: This table stores the general information about each item, including the item ID (primary key), item name, and category (Produce, Chilled Good, or Dry Goods).
* Inventory: This table stores the inventory information, including the inventory ID (primary key), item ID (foreign key), and the number of items in full cases.
* Inventory Units: This table stores the individual unit counts of items that are not fully in a case. It would include the inventory ID (foreign key), item ID (foreign key), and the quantity of individual units.
