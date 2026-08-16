-- ============================================================================
-- Enterprise Practice: Elsamag IT Solutions
-- Author & Lead Technical Consultant: Samuel Chinwendu Agu
-- Repository: github.com/Elsamag/sql-marketing-attribution-kpi-engine
-- Project: High-Conversion Dynamic Subquery Revenue Attribution Engine
-- Objective: Dynamic Subquery Attribution of High-Value Converted Leads
-- Target Engine: PostgreSQL 14+ / MySQL 8.0+
-- ============================================================================

-- 1. Enable query timing for diagnostic profiling
\timing on

-- 2. Production Dynamic Attribution Engine
SELECT 
  m.lead_id,
  m.campaign_name,
  o.amount
FROM marketing_leads m
JOIN orders o 
  ON m.customer_id = o.customer_id
WHERE o.amount > (
  SELECT AVG(amount) 
  FROM orders
);

-- 3. Live Execution Plan Diagnostic Profiling
EXPLAIN (ANALYZE, BUFFERS, COSTS, VERBOSE)
SELECT 
  m.lead_id,
  m.campaign_name,
  o.amount
FROM marketing_leads m
JOIN orders o 
  ON m.customer_id = o.customer_id
WHERE o.amount > (
  SELECT AVG(amount) 
  FROM orders
);
