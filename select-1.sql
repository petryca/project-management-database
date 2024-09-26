SELECT 
    Project.title AS "Project",
    Employee.name AS "Manager"
FROM 
    Project
JOIN 
    Team ON Project.id = Team.project_id
JOIN 
    Employee ON Team.employee_id = Employee.id
JOIN 
    Role ON Team.role_id = Role.id
WHERE 
    Role.title = 'Project Manager';