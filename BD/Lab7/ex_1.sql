/*
Sa se calculeze numarul de studenti care nu au bursa
si au media peste 7.50
*/

SELECT COUNT(*) AS NRSTUDENTI
FROM STUDENT S
WHERE (S.BURSA = 0 OR S.BURSA IS NULL) AND S.MEDIA > 7.50;