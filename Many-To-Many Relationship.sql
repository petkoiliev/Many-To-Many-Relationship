CREATE TABLE Students
(
StudentID INT PRIMARY KEY IDENTITY,
Name VARCHAR(20) NOT NULL
)

CREATE TABLE Exams
(
ExamID INT PRIMARY KEY IDENTITY(101,1),
Name VARCHAR(20)
)

CREATE TABLE StudentsExams
(
StudentID INT,
ExamID INT 

CONSTRAINT PK_Studens_Exams PRIMARY KEY(StudentID , ExamID),       --Тук правим StudendID и ExamID PRIMARY KEY!!!!
CONSTRAINT FK_Sudents FOREIGN KEY (StudentID) REFERENCES Students(StudentID),   --Тук свързваме StudentID да отговаря на таблицата Students и колоната StudentID
CONSTRAINT FK_Exams FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)
)

INSERT INTO Students VALUES
('Mila'),
('Toni'),
('Ron')

INSERT INTO Exams VALUES
('SpringMVC'),
('Neo4j'),
('Oracle 11g')

INSERT INTO StudentsExams VALUES
(1,101),
(1,102),
(2,101),
(3,103),
(2,102),
(2,103)