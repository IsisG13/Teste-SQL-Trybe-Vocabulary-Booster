-- desafio7
SELECT CONCAT(UCASE(hr.employees.FIRST_NAME), ' ' , UCASE(hr.employees.LAST_NAME)) AS Nome_completo,
hr.job_history.START_DATE AS Data_de_inicio,
hr.employees.SALARY AS Salario
FROM hr.employees
INNER JOIN hr.job_history
ON hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
WHERE MONTH(hr.job_history.START_DATE) IN (01, 02, 03)
ORDER BY Nome_completo DESC;