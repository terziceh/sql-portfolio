-- ============================
-- INSERT VALUES INTO TABLES
-- ============================
-- Oracle SQL
-- NOTE: Identity columns are not explicitly inserted (IDs auto-generate).
-- Assumes inserts run in order so IDs map 1..10 as expected.

-- ----------------------------
-- Organization
-- ----------------------------
INSERT ALL
    INTO Organization (Name) VALUES ('TechCorp')
    INTO Organization (Name) VALUES ('EduPlus')
    INTO Organization (Name) VALUES ('MediHealth')
    INTO Organization (Name) VALUES ('GreenEnergy')
    INTO Organization (Name) VALUES ('FinServ')
    INTO Organization (Name) VALUES ('InnovateX')
    INTO Organization (Name) VALUES ('MarketMakers')
    INTO Organization (Name) VALUES ('HealthFirst')
    INTO Organization (Name) VALUES ('EcoSystems')
    INTO Organization (Name) VALUES ('FuturePath')
SELECT * FROM dual;

-- ----------------------------
-- Student
-- ----------------------------
INSERT ALL
    INTO Student (Name, Email, PhoneNumber) VALUES ('Alice Johnson', 'alice.johnson@example.com', '123-456-7890')
    INTO Student (Name, Email, PhoneNumber) VALUES ('Bob Smith', 'bob.smith@example.com', '234-567-8901')
    INTO Student (Name, Email, PhoneNumber) VALUES ('Charlie Brown', 'charlie.brown@example.com', '345-678-9012')
    INTO Student (Name, Email, PhoneNumber) VALUES ('Diana Prince', 'diana.prince@example.com', '456-789-0123')
    INTO Student (Name, Email, PhoneNumber) VALUES ('Evan Davis', 'evan.davis@example.com', '567-890-1234')
    INTO Student (Name, Email, PhoneNumber) VALUES ('Fiona Gallagher', 'fiona.gallagher@example.com', '678-901-2345')
    INTO Student (Name, Email, PhoneNumber) VALUES ('George Lee', 'george.lee@example.com', '789-012-3456')
    INTO Student (Name, Email, PhoneNumber) VALUES ('Hannah Kim', 'hannah.kim@example.com', '890-123-4567')
    INTO Student (Name, Email, PhoneNumber) VALUES ('Isaac Newton', 'isaac.newton@example.com', '901-234-5678')
    INTO Student (Name, Email, PhoneNumber) VALUES ('Julia Roberts', 'julia.roberts@example.com', '012-345-6789')
SELECT * FROM dual;

-- ----------------------------
-- Administrator
-- (OrganizationID is FK 1..10 created above)
-- ----------------------------
INSERT ALL
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin One', 'admin1@example.com', '111-222-3333', 'HR Manager', 1)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Two', 'admin2@example.com', '222-333-4444', 'Recruiter', 2)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Three', 'admin3@example.com', '333-444-5555', 'Coordinator', 3)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Four', 'admin4@example.com', '444-555-6666', 'Hiring Manager', 4)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Five', 'admin5@example.com', '555-666-7777', 'Director', 5)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Six', 'admin6@example.com', '666-777-8888', 'Recruiter', 6)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Seven', 'admin7@example.com', '777-888-9999', 'Admin Assistant', 7)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Eight', 'admin8@example.com', '888-999-0000', 'Coordinator', 8)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Nine', 'admin9@example.com', '999-000-1111', 'HR Manager', 9)
    INTO Administrator (Name, Email, PhoneNumber, Role, OrganizationID) VALUES ('Admin Ten', 'admin10@example.com', '000-111-2222', 'Director', 10)
SELECT * FROM dual;

-- ----------------------------
-- Posting
-- (OrganizationID FK is 1..10)
-- ----------------------------
INSERT ALL
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Software Intern', 'Internship at TechCorp.', 1, DATE '2025-06-01', 'Internship', 'Part time')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Marketing Assistant', 'Marketing support at EduPlus.', 2, DATE '2025-05-15', 'Job', 'Full time')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Research Intern', 'Research at MediHealth.', 3, DATE '2025-08-01', 'Internship', 'Temporary')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Physics Lab Assistant', 'Lab Assistant at GreenEnergy.', 4, DATE '2025-07-10', 'Internship', 'Part time')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Sales Representative', 'Sales at FinServ.', 5, DATE '2025-04-30', 'Job', 'Full time')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Finance Intern', 'Internship at InnovateX.', 6, DATE '2025-05-20', 'Internship', 'Part time')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Engineer I', 'Engineer role at MarketMakers.', 7, DATE '2025-09-01', 'Job', 'Full time')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Psychology Research Assistant', 'Research role at HealthFirst.', 8, DATE '2025-06-15', 'Internship', 'Temporary')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Math Tutor', 'Tutoring role at EcoSystems.', 9, DATE '2025-05-01', 'Job', 'Part time')
    INTO Posting (Title, Description, OrganizationID, Deadline, Type, Hours)
        VALUES ('Nursing Assistant', 'Nursing support at FuturePath.', 10, DATE '2025-04-25', 'Job', 'Full time')
SELECT * FROM dual;

-- ----------------------------
-- Academic
-- (StudentID FK is 1..10)
-- ----------------------------
INSERT ALL
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (1, 'Computer Science', 'VCU', 2025, 3.75)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (2, 'Business', 'VCU', 2024, 3.50)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (3, 'Biology', 'VCU', 2026, 3.20)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (4, 'Physics', 'VCU', 2025, 3.90)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (5, 'Marketing', 'VCU', 2023, 3.60)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (6, 'Finance', 'VCU', 2024, 3.55)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (7, 'Engineering', 'VCU', 2025, 3.80)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (8, 'Psychology', 'VCU', 2026, 3.40)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (9, 'Mathematics', 'VCU', 2024, 3.95)
    INTO Academic (StudentID, Major, School, GraduationYear, GPA) VALUES (10, 'Nursing', 'VCU', 2023, 3.70)
