CREATE TABLE user(
    id VARCHAR(40) PRIMARY KEY, 
    name VARCHAR(30) NOT NULL,
    email_id VARCHAR(30) NOT NULL, 
    ph_no VARCHAR(15) NOT NULL,
    role VARCHAR(20) NOT NULL,
    password VARCHAR(200) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE class(
    id VARCHAR(30) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    section VARCHAR(10) NOT NULL,
    year VARCHAR(10) NOT NULL,
    created_by VARCHAR(30) NOT NULL,
    updated_by VARCHAR(30) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (created_by) REFERENCES user(id),
    FOREIGN KEY (updated_by) REFERENCES user(id)
);

CREATE TABLE student(
    id VARCHAR(40) PRIMARY KEY, 
    name VARCHAR(30) NOT NULL,
    email_id VARCHAR(30),
    ph_no VARCHAR(15),
    roll_no INT,
    class_id VARCHAR(40),
    created_by VARCHAR(40),
    updated_by VARCHAR(40),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (created_by) REFERENCES user(id),
    FOREIGN KEY (updated_by) REFERENCES user(id),
    FOREIGN KEY (class_id) REFERENCES class(id)
); 

CREATE TABLE fund_transaction(
    id VARCHAR(40) PRIMARY KEY,
    class_id VARCHAR(40),	
    transaction_type VARCHAR(30) NOT NULL,
    amount DECIMAL(20) NOT NULL,
    description VARCHAR(200) NOT NULL,
    reference_id VARCHAR(100) NOT NULL,
    transaction_date DATE NOT NULL,
    created_by VARCHAR(40),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (created_by) REFERENCES user(id),
    FOREIGN KEY (class_id) REFERENCES class(id)
);

CREATE TABLE fund_balance(
    id VARCHAR(40) PRIMARY KEY,
    class_id VARCHAR(40),	
    balance DECIMAL(10) NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (class_id) REFERENCES class(id)
);

CREATE TABLE payment(
id              VARCHAR(40)  PRIMARY KEY,
student_id      VARCHAR(40)  NOT NULL,
payment_method  VARCHAR(30)  NOT NULL,
updated_by      VARCHAR(30)  NOT NULL,
created_by      VARCHAR(30)  NOT NULL,
total_amt       INT          NOT NULL,
updated_at      TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
payment_date    TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
payment_status  VARCHAR(30)  NOT NULL,
transaction_id  INT          NOT NULL,
reciept_number  INT          NOT NULL,
created_at      TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
notes           VARCHAR(30)  NOT NULL,
FOREIGN KEY (created_by) REFERENCES user(id),
FOREIGN KEY (updated_by) REFERENCES user(id),
FOREIGN KEY (student_id) REFERENCES student(id)
);

CREATE TABLE event_details(
id              VARCHAR(40)  PRIMARY KEY,
name            VARCHAR(30)  NOT NULL,
type            VARCHAR(30)  NOT NULL,
updated_at      TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
cost            INT          NOT NULL,
description     VARCHAR(30)  NOT NULL,
event_date      TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
deadline        TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
class_id        VARCHAR(40),
created_by      VARCHAR(30),
updated_by      VARCHAR(30),
created_at      TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (updated_by) REFERENCES user(id),
FOREIGN KEY (created_by) REFERENCES user(id),
FOREIGN KEY (class_id) REFERENCES class(id)
);

CREATE TABLE payment_details(
id              VARCHAR(40)  PRIMARY KEY,
payment_id      INT,
event_id   VARCHAR(30),
amount          INT          NOT NULL,
discount        INT          NOT NULL,
final_amt       INT          NOT NULL,
created_at      TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (payment_id) REFERENCES payment(id),
FOREIGN KEY (event_id) REFERENCES event_details(id)
);


CREATE TABLE event_purchase(
id                VARCHAR(40) PRIMARY KEY,
event_details_id  INT,
student_id        INT,
payment_id        INT,
updated_at        TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
created_at        TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
created_by	      VARCHAR(30),
purchase_status   VARCHAR(30) NOT NULL,
purchase_date     DATE,
FOREIGN KEY (created_by) REFERENCES user(id),
FOREIGN KEY (event_details_id) REFERENCES event_details(id),
FOREIGN KEY (student_id) REFERENCES student(id),
FOREIGN KEY (payment_id) REFERENCES payment(id)
);
