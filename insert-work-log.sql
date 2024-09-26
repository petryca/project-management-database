-- Insert one hour of work for the project "Residential Building Design" by employee with ID 1
INSERT INTO Work_log ("desc", project_id, employee_id, timestmp, period)
VALUES (
    'Worked on floor plan design', 
    (SELECT id FROM Project WHERE title = 'Residential Building Design'), 
    1,  -- Assuming employee with ID 1 (Alice Johnson) is working on this project
    '2024-09-26 10:00:00', 
    INTERVAL '1 hour'
);