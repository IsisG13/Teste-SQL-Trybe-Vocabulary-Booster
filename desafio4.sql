-- desafio4
SELECT hr.jobs.JOB_TITLE AS Cargo,
ROUND(AVG(hr.employees.salary), 2) AS Média_salarial,
CASE
	WHEN ROUND(AVG(hr.employees.salary), 2) >= 2000 AND
    ROUND(AVG(hr.employees.salary), 2) <= 5800 THEN 'Júnior'
    WHEN ROUND(AVG(hr.employees.salary), 2) >= 5801 AND 
    ROUND(AVG(hr.employees.salary), 2) <= 7500 THEN 'Pleno'
    WHEN ROUND(AVG(hr.employees.salary), 2) >= 7501 AND 
    ROUND(AVG(hr.employees.salary), 2) <= 10500 THEN 'Sênior'
    WHEN ROUND(AVG(hr.employees.salary), 2) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.jobs
INNER JOIN hr.employees ON hr.jobs.JOB_ID = hr.employees.JOB_ID
GROUP BY hr.jobs.JOB_TITLE
ORDER BY ROUND(AVG(hr.employees.salary), 2), hr.jobs.JOB_TITLE;