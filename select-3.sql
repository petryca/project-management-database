SELECT 
    Project.title AS "Project",
    Employee.name AS "Manager",
    Status.desc AS "Status",
    COALESCE(SUM(Work_log.period), INTERVAL '0') AS "Time Spent"
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
LEFT JOIN 
    Work_log ON Project.id = Work_log.project_id
WHERE 
    Role.title = 'Project Manager'
AND 
    Status_log.timestmp = (
        SELECT MAX(timestmp) 
        FROM Status_log sl 
        WHERE sl.project_id = Project.id
    )
GROUP BY 
    Project.title, Employee.name, Status.desc;