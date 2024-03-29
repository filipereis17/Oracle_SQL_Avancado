--
-- Oracle SQL Avan�ado 
--
-- Se��o 30 - Globaliza��o Tratamento de Datas e diferentes Time Zones
--
-- Aula 2 - Globaliza��o - Tipos de Dados

-- Globaliza��o - Tipos de Dados

-- Conectar como usu�rio HR

-- SYSDATE - Data Atual (tipo de dado DATE)

SELECT sysdate
FROM   dual;

SELECT TO_CHAR(sysdate, 'DD/MM/YYYY')
FROM   dual;

-- SYSTIMESTAMP - Data Atual (tipo de dado TIMESTAMP)

SELECT systimestamp
FROM   dual;

-- Interval YEAR TO MONTH

SELECT INTERVAL '55-11' YEAR TO MONTH
FROM   dual;

SELECT INTERVAL '1-4' YEAR TO MONTH
FROM   dual;

-- Erro de precis�o para o ano

SELECT INTERVAL '555-11' YEAR TO MONTH
FROM dual;

-- Corrigindo Erro de precis�o para o ano

SELECT INTERVAL '555-11' YEAR(4) TO MONTH
FROM dual;

SELECT INTERVAL '350' MONTH
FROM dual;

SELECT INTERVAL '10' YEAR
FROM   dual;

SELECT INTERVAL '33 20:20:20' DAY TO SECOND
FROM   dual;

-- Erro de precis�o para o dia

SELECT INTERVAL '333 20:20:20' DAY TO SECOND
FROM   dual;

-- Corrigindo Erro de precis�o para o dia

SELECT INTERVAL '333 20:20:20' DAY(3) TO SECOND
FROM dual;

SELECT INTERVAL '500' HOUR
FROM   dual;