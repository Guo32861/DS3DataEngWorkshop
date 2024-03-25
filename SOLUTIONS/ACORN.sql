CREATE VIEW ACORN
AS

SELECT "STAB52" AS "Course", StudentNumber, StudentAverage,

CASE WHEN StudentAverage BETWEEN 90 AND 100 THEN "A+"
			WHEN StudentAverage BETWEEN 85 AND 89 THEN "A"
			WHEN StudentAverage BETWEEN 80 AND 84 THEN "A-"
			WHEN StudentAverage BETWEEN 77 AND 79 THEN "B+"
			WHEN StudentAverage BETWEEN 73 AND 76 THEN "B"
			WHEN StudentAverage BETWEEN 70 AND 72 THEN "B-"
			WHEN StudentAverage BETWEEN 67 AND 69 THEN "C+"
			WHEN StudentAverage BETWEEN 63 AND 66 THEN "C"
			WHEN StudentAverage BETWEEN 60 AND 62 THEN "C-"
			WHEN StudentAverage BETWEEN 57 AND 59 THEN "D+"
			WHEN StudentAverage BETWEEN 53 AND 56 THEN "D"
			WHEN StudentAverage BETWEEN 50 AND 52 THEN "D-"
			WHEN StudentAverage = "CR" THEN "CR"
			WHEN StudentAverage = "NCR" THEN "NCR"
			ELSE "F" END AS "StudentGrade",
			
ClassAverage,
			
CASE WHEN ClassAverage BETWEEN 90 AND 100 THEN "A+"
			WHEN ClassAverage BETWEEN 85 AND 89 THEN "A"
			WHEN ClassAverage BETWEEN 80 AND 84 THEN "A-"
			WHEN ClassAverage BETWEEN 77 AND 79 THEN "B+"
			WHEN ClassAverage BETWEEN 73 AND 76 THEN "B"
			WHEN ClassAverage BETWEEN 70 AND 72 THEN "B-"
			WHEN ClassAverage BETWEEN 67 AND 69 THEN "C+"
			WHEN ClassAverage BETWEEN 63 AND 66 THEN "C"
			WHEN ClassAverage BETWEEN 60 AND 62 THEN "C-"
			WHEN ClassAverage BETWEEN 57 AND 59 THEN "D+"
			WHEN ClassAverage BETWEEN 53 AND 56 THEN "D"
			WHEN ClassAverage BETWEEN 50 AND 52 THEN "D-"
			ELSE "F" END AS "ClassGrade"

FROM STAB52_VIEW

UNION

SELECT "STAB57" AS "Course", StudentNumber, StudentAverage, 

CASE WHEN StudentAverage BETWEEN 90 AND 100 THEN "A+"
			WHEN StudentAverage BETWEEN 85 AND 89 THEN "A"
			WHEN StudentAverage BETWEEN 80 AND 84 THEN "A-"
			WHEN StudentAverage BETWEEN 77 AND 79 THEN "B+"
			WHEN StudentAverage BETWEEN 73 AND 76 THEN "B"
			WHEN StudentAverage BETWEEN 70 AND 72 THEN "B-"
			WHEN StudentAverage BETWEEN 67 AND 69 THEN "C+"
			WHEN StudentAverage BETWEEN 63 AND 66 THEN "C"
			WHEN StudentAverage BETWEEN 60 AND 62 THEN "C-"
			WHEN StudentAverage BETWEEN 57 AND 59 THEN "D+"
			WHEN StudentAverage BETWEEN 53 AND 56 THEN "D"
			WHEN StudentAverage BETWEEN 50 AND 52 THEN "D-"
			WHEN StudentAverage = "CR" THEN "CR"
			WHEN StudentAverage = "NCR" THEN "NCR"
			ELSE "F" END AS "StudentGrade",
			
ClassAverage,
			
CASE WHEN ClassAverage BETWEEN 90 AND 100 THEN "A+"
			WHEN ClassAverage BETWEEN 85 AND 89 THEN "A"
			WHEN ClassAverage BETWEEN 80 AND 84 THEN "A-"
			WHEN ClassAverage BETWEEN 77 AND 79 THEN "B+"
			WHEN ClassAverage BETWEEN 73 AND 76 THEN "B"
			WHEN ClassAverage BETWEEN 70 AND 72 THEN "B-"
			WHEN ClassAverage BETWEEN 67 AND 69 THEN "C+"
			WHEN ClassAverage BETWEEN 63 AND 66 THEN "C"
			WHEN ClassAverage BETWEEN 60 AND 62 THEN "C-"
			WHEN ClassAverage BETWEEN 57 AND 59 THEN "D+"
			WHEN ClassAverage BETWEEN 53 AND 56 THEN "D"
			WHEN ClassAverage BETWEEN 50 AND 52 THEN "D-"
			ELSE "F" END AS "ClassGrade"
			
FROM STAB57_VIEW

UNION

SELECT "STAC62" AS "Course", StudentNumber, StudentAverage,

CASE WHEN StudentAverage BETWEEN 90 AND 100 THEN "A+"
			WHEN StudentAverage BETWEEN 85 AND 89 THEN "A"
			WHEN StudentAverage BETWEEN 80 AND 84 THEN "A-"
			WHEN StudentAverage BETWEEN 77 AND 79 THEN "B+"
			WHEN StudentAverage BETWEEN 73 AND 76 THEN "B"
			WHEN StudentAverage BETWEEN 70 AND 72 THEN "B-"
			WHEN StudentAverage BETWEEN 67 AND 69 THEN "C+"
			WHEN StudentAverage BETWEEN 63 AND 66 THEN "C"
			WHEN StudentAverage BETWEEN 60 AND 62 THEN "C-"
			WHEN StudentAverage BETWEEN 57 AND 59 THEN "D+"
			WHEN StudentAverage BETWEEN 53 AND 56 THEN "D"
			WHEN StudentAverage BETWEEN 50 AND 52 THEN "D-"
			WHEN StudentAverage = "CR" THEN "CR"
			WHEN StudentAverage = "NCR" THEN "NCR"
			ELSE "F" END AS "StudentGrade",
			
ClassAverage,
			
CASE WHEN ClassAverage BETWEEN 90 AND 100 THEN "A+"
			WHEN ClassAverage BETWEEN 85 AND 89 THEN "A"
			WHEN ClassAverage BETWEEN 80 AND 84 THEN "A-"
			WHEN ClassAverage BETWEEN 77 AND 79 THEN "B+"
			WHEN ClassAverage BETWEEN 73 AND 76 THEN "B"
			WHEN ClassAverage BETWEEN 70 AND 72 THEN "B-"
			WHEN ClassAverage BETWEEN 67 AND 69 THEN "C+"
			WHEN ClassAverage BETWEEN 63 AND 66 THEN "C"
			WHEN ClassAverage BETWEEN 60 AND 62 THEN "C-"
			WHEN ClassAverage BETWEEN 57 AND 59 THEN "D+"
			WHEN ClassAverage BETWEEN 53 AND 56 THEN "D"
			WHEN ClassAverage BETWEEN 50 AND 52 THEN "D-"
			ELSE "F" END AS "ClassGrade"
			
FROM STAC62_VIEW

