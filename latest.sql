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
