
# EduSync : School Management System (Database Part)

## Overview

This project represents the database design of **EduSync**, a School Management System.
The goal is to organize users, students, classes, courses, and enrollments using a normalized relational database.


<img width="1840" height="674" alt="D1" src="https://github.com/user-attachments/assets/e19728ef-dc4e-4b59-a691-dd2b3650e648" />
---

## Relationships Explanation

## 1:1 (One-to-One)

**users ↔ students**

 Each user is linked to only one student
 Each student is linked to only one user

  Implementation:

  `students.user_id` → references `users.id`
  `UNIQUE` constraint ensures one-to-one

  Purpose:

  Separate authentication data (users) from student data (students)

---

##   1:N (One-to-Many)

### 1. roles → users

  One role (Admin / Prof / Student) can have multiple users
  Each user has only one role

   Example:

  Role "Student" → many users

---

### 2. classes → students

  One class contains many students
  Each student belongs to only one class

  Example:

  "Dev Web 2026" → 20 students

---

### 3. users (teacher) → courses

  One teacher can teach multiple courses
  Each course has only one teacher

  Example:

  Prof Sara → HTML, CSS, JS

---

##  N:N (Many-to-Many)

**students ↔ courses**

  A student can enroll in multiple courses
  A course can have multiple students

  Solution:
A junction table → `enrollments`

Contains:

  `student_id`
  `course_id`

  Role:

  Links students and courses together

---


## Conclusion

The database is designed in a normalized way to ensure:

* Reduced redundancy
* Data consistency
* Scalability
