-- =========================================================
-- 04_views_indexes.sql
-- Indexes + Views (Oracle SQL)
-- Student Application Tracker
-- =========================================================

-- ============================
-- INDEXES (speed up joins/filters)
-- ============================

-- Foreign key indexes (common join keys)
CREATE INDEX idx_application_student_id ON Application(StudentID);
CREATE INDEX idx_application_posting_id ON Application(PostingID);

CREATE INDEX idx_document_student_id ON Document(StudentID);
CREATE INDEX idx_document_application_id ON Document(ApplicationID);

CREATE INDEX idx_admin_posting_admin_id ON Administrator_Posting(AdminID);
CREATE INDEX idx_admin_posting_posting_id ON Administrator_Posting(PostingID);

CREATE INDEX idx_app_doc_application_id ON Application_Document(ApplicationID);
CREATE INDEX idx_app_doc_document_id ON Application_Document(DocumentID);

CREATE INDEX idx_reminder_student_id ON Reminder(StudentID);
CREATE INDEX idx_reminder_application_id ON Reminder(ApplicationID);

-- Filter index (frequently queried column)
CREATE INDEX idx_application_status ON Application(Status);

-- ============================
-- VIEWS
-- ============================

-- View 1: "Active" applications (treat Pending as active) + their documents
CREATE OR REPLACE VIEW ActiveApplicationsWithDocuments AS
SELECT
    a.ApplicationID,
    a.StudentID,
    a.PostingID,
    a.Status,
    d.DocumentID,
    d.Type AS DocumentType,
    d.UploadedOn
FROM Application a
JOIN Document d ON a.ApplicationID = d.ApplicationID
WHERE a.Status = 'Pending';

-- View 2: Student’s current applications (Pending + Accepted)
CREATE OR REPLACE VIEW StudentApplications AS
SELECT
    s.StudentID,
    s.Name,
    a.ApplicationID,
    a.Status,
    p.Title,
    p.Deadline,
    p.Type AS PostingType,
    p.Hours
FROM Student s
JOIN Application a ON s.StudentID = a.StudentID
JOIN Posting p ON a.PostingID = p.PostingID
WHERE a.Status IN ('Pending', 'Accepted');

