
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
