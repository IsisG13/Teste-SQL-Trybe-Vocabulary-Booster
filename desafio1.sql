CREATE DATABASE hr;
USE hr;
--
-- Estrutura do IF em uma consulta SQL
-- SELECT IF(condicao, valor_se_verdadeiro, valor_se_falso) AS resultado;
--

-- desafio1
SELECT hr.countries.COUNTRY_NAME AS País,
 IF(hr.regions.REGION_NAME = 'Europe', 'incluido', 'nao incluido') AS Status_inclusao
FROM hr.countries
INNER JOIN hr.regions ON hr.countries.REGION_ID = hr.regions.REGION_ID
ORDER BY hr.countries.COUNTRY_NAME;