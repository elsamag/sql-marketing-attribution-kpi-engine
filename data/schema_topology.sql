-- ============================================================================
-- Schema Topology DDL: ApexGrowth Media Marketing Infrastructure
-- Enterprise Practice: Elsamag IT Solutions
-- ============================================================================

CREATE TABLE IF NOT EXISTS marketing_leads (
    lead_id VARCHAR(32) PRIMARY KEY,
    campaign_name VARCHAR(128) NOT NULL,
    customer_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    order_date DATE DEFAULT CURRENT_DATE
);

-- Relational Foreign Key Constraint
ALTER TABLE marketing_leads
ADD CONSTRAINT fk_leads_customer
FOREIGN KEY (customer_id) REFERENCES orders(customer_id);

-- Performance Optimization Indexing
CREATE INDEX IF NOT EXISTS idx_leads_customer ON marketing_leads(customer_id);
CREATE INDEX IF NOT EXISTS idx_orders_customer ON orders(customer_id);
CREATE INDEX IF NOT EXISTS idx_orders_amount ON orders(amount);
