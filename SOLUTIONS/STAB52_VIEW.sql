CREATE VIEW STAB52_VIEW
AS
SELECT 
*,

CASE WHEN CRNCR == "FALSE"  THEN (Quiz1 + Quiz2 + Quiz3 + Quiz4 + Quiz5 + Quiz6 + Midterm + Final)/8 ELSE 
CASE WHEN  (Quiz1 + Quiz2 + Quiz3 + Quiz4 + Quiz5 + Quiz6 + Midterm + Final)/8 >= 50 THEN "CR" ELSE "NCR" END END AS "StudentAverage",

AVG((Quiz1 + Quiz2 + Quiz3 + Quiz4 + Quiz5 + Quiz6 + Midterm + Final)/8) OVER () AS "ClassAverage"
FROM STAB52_RAW