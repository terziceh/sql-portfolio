PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS invoices_raw (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  filename TEXT NOT NULL,
  uploaded_at TEXT NOT NULL DEFAULT (datetime('now')),
  file_bytes BLOB NOT NULL
);

CREATE TABLE IF NOT EXISTS invoices_staging (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  raw_id INTEGER NOT NULL,

  vendor TEXT,
  account_number TEXT,
  invoice_date TEXT,   -- ISO YYYY-MM-DD
  bill_date TEXT,
  due_date TEXT,

  usage_kwh INTEGER,
  total_amount_due REAL,

  status TEXT NOT NULL DEFAULT 'pending',
  validation_errors TEXT,

  FOREIGN KEY (raw_id) REFERENCES invoices_raw(id)
);

CREATE TABLE IF NOT EXISTS invoices_master (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  staging_id INTEGER NOT NULL,

  vendor TEXT,
  account_number TEXT,
  invoice_date TEXT,
  total_amount_due REAL,
  approved_at TEXT NOT NULL DEFAULT (datetime('now')),

  FOREIGN KEY (staging_id) REFERENCES invoices_staging(id)
);
