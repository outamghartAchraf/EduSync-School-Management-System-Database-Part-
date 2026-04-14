USE edusync;

/*--- ROLES ------- */
INSERT INTO roles (role_name) VALUES ('Admin'), ('Professor'), ('Student');


/*---- USERS ------ */

INSERT INTO users (firstname, lastname, email, password, role_id) VALUES
('Admin', 'System', 'admin@gmail.com', 'admin123', 1),
('Ahmed', 'hari', 'ahmed@gmail.com.com', 'ahmed123', 2),
('hicham', 'benAmrani', 'hicham@gmail.com', 'hicham123', 2),
('achraf', 'outamghart', 'achraf@gmail.com', 'achraf123', 3),
('Salma', 'idris', 'salma.idris@gmail.com', 'salma123', 3),
 

