-- Table to store order details
CREATE TABLE google_orders (
    id SERIAL PRIMARY KEY,
    items JSONB NOT NULL,
    customer JSONB NOT NULL,
    payment VARCHAR(50) NOT NULL,
    transaction_id VARCHAR(255),
    transactionId VARCHAR(255),
    total VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Ensure the transactionId column exists in the google_orders table
ALTER TABLE google_orders ADD COLUMN IF NOT EXISTS transactionId VARCHAR(255);

-- Table to store product details
CREATE TABLE google_products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    details TEXT
);