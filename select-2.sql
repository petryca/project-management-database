SELECT 
    Project.title AS "Project",
    Employee.name AS "Manager",
    Status.desc AS "Status"
FROM 
    Project
JOIN 
    Team ON Project.id = Team.project_id
JOIN 
    Employee ON Team.employee_id = Employee.id
JOIN 
    Role ON Team.role_id = Role.id
JOIN 
    Status_log ON Project.id = Status_log.project_id
JOIN 
    Status ON Status_log.status_id = Status.id
WHERE 
    Role.title = 'Project Manager'
AND 
    Status_log.timestmp = (
        SELECT MAX(timestmp) 
        FROM Status_log sl 
        WHERE sl.project_id = Project.id
    );