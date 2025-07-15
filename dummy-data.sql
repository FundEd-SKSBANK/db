INSERT INTO user (id, name, email_id, ph_no, password) 
VALUES ('2', 'john', 'john@example.com', 9876543210, 'john@123');



INSERT INTO student (name, id, email_id, ph_no, roll_no, created_by, updated_by, created_at, updated_at) VALUES
('sabin', 1, 'sabin@example.com', 9800000001, 52, 1, 1, '10:00:00', '10:00:00'),
('gautham', 2, 'gautham@example.com', 9800000002, 33, 1, 1, '10:00:00', '10:00:00'),
('amil', 3, 'amil@example.com', 9800000003, 18, 1, 1, '10:00:00', '10:00:00'),
('john', 4, 'john@example.com', 9800000004, 19, 1, 1, '10:00:00', '10:00:00'),
('jane', 5, 'jane@example.com', 9800000005, 20, 1, 1, '10:00:00', '10:00:00'),
('alice', 6, 'alice@example.com', 9800000006, 21, 1, 1, '10:00:00', '10:00:00'),
('bob', 7, 'bob@example.com', 9800000007, 22, 1, 1, '10:00:00', '10:00:00'),
('charlie', 8, 'charlie@example.com', 9800000008, 23, 1, 1, '10:00:00', '10:00:00'),
('diana', 9, 'diana@example.com', 9800000009, 24, 1, 1, '10:00:00', '10:00:00'),
('eve', 10, 'eve@example.com', 9800000010, 25, 1, 1, '10:00:00', '10:00:00');



INSERT INTO event_details (id,name,type, cost,, created_by, updated_by, created_at, updated_at) VALUES
("we-2342-23412","DBMS_LAB_RECORD","print","100",1, 1, '10:00:00', '10:00:00');


INSERT INTO event_purchase (
    id, 
    event_details_id, 
    student_id, 
    mode_of_payement,  -- Corrected column name
    created_by, 
    updated_by
) VALUES (
    "we-23433-23412", 
    "we-2342-23412", 
    "1", 
    "cash", 
    '10:00:00', 
    '10:00:00'
);

 
