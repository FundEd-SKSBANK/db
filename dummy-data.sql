
INSERT INTO user (id, name, email_id, ph_no, role, password) VALUES
('admin1', 'Admin User', 'admin@college.edu', '9876543210', 'admin', 'adminpass'),
('staff1', 'Class Staff', 'staff@college.edu', '9876543211', 'staff', 'staffpass');

INSERT INTO class (id, name, section, year, created_by, updated_by) VALUES
('class_csa_s5', 'CSA S5 CSE', 'A', '2023', 'admin1', 'admin1');

INSERT INTO student (id, name, email_id, ph_no, roll_no, class_id, created_by, updated_by) VALUES
('stu_001', 'Sabin', 'sabin@college.edu', '9447823456', 52, 'class_csa_s5', 'staff1', 'staff1'),
('stu_002', 'Gautham', 'gautham@college.edu', '9447823457', 33, 'class_csa_s5', 'staff1', 'staff1'),
('stu_003', 'Geo', 'geo@college.edu', '9447823458', 34, 'class_csa_s5', 'staff1', 'staff1'),
('stu_004', 'Shawkath', 'shawkath@college.edu', '9447823459', 44, 'class_csa_s5', 'staff1', 'staff1'),
('stu_005', 'Sherin', 'sherin@college.edu', '9447823460', 54, 'class_csa_s5', 'staff1', 'staff1'),
('stu_006', 'Madhan', 'madhan@college.edu', '9447823461', 56, 'class_csa_s5', 'staff1', 'staff1'),
('stu_007', 'Amil', 'amil@college.edu', '9447823462', 18, 'class_csa_s5', 'staff1', 'staff1');

INSERT INTO fund_transaction (id, class_id, transaction_type, amount, description, reference_id, transaction_date, created_by) VALUES
('ft_001', 'class_csa_s5', 'DEPOSIT', 50000.00, 'Class Fund Opening', 'REF001', '2023-09-01', 'staff1'),
('ft_002', 'class_csa_s5', 'EXPENSE', 12000.00, 'Lab Equipment', 'REF002', '2023-09-05', 'staff1'),
('ft_003', 'class_csa_s5', 'DEPOSIT', 25000.00, 'College Grant', 'REF003', '2023-09-10', 'staff1');

INSERT INTO fund_balance (id, class_id, balance) VALUES
('fb_001', 'class_csa_s5', 63000.00);

INSERT INTO event_details (id, name, type, cost, description, event_date, deadline, class_id, created_by, updated_by)
VALUES
('event_001', 'Tech Fest', 'Academic', 300, 'Department Event', '2023-10-20 10:00:00', '2023-10-15', 'class_csa_s5', 'staff1', 'staff1'),
('event_002', 'Farewell', 'Social', 200, 'Class farewell event', '2023-11-10 15:00:00', '2023-11-05', 'class_csa_s5', 'staff1', 'staff1');

INSERT INTO payment (id, student_id, payment_method, total_amt, payment_status, transaction_id, reciept_number, notes, updated_by, created_by)
VALUES
('pay_001', 'stu_001', 'Cash', 300, 'Paid', 1111, 5001, 'Paid for Tech Fest', 'staff1', 'staff1'),
('pay_002', 'stu_002', 'Online', 300, 'Paid', 1112, 5002, 'Paid for Tech Fest', 'staff1', 'staff1'),
('pay_003', 'stu_003', 'UPI', 200, 'Paid', 1113, 5003, 'Paid for Farewell', 'staff1', 'staff1'),
('pay_004', 'stu_004', 'Online', 500, 'Paid', 1114, 5004, 'Paid for both events', 'staff1', 'staff1');

INSERT INTO payment_details (id, payment_id, event_id, amount, discount, final_amt)
VALUES
('pd_001', 'pay_001', 'event_001', 300, 0, 300),
('pd_002', 'pay_002', 'event_001', 300, 0, 300),
('pd_003', 'pay_003', 'event_002', 200, 0, 200),
('pd_004', 'pay_004', 'event_001', 300, 0, 300),
('pd_005', 'pay_004', 'event_002', 200, 0, 200);

INSERT INTO event_purchase (id, event_details_id, student_id, payment_id, created_by, purchase_status, purchase_date)
VALUES
('ep_001', 'event_001', 'stu_001', 'pay_001', 'staff1', 'Confirmed', '2023-10-01'),
('ep_002', 'event_001', 'stu_002', 'pay_002', 'staff1', 'Confirmed', '2023-10-02'),
('ep_003', 'event_002', 'stu_003', 'pay_003', 'staff1', 'Confirmed', '2023-11-01'),
('ep_004', 'event_001', 'stu_004', 'pay_004', 'staff1', 'Confirmed', '2023-10-03'),
('ep_005', 'event_002', 'stu_004', 'pay_004', 'staff1', 'Confirmed', '2023-11-02');
