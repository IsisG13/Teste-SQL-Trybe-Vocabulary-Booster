USE hr;
-- desafio12
SELECT 
CONCAT(t_emp1.FIRST_NAME, ' ', t_emp1.LAST_NAME) AS Nome_completo_funcionario_1,
t_emp1.SALARY AS Salario_funcionario_1,
t_emp1.PHONE_NUMBER AS Telefone_funcionario_1,
CONCAT(t_emp2.FIRST_NAME, ' ', t_emp2.LAST_NAME) AS Nome_completo_funcionario_2,
t_emp2.SALARY AS Salario_funcionario_1,
t_emp2.PHONE_NUMBER AS Telefone_funcionario_1
FROM hr.employees AS t_emp1, hr.employees AS t_emp2
WHERE CONCAT(t_emp1.FIRST_NAME, ' ', t_emp1.LAST_NAME) <> CONCAT(t_emp2.FIRST_NAME, ' ', t_emp2.LAST_NAME)
AND t_emp1.JOB_ID = t_emp2.JOB_ID
ORDER BY CONCAT(t_emp1.FIRST_NAME, ' ', t_emp1.LAST_NAME), CONCAT(t_emp2.FIRST_NAME, ' ', t_emp2.LAST_NAME);