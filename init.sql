CREATE TABLE items (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL CHECK (category IN ('Produce', 'Chilled Good', 'Dry Goods'))
);

CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY,
    item_id INTEGER NOT NULL,
    full_cases INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES items (item_id)
);

CREATE TABLE inventory_units (
    inventory_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    individual_units INTEGER NOT NULL,
    PRIMARY KEY (inventory_id, item_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory (inventory_id),
    FOREIGN KEY (item_id) REFERENCES items (item_id)
);