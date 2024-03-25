CREATE VIEW STAC62_VIEW
AS
SELECT
*,

CASE WHEN CRNCR == "FALSE" THEN (TermTest1 + TermTest2 + Final)/3 ELSE 
CASE WHEN (TermTest1 + TermTest2 + Final)/3 >= 50 THEN "CR" ELSE "NCR" END  END AS "StudentAverage",

AVG((TermTest1 + TermTest2 + Final)/3) OVER () AS "ClassAverage"
FROM STAC62_RAW