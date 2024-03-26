-- desafio17
USE hr;
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qty_jobs INT;
  SELECT COUNT(hr.job_history.JOB_ID)
  FROM hr.employees
  INNER JOIN hr.job_history
  ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
  WHERE hr.employees.EMAIL = email
  INTO qty_jobs;
  RETURN qty_jobs;
END $$
DELIMITER ;
-- SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');