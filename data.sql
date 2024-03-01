-- Sample data for the items table
INSERT INTO items (item_name, category) VALUES ('Pomegranate', 'Produce');
INSERT INTO items (item_name, category) VALUES ('New York Strip', 'Chilled Good');
INSERT INTO items (item_name, category) VALUES ('Pasta Sauce', 'Dry Goods');

-- Sample data for the inventory table
INSERT INTO inventory (item_id, full_cases) VALUES (1, 10); -- Pomegranate, 10 full cases
INSERT INTO inventory (item_id, full_cases) VALUES (2, 5);  -- New York Strip, 5 full cases
INSERT INTO inventory (item_id, full_cases) VALUES (3, 20); -- Pasta Sauce, 20 full cases

-- Sample data for the inventory_units table
INSERT INTO inventory_units (inventory_id, item_id, individual_units) VALUES (1, 1, 5); -- Pomegranate, 5 individual units
INSERT INTO inventory_units (inventory_id, item_id, individual_units) VALUES (2, 2, 3);  -- New York Strip, 3 individual units
INSERT INTO inventory_units (inventory_id, item_id, individual_units) VALUES (3, 3, 0);  -- Pasta Sauce, no individual units