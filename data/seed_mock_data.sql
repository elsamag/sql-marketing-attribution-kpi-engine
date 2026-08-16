-- ============================================================================
-- Seed Mock Data: ApexGrowth Media High-Value Benchmark Cohort
-- ============================================================================

INSERT INTO orders (order_id, customer_id, amount, order_date) VALUES
(201, 10482, 1240.50, '2026-08-01'),
(202, 10519, 890.00,  '2026-08-02'),
(203, 10644, 1450.00, '2026-08-03'),
(204, 10702, 980.20,  '2026-08-04'),
(205, 10881, 2100.00, '2026-08-05'),
(206, 10910, 320.00,  '2026-08-06'),
(207, 10955, 410.50,  '2026-08-07'),
(208, 11002, 150.00,  '2026-08-08')
ON CONFLICT (order_id) DO NOTHING;

INSERT INTO marketing_leads (lead_id, campaign_name, customer_id) VALUES
('L-10482', 'Q3_Search_Scale',    10482),
('L-10519', 'Meta_Retarget_Pro',  10519),
('L-10644', 'TikTok_Influencer',  10644),
('L-10702', 'Q3_Search_Scale',    10702),
('L-10881', 'Email_Retention_V2', 10881),
('L-10910', 'Meta_Retarget_Pro',  10910),
('L-10955', 'TikTok_Influencer',  10955),
('L-11002', 'Organic_Referral',   11002)
ON CONFLICT (lead_id) DO NOTHING;
