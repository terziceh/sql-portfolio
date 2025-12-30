-- =========================================================
-- 03_queries_dml.sql
-- Student Application Tracker - Ten Queries (Oracle SQL)
-- =========================================================

-- 1) Show all applications submitted by the student with StudentID = 4
SELECT a.ApplicationID, a.PostingID, a.StudentID, s.Name, s.PhoneNumber
FROM Application a
JOIN Student s ON s.StudentID = a.StudentID
WHERE a.StudentID = 4;

-- 2) Show all applications submitted for the posting with PostingID = 7
SELECT a.ApplicationID, a.StudentID, s.Name, s.PhoneNumber
FROM Application a
JOIN Student s ON s.StudentID = a.StudentID
WHERE a.PostingID = 7;

-- 3) Show all documents attached to ApplicationID = 3
SELECT d.DocumentID, d.StudentID, s.Name, s.PhoneNumber, d.Type, d.UploadedOn
FROM Document d
JOIN Student s ON s.StudentID = d.StudentID
WHERE d.ApplicationID = 3;

-- 4) Which posting(s) are managed by AdminID = 9
SELECT p.PostingID, p.Title, p.Deadline
FROM Posting p
JOIN Administrator_Posting ap ON ap.PostingID = p.PostingID
WHERE ap.AdminID = 9;

-- 5) Which applications were submitted for PostingID = 2
--    between Jan 1, 2025 and May 1, 2025 (inclusive start, exclusive end)
-- NOTE: Application table does not store submission date in your schema.
-- Using Posting.CreatedOn as a proxy (based on your original query).
SELECT a.ApplicationID, a.StudentID, s.Name, s.PhoneNumber, p.PostingID, p.CreatedOn
FROM Application a
JOIN Student s ON s.StudentID = a.StudentID
JOIN Posting p ON p.PostingID = a.PostingID
WHERE a.PostingID = 2
  AND p.CreatedOn >= TO_DATE('2025-01-01', 'YYYY-MM-DD')
  AND p.CreatedOn <  TO_DATE('2025-05-02', 'YYYY-MM-DD');

-- 6) For each student, show the number of applications they have submitted
SELECT s.StudentID, s.Name, COUNT(a.ApplicationID) AS ApplicationCount
FROM Student s
LEFT JOIN Application a ON s.StudentID = a.StudentID
GROUP BY s.StudentID, s.Name
ORDER BY ApplicationCount DESC, s.StudentID;

-- 7) Show all documents linked to applications with 'Intern' in the posting title
SELECT d.DocumentID, d.Type, d.ApplicationID, p.Title, d.StudentID
FROM Document d
JOIN Application a ON d.ApplicationID = a.ApplicationID
JOIN Posting p ON a.PostingID = p.PostingID
WHERE UPPER(p.Title) LIKE '%INTERN%';

-- 8) Show all documents uploaded by StudentID = 6 for applications
--    with a deadline on or after March 1, 2025
-- NOTE: Your Document table does not have FileName, so removed it.
SELECT d.DocumentID, d.ApplicationID, d.Type, d.StudentID, p.Deadline
FROM Document d
JOIN Application a ON d.ApplicationID = a.ApplicationID
JOIN Posting p ON a.PostingID = p.PostingID
WHERE d.StudentID = 6
  AND p.Deadline >= TO_DATE('2025-03-01', 'YYYY-MM-DD')
ORDER BY p.Deadline, d.DocumentID;

-- 9) Which applications have reminders set for the next 7 days
SELECT a.ApplicationID, a.StudentID, r.Deadline, r.Message
FROM Application a
JOIN Reminder r ON a.ApplicationID = r.ApplicationID
WHERE r.Deadline >= TRUNC(SYSDATE)
  AND r.Deadline <  TRUNC(SYSDATE) + 7
ORDER BY r.Deadline;

-- 10) Show all students with Pending applications and list the document(s) they uploaded
SELECT s.StudentID, s.Name, a.ApplicationID, a.Status, d.DocumentID, d.Type
FROM Student s
JOIN Application a ON s.StudentID = a.StudentID
JOIN Document d ON a.ApplicationID = d.ApplicationID
WHERE a.Status = 'Pending'
ORDER BY s.StudentID, a.ApplicationID, d.DocumentID;
