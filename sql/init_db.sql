CREATE TABLE worker (
                        ID INT PRIMARY KEY AUTO_INCREMENT,
                        NAME VARCHAR(1000) NOT NULL CHECK (CHAR_LENGTH(NAME) >= 2),
                        BIRTHDAY DATE NOT NULL CHECK (YEAR(BIRTHDAY) > 1900),
    LEVEL ENUM('Trainee', 'Junior', 'Middle', 'Senior') NOT NULL,
    SALARY INT NOT NULL CHECK (SALARY BETWEEN 100 AND 100000)
);

CREATE TABLE client (
                        ID INT PRIMARY KEY AUTO_INCREMENT,
                        NAME VARCHAR(1000) NOT NULL CHECK (CHAR_LENGTH(NAME) >= 2)
);

CREATE TABLE project (
                         ID INT PRIMARY KEY AUTO_INCREMENT,
                         CLIENT_ID INT NOT NULL,
                         START_DATE DATE NOT NULL,
                         FINISH_DATE DATE NOT NULL,
                         FOREIGN KEY (CLIENT_ID) REFERENCES client(ID)
);

CREATE TABLE project_worker (
                                PROJECT_ID INT NOT NULL,
                                WORKER_ID INT NOT NULL,
                                PRIMARY KEY (PROJECT_ID, WORKER_ID),
                                FOREIGN KEY (PROJECT_ID) REFERENCES project(ID),
                                FOREIGN KEY (WORKER_ID) REFERENCES worker(ID)
);