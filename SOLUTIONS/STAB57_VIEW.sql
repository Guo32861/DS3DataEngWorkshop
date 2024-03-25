CREATE VIEW STAB57_VIEW
AS
SELECT
*,

CASE WHEN CRNCR == "FALSE"  THEN (A1 + A2 + A3 + Midterm  + Final)/5  ELSE 
CASE WHEN (A1 + A2 + A3 + Midterm  + Final)/5 >= 50 THEN "CR" ELSE "NCR"  END END AS "StudentAverage",

AVG((A1 + A2 + A3 + Midterm  + Final)/5) OVER () AS "ClassAverage"
FROM STAB57_RAW