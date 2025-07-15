CREATE TABLE user (
    id          VARCHAR(100) PRIMARY KEY,
    name        VARCHAR(30),
    email_id    VARCHAR(30),
    ph_no       INT(15),
    password    VARCHAR(200)
);

CREATE TABLE student (
    id          VARCHAR(100) PRIMARY KEY,
    name        VARCHAR(30),
    email_id    VARCHAR(30),
    ph_no       INT(15),
    roll_no     INT,
    created_by  VARCHAR(100),
    updated_by  VARCHAR(100),
    created_at  TIME,
    updated_at  TIME,
    FOREIGN KEY (created_by) REFERENCES user (id),
    FOREIGN KEY (updated_by) REFERENCES user (id)
);

CREATE TABLE event_details (
    id          VARCHAR(100) PRIMARY KEY,
    name        VARCHAR(100),
    type        VARCHAR(20),
    cost        VARCHAR(50),
    created_by  VARCHAR(100),
    updated_by  VARCHAR(100),
    created_at  TIME,
    updated_at  TIME,
    FOREIGN KEY (created_by) REFERENCES user (id),
    FOREIGN KEY (updated_by) REFERENCES user (id)
);

CREATE TABLE event_purchase (
    id VARCHAR(100) PRIMARY KEY,
    event_details_id VARCHAR(100),
    student_id VARCHAR(100),
    mode_of_payement VARCHAR(50),
    created_by  VARCHAR(100),
    updated_by  VARCHAR(100),
    FOREIGN KEY (event_details_id) REFERENCES event_details(id),
    FOREIGN KEY (student_id) REFERENCES student(id)
);



