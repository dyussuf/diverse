DROP TABLE student;

CREATE TABLE IF NOT EXISTS student (
    idstudent INTEGER PRIMARY KEY,
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL,
    field TEXT NOT NULL,
    average REAL NOT NULL CHECK(average BETWEEN 0 AND 20),
    city TEXT NOT NULL
);

INSERT INTO student  VALUES
(1, 'Ali', 'Hassan', 'Mathematics', 17.5, 'Taza'),
(2, 'Sarah', 'Mohammad', 'Economy', 18.3, 'Taza'),
(3, 'Omar', 'Yussuf', 'Mathematics', 16.0, 'Meknes'),
(4, 'Laila', 'Ahmad', 'Economy', 14.4, 'Taza'),
(5, 'Khalid', 'Ali', 'Mathematics', 19.2, 'Fes'),
(6, 'Fatima', 'Salem', 'Economy', 15.7, 'Meknes'),
(7, 'Noor', 'Hussein', 'Mathematics', 18.1, 'Fes'),
(8, 'Ibrahim', 'Zaid', 'Economy', 19.8, 'Fes'),
(9, 'Aya', 'Nasser', 'Mathematics', 14.5, 'Fes'),
(10, 'Huda', 'Fahmi', 'Economy', 13.0, 'Taza'),
(11, 'Salma', 'Jamal', 'Mathematics', 17.3, 'Fes'),
(12, 'Yassin', 'Othman', 'Economy', 12.4, 'Taza'),
(13, 'Amina', 'Sami', 'Mathematics', 19.2, 'Taza'),
(14, 'Hassan', 'Rami', 'Economy', 18.7, 'Fes'),
(15, 'Tariq', 'Bassam', 'Mathematics', 15.9, 'Meknes'),
(16, 'Lina', 'Aref', 'Economy', 14.2, 'Taza'),
(17, 'Zainab', 'Hadi', 'Mathematics', 17.5, 'Taza'),
(18, 'Rashid', 'Kamal', 'Economy', 19.1, 'Meknes'),
(19, 'Yara', 'Fadel', 'Mathematics', 12.6, 'Meknes'),
(20, 'Noor', 'Mahmood', 'Economy', 16.7, 'Fes');
