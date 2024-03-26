-- desafio 15
USE hr;
DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(300))
BEGIN
  SELECT t_medias.Média AS Média_salarial
  FROM hr.jobs
  INNER JOIN 
  (
    SELECT ROUND(AVG(SALARY), 2) AS Média, JOB_ID
    FROM hr.employees
    GROUP BY JOB_ID
  ) AS t_medias 
ON t_medias.JOB_ID = hr.jobs.JOB_ID
  WHERE hr.jobs.JOB_TITLE = cargo;
END $$
DELIMITER ;
-- CALL buscar_media_por_cargo('Programmer');