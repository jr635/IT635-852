# IT635-852 Database Administration Midterm Deliverable
* Jakub Roszkowski
* Professor Reyes
* Project Status - Midterm Submitted

# Usage
Updating Item ID 1 To Contain Only 2 Cases

![Midtermpic1](https://github.com/jr635/IT635-852/assets/70586888/36395b24-ddaa-46aa-b992-cdf85ba17b00)

Checking The Table Afterwards Shows Changes Were Successful

![Midtermpic4](https://github.com/jr635/IT635-852/assets/70586888/67fc946d-7338-467f-9e60-7c9af45cd94c)

Adding Apples To The Items Table And Labeling Them As Part Of The Produce Category

![Midtermpic2](https://github.com/jr635/IT635-852/assets/70586888/4534aeb1-db39-4dae-829e-5b198491d14e)

Checking The Table Afterwards Shows Apples Were Successfully Added

![Midtermpic3](https://github.com/jr635/IT635-852/assets/70586888/31f736fe-b43a-4946-9966-91538d8ebed4)








# Files
* init.sql
* data.sql
* inventory_app.py

# Tables in init.sql
* Items: This table stores the general information about each item, including the item ID (primary key), item name, and category (Produce, Chilled Good, or Dry Goods).
* Inventory: This table stores the inventory information, including the inventory ID (primary key), item ID (foreign key), and the number of items in full cases.
* Inventory Units: This table stores the individual unit counts of items that are not fully in a case. It would include the inventory ID (foreign key), item ID (foreign key), and the quantity of individual units.
