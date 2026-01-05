CREATE VIEW IF NOT EXISTS v_invoice_status AS
SELECT
  s.id               AS staging_id,
  r.filename         AS source_file,
  s.vendor,
  s.account_number,
  s.invoice_date,
  s.due_date,
  s.total_amount_due,
  s.status,
  s.validation_errors
FROM invoices_staging s
JOIN invoices_raw r
  ON r.id = s.raw_id;
