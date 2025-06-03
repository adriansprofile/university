/*
Sa se calculeze numarul de studenti care au ore cu
profesorul 'Luca Caragiale'
*/

SELECT COUNT(*) AS NRSTUDENTI
FROM STUDENT S, CONTRACT C, CURS M, PROFESOR P
WHERE S.SID = C.SID AND C.CID = M.CID AND M.PID = P.PID AND P.NUME = 'Luca Caragiale';