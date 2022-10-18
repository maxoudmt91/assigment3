SELECT pg_catalog.set_config('search_path', 'schema', false);

Insert into Student (StudentID,Lastname,Firstname, Address) values ('A101', 'Sou', 'Manu', '55 Tree Road');
Insert into Classroom (ClassroomID,Capacity,ClassroomFloor, ClassroomBuilding) values ('C105', '48', '3', 'B48');
Insert into Course (CourseID,CourseInfo,CourseDuration, CourseCoef) values ('X452', 'English', '1:15:0', '3');
Insert into Teacher (TeacherID,Firstname,Lastname, Seniority) values ('T30', 'Jack', 'Dell', '6');
Insert into Teacher (TeacherID,Firstname,Lastname, Seniority) values ('T20','Brian', 'Oconner', '5'); 
Insert into Course (CourseID,CourseInfo,CourseDuration, CourseCoef) values ('X455', 'Maths', '1:15:0', '3');
Insert into Course (CourseID,CourseInfo,CourseDuration,CourseCoef) values ('X924', 'Web Programming', '1:05', '2');
Insert into Student (StudentID,Lastname,Firstname,Address) values ('A102', 'Sil', 'Alex', '12 Road');
Insert into Classroom (ClassroomID,Capacity,ClassroomFloor,ClassroomBuilding, CourseID) values ('C105', '48', '3', 'B48','X452');
Insert into Classroom (ClassroomID,Capacity,ClassroomFloor,ClassroomBuilding, CourseID) values ('C205', '25', '2', 'C12','X924');
Insert into Teach(TeacherID,CourseID) values('T30','X452');
Insert into Teach(TeacherID,CourseID) values('T20','X455');
Insert into Have(StudentID, CourseID) values('A101','X452');
Insert into Have(StudentID, CourseID) values('A102','X452');