SELECT * FROM dual;

-- ----------------------------
-- Student_Authentication
-- ----------------------------
INSERT ALL
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (1, 'hash1')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (2, 'hash2')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (3, 'hash3')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (4, 'hash4')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (5, 'hash5')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (6, 'hash6')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (7, 'hash7')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (8, 'hash8')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (9, 'hash9')
    INTO Student_Authentication (StudentID, PasswordHash) VALUES (10, 'hash10')
SELECT * FROM dual;

-- ----------------------------
-- Admin_Authentication
-- (AdminID FK is 1..10 because Administrators were inserted in order)
-- ----------------------------
INSERT ALL
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (1, 'adminhash1')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (2, 'adminhash2')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (3, 'adminhash3')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (4, 'adminhash4')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (5, 'adminhash5')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (6, 'adminhash6')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (7, 'adminhash7')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (8, 'adminhash8')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (9, 'adminhash9')
    INTO Admin_Authentication (AdminID, PasswordHash) VALUES (10, 'adminhash10')
SELECT * FROM dual;

-- ----------------------------
-- Administrator_Posting (M:M)
-- (AdminID and PostingID both map 1..10 from insert order)
-- ----------------------------
INSERT ALL
    INTO Administrator_Posting (AdminID, PostingID) VALUES (1, 1)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (2, 2)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (3, 3)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (4, 4)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (5, 5)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (6, 6)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (7, 7)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (8, 8)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (9, 9)
    INTO Administrator_Posting (AdminID, PostingID) VALUES (10, 10)
SELECT * FROM dual;

-- ----------------------------
-- Application
-- (ApplicationID is identity; StudentID and PostingID are FK 1..10)
-- ----------------------------
INSERT ALL
    INTO Application (StudentID, PostingID, Status) VALUES (1, 1, 'Pending')
    INTO Application (StudentID, PostingID, Status) VALUES (2, 2, 'Pending')
    INTO Application (StudentID, PostingID, Status) VALUES (3, 3, 'Accepted')
    INTO Application (StudentID, PostingID, Status) VALUES (4, 4, 'Rejected')
    INTO Application (StudentID, PostingID, Status) VALUES (5, 5, 'Pending')
    INTO Application (StudentID, PostingID, Status) VALUES (6, 6, 'Accepted')
    INTO Application (StudentID, PostingID, Status) VALUES (7, 7, 'Pending')
    INTO Application (StudentID, PostingID, Status) VALUES (8, 8, 'Rejected')
    INTO Application (StudentID, PostingID, Status) VALUES (9, 9, 'Accepted')
    INTO Application (StudentID, PostingID, Status) VALUES (10, 10, 'Pending')
SELECT * FROM dual;

-- ----------------------------
-- Document
-- (DocumentID identity; StudentID FK; ApplicationID FK assumed 1..10 by insert order above)
-- ----------------------------
INSERT ALL
    INTO Document (StudentID, ApplicationID, Type) VALUES (1, 1, 'Resume')
    INTO Document (StudentID, ApplicationID, Type) VALUES (2, 2, 'Cover Letter')
    INTO Document (StudentID, ApplicationID, Type) VALUES (3, 3, 'Transcript')
    INTO Document (StudentID, ApplicationID, Type) VALUES (4, 4, 'Resume')
    INTO Document (StudentID, ApplicationID, Type) VALUES (5, 5, 'Cover Letter')
    INTO Document (StudentID, ApplicationID, Type) VALUES (6, 6, 'Transcript')
    INTO Document (StudentID, ApplicationID, Type) VALUES (7, 7, 'Resume')
    INTO Document (StudentID, ApplicationID, Type) VALUES (8, 8, 'Cover Letter')
    INTO Document (StudentID, ApplicationID, Type) VALUES (9, 9, 'Transcript')
    INTO Document (StudentID, ApplicationID, Type) VALUES (10, 10, 'Resume')
SELECT * FROM dual;

-- ----------------------------
-- Application_Document
-- (ApplicationID FK 1..10; DocumentID FK 1..10 by insert order above)
-- ----------------------------
INSERT ALL
    INTO Application_Document (ApplicationID, DocumentID) VALUES (1, 1)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (2, 2)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (3, 3)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (4, 4)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (5, 5)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (6, 6)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (7, 7)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (8, 8)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (9, 9)
    INTO Application_Document (ApplicationID, DocumentID) VALUES (10, 10)
SELECT * FROM dual;

-- ----------------------------
-- Reminder
-- (ReminderID identity; StudentID/ApplicationID FK 1..10)
-- ----------------------------
INSERT ALL
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (1, 1, DATE '2025-05-30', 'Follow up on Software Intern')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (2, 2, DATE '2025-05-10', 'Interview prep for Marketing Assistant')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (3, 3, DATE '2025-07-30', 'Research paper deadline')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (4, 4, DATE '2025-07-05', 'Reapply for Physics Lab Assistant')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (5, 5, DATE '2025-04-28', 'Final call for Sales Rep')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (6, 6, DATE '2025-05-18', 'Confirm details for Finance Intern')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (7, 7, DATE '2025-08-28', 'Prepare onboarding for Engineer I')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (8, 8, DATE '2025-06-10', 'Follow up with Research Assistant')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (9, 9, DATE '2025-04-29', 'Arrange Tutoring Materials')
    INTO Reminder (StudentID, ApplicationID, Deadline, Message) VALUES (10, 10, DATE '2025-04-23', 'Final call for Nursing Assistant')
SELECT * FROM dual;