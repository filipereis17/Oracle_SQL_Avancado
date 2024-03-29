--
-- Oracle SQL Avan�ado 
--
-- Se��o 30 - Globaliza��o Tratamento de Datas e diferentes Time Zones
--
-- Aula 6 - Fun��o Extract
-- 

-- Fun��o Extract

-- Conectar como usu�rio HR

-- Extraindo ano, mes e dia de um tipo Date

SELECT EXTRACT(YEAR FROM SYSDATE) ANO,
       EXTRACT(MONTH FROM SYSDATE) M�S,
       EXTRACT(DAY FROM SYSDATE) DIA
FROM dual;

-- Extraindo ano, mes, dia, hora, minuto, segundo, timezone hora, timezone minuto, timezone segundo, timezone regi�o, timezone abrevia��o 
-- de um tipo timestamp tith timezone

SELECT EXTRACT(YEAR FROM CURRENT_TIMESTAMP) ANO,
       EXTRACT(MONTH FROM CURRENT_TIMESTAMP) M�S,
       EXTRACT(DAY FROM CURRENT_TIMESTAMP) DIA,
	   EXTRACT(HOUR FROM CURRENT_TIMESTAMP) HORA,
       EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) MINUTO,
       EXTRACT(SECOND FROM CURRENT_TIMESTAMP) SEGUNDO,
       EXTRACT(TIMEZONE_HOUR FROM CURRENT_TIMESTAMP) TIMEZONE_HOUR,
       EXTRACT(TIMEZONE_MINUTE FROM CURRENT_TIMESTAMP) TIMEZONE_MINUTE,
	   EXTRACT(TIMEZONE_REGION FROM CURRENT_TIMESTAMP) TIMEZONE_REGION,
       EXTRACT(TIMEZONE_ABBR FROM CURRENT_TIMESTAMP) TIMEZONE_ABBR
FROM dual;

-- Extraindo ano, mes de interval year to month

SELECT  EXTRACT( YEAR FROM INTERVAL '5-2' YEAR TO MONTH ) ANO, 
        EXTRACT( MONTH FROM INTERVAL '5-2' YEAR TO MONTH) M�S
FROM    DUAL;

-- Extraindo dia, hora, minuto, segundo de interval day to second

SELECT EXTRACT( DAY FROM INTERVAL '5 04:30:20.11' DAY TO SECOND ) DIA,
       EXTRACT( HOUR FROM INTERVAL '5 04:30:20.11' DAY TO SECOND ) HORA,
       EXTRACT( MINUTE FROM INTERVAL '5 04:30:20.11' DAY TO SECOND ) MINUTO,
       EXTRACT( SECOND FROM INTERVAL '5 04:30:20.11' DAY TO SECOND ) SEGUNDO
FROM   dual;