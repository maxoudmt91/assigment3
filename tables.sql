SELECT pg_catalog.set_config('search_path', 'schema', false);

CREATE TABLE Teacher(
   TeacherID VARCHAR(50),
   Firstname VARCHAR(50),
   Lastname VARCHAR(50),
   Seniority INT,
   PRIMARY KEY(TeacherID)
);

CREATE TABLE Student(
   StudentID VARCHAR(50),
   Firstname VARCHAR(50),
   Lastname VARCHAR(50),
   Address VARCHAR(50),
   PRIMARY KEY(StudentID)
);

CREATE TABLE Course(
   CourseID VARCHAR(50),
   CourseInfo VARCHAR(50),
   CourseDuration TIME,
   CourseCoef INT,
   PRIMARY KEY(CourseID)
);

CREATE TABLE Classroom(
   ClassroomID VARCHAR(50),
   Capacity INT,
   ClassroomFloor VARCHAR(50),
   ClassroomBuilding VARCHAR(50),
   CourseID VARCHAR(50),
   PRIMARY KEY(ClassroomID),
   FOREIGN KEY(CourseID) REFERENCES Course(CourseID)
);

CREATE TABLE Teach(
   TeacherID VARCHAR(50),
   CourseID VARCHAR(50),
   PRIMARY KEY(TeacherID, CourseID),
   FOREIGN KEY(TeacherID) REFERENCES Teacher(TeacherID),
   FOREIGN KEY(CourseID) REFERENCES Course(CourseID)
);

CREATE TABLE Have(
   StudentID VARCHAR(50),
   CourseID VARCHAR(50),
   PRIMARY KEY(StudentID, CourseID),
   FOREIGN KEY(StudentID) REFERENCES Student(StudentID),
   FOREIGN KEY(CourseID) REFERENCES Course(CourseID)
);
