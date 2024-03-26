-- desafio3
SELECT hr.jobs.JOB_TITLE, hr.jobs.MAX_SALARY, hr.jobs.MIN_SALARY FROM hr.jobs;
SELECT hr.jobs.JOB_TITLE AS Cargo, 
hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY AS Diferença_entre_salarios_min_max
FROM hr.jobs
ORDER BY Diferença_entre_salarios_min_max, Cargo;