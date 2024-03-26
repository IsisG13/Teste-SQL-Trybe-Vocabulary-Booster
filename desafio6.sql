-- desafio6
SELECT CONCAT(hr.employees.FIRST_NAME, ' ' , hr.employees.LAST_NAME) AS Nome_completo,
hr.jobs.JOB_TITLE AS Cargo,
hr.job_history.START_DATE AS Data_de_inicio_do_cargo,
hr.employees.DEPARTMENT_ID,
hr.departments.DEPARTMENT_NAME AS Departamento
FROM hr.job_history
INNER JOIN hr.employees 
ON hr.employees.EMPLOYEE_ID  = hr.job_history.EMPLOYEE_ID
INNER JOIN hr.jobs 
ON hr.job_history.JOB_ID = hr.jobs.JOB_ID
INNER JOIN hr.departments 
ON hr.job_history.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
ORDER BY Nome_completo DESC, Cargo;