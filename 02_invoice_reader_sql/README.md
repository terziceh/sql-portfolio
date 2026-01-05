# Utility Invoice Reader — SQL Schema & Status View

## Overview
This project highlights the database layer of an automated utility invoice reader.
Invoice PDFs are processed upstream, and extracted fields are stored in a relational
database using a staging → master workflow.

This portfolio entry focuses on **SQL schema design** and a **status-based view**
rather than application logic.

## Database Platform
SQLite (portable demo version of a production-style workflow)

## Tables
- `invoices_raw` — raw uploaded invoice files (audit trail)
- `invoices_staging` — extracted fields + validation status
- `invoices_master` — approved invoices for reporting

## Key Concept Demonstrated
- Staging vs. master modeling
- Status-driven workflow (`pending`, `approved`)
- SQL view for operational visibility
