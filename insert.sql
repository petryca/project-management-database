-- Insert data into Department table
INSERT INTO Department (name, email) VALUES
('Architecture', 'architecture@firm.com'),
('Engineering', 'engineering@firm.com'),
('Human Resources', 'hr@firm.com'),
('Finance', 'finance@firm.com');

-- Insert data into Position table
INSERT INTO Position (title) VALUES
('Senior Architect'),
('Junior Architect'),
('Structural Engineer'),
('Project Manager'),
('HR Manager'),
('Financial Analyst');

-- Insert data into Role table
INSERT INTO Role (title) VALUES
('Lead Architect'),
('Supporting Architect'),
('Project Manager'),
('Engineer'),
('Team Lead');

-- Insert data into Employee table
INSERT INTO Employee (name, email, position_id, department_id) VALUES
('Alice Johnson', 'alice.j@firm.com', 1, 1), -- Senior Architect, Architecture
('Bob Smith', 'bob.s@firm.com', 2, 1),       -- Junior Architect, Architecture
('Charlie Lee', 'charlie.l@firm.com', 3, 2), -- Structural Engineer, Engineering
('Diana Green', 'diana.g@firm.com', 4, 2),   -- Project Manager, Engineering
('Eve Martin', 'eve.m@firm.com', 5, 3),      -- HR Manager, Human Resources
('Frank White', 'frank.w@firm.com', 6, 4),   -- Financial Analyst, Finance
('George Adams', 'george.a@firm.com', 4, 1), -- Project Manager, Architecture
('Helen Brown', 'helen.b@firm.com', 2, 1),   -- Junior Architect, Architecture
('Ian Black', 'ian.b@firm.com', 3, 2),       -- Structural Engineer, Engineering
('Jane Davis', 'jane.d@firm.com', 4, 2);     -- Project Manager, Engineering

-- Insert data into Project table
INSERT INTO Project (title) VALUES
('Residential Building Design'),
('Commercial Complex Design'),
('Bridge Construction'),
('Urban Park Development');

-- Insert data into Status table
INSERT INTO Status ("desc") VALUES
('In Progress'),
('Completed'),
('Pending Approval'),
('On Hold');

-- Insert data into Team table
-- Residential Building Design
INSERT INTO Team (employee_id, project_id, role_id) VALUES
(1, 1, 1),  -- Alice Johnson is Lead Architect for Residential Building Design
(2, 1, 2),  -- Bob Smith is Supporting Architect for Residential Building Design
(4, 1, 3);  -- Diana Green is Project Manager for Residential Building Design

-- Commercial Complex Design
INSERT INTO Team (employee_id, project_id, role_id) VALUES
(1, 2, 1),  -- Alice Johnson is Lead Architect for Commercial Complex Design
(7, 2, 3),  -- George Adams is Project Manager for Commercial Complex Design
(8, 2, 2);  -- Helen Brown is Supporting Architect for Commercial Complex Design

-- Bridge Construction
INSERT INTO Team (employee_id, project_id, role_id) VALUES
(9, 3, 4),  -- Ian Black is Engineer for Bridge Construction
(3, 3, 4),  -- Charlie Lee is Engineer for Bridge Construction
(10, 3, 3); -- Jane Davis is Project Manager for Bridge Construction

-- Urban Park Development
INSERT INTO Team (employee_id, project_id, role_id) VALUES
(2, 4, 2),  -- Bob Smith is Supporting Architect for Urban Park Development
(7, 4, 3),  -- George Adams is Project Manager for Urban Park Development
(9, 4, 4);  -- Ian Black is Engineer for Urban Park Development

-- Insert data into Status_log table
INSERT INTO Status_log (status_id, project_id, timestmp) VALUES
(1, 1, '2024-01-15 09:00:00'),  -- Project 1 started (In Progress)
(3, 2, '2024-01-20 10:00:00'),  -- Project 2 Pending Approval
(4, 3, '2024-02-01 11:00:00'),  -- Project 3 On Hold
(1, 4, '2024-02-10 09:00:00');  -- Project 4 started (In Progress)

-- Insert data into Work_log table
INSERT INTO Work_log ("desc", project_id, employee_id, timestmp, period) VALUES
('Initial concept design for residential building', 1, 1, '2024-01-15 09:30:00', '8 hours'),
('Structural analysis and load calculations', 1, 3, '2024-01-16 10:00:00', '6 hours'),
('Drafting technical plans', 1, 2, '2024-01-17 14:00:00', '7 hours'),
('Project Management Review', 3, 10, '2024-02-01 13:00:00', '5 hours'),
('Urban park layout plan review', 4, 7, '2024-02-12 11:00:00', '6 hours');