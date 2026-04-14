USE edusync;

/*--- ROLES ------- */
INSERT INTO roles (role_name) VALUES ('Admin'), ('Professor'), ('Student');

/*---- USERS ------ */
INSERT INTO users (firstname, lastname, email, password, role_id) VALUES
('Admin', 'System', 'admin@gmail.com', 'admin123', 1),
('Ahmed', 'hari', 'ahmed@gmail.com', 'ahmed123', 2),
('hicham', 'benAmrani', 'hicham@gmail.com', 'hicham123', 2),
('achraf', 'outamghart', 'achraf@gmail.com', 'achraf123', 3),
('Salma', 'idris', 'salma@gmail.com', 'salma123', 3),
('SALAH', 'idris', 'SALAH@gmail.com', 'SALAH123', 3);

/*---- CLASSES ------ */
INSERT INTO classes (name, classroom_number) VALUES
('PHP LARAVEL 2026', 'A1'),
('MERN Stack 2026', 'B1'),
('JAVA  2026', 'A2');

/*---- STUDENTS ------ */
INSERT INTO students (date_of_birth, student_number, user_id, class_id) VALUES
('2001-05-10', 'S01', 4, 1),
('2000-11-22', 'S02', 5, 1),
('2002-03-15', 'S03', 6, 2);

/*---- COURSES ------ */
INSERT INTO courses (title, description, total_hours, prof_id) VALUES
('JavaScript', 'learnig javascript', 40, 2),
('Laravel', 'learning laravel php', 50, 2),
('react js', 'learning react js', 60, 3);

/*---- enrollments ------ */
INSERT INTO enrollments (enrolled_at, status, course_id, student_id) VALUES
('2026-04-01', 'active', 1, 1),
('2026-04-01', 'active', 2, 1),
('2026-04-02', 'active', 1, 2),
('2026-04-02', 'completed', 3, 2),
('2026-04-03', 'active', 3, 3);