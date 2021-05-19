.mode csv
.separator ;
.import !resfile! Bench
.headers on
.separator ;

-- .tables
-- .schema Bench

CREATE VIEW nice AS
SELECT file, (CASE 
                 WHEN file like '%buggy%' THEN 'buggy'
                 WHEN file not like '%buggy%' and preprocess like '%hinted%' THEN 'hinted'
                 WHEN file not like '%buggy%' and preprocess like '%nohints%' THEN 'nothinted'
                 ELSE 'problem'
                 END) as ftype,
             (SUBSTR(preprocess, -1)) as nameopt, 
             abs as abstool,
             (CASE 
              WHEN abs like '%cell1%' THEN 1
              WHEN abs like '%cell2%' THEN 2 
              ELSE 'NA' END) as n,
             (CASE 
              WHEN solver like '%z3%' THEN 'Z3'
              ELSE 'other' END) as solvertool,
             solver as solveropt,
             (CASE
                WHEN (((file like '%buggy%') and result="unsat") or (not (file like '%buggy%') and result="sat")) THEN 'correct'
                WHEN (((file like '%buggy%') and result="sat") or (not (file like '%buggy%') and result="unsat")) THEN 'incorrect'
                WHEN (result like '%timeoutsolver%') THEN 'solvertimeout'
                WHEN (result like '%unknown%') THEN 'unknown'
                ELSE 'error'
             END) as result
FROM Bench
WHERE not (file like '%buggy%' and preprocess like '%hinted%');

CREATE VIEW nbexp AS
SELECT file, ftype, n, abstool, solvertool, COUNT(*) as 'nbexp' FROM nice
GROUP BY file, ftype, n, abstool, solvertool;

CREATE VIEW nbfiles AS
SELECT ftype, COUNT(*) as nbf FROM (SELECT DISTINCT ftype, file FROM nice)
GROUP BY ftype;


CREATE VIEW rmpn AS
SELECT file, ftype, n, abstool, solvertool, result, ROUND((COUNT(*) * 1.0)/(CAST(nbexp AS REAL)), 2) as avgexp, MAX(result=result) as nbexists FROM nice NATURAL JOIN nbexp
GROUP BY file, ftype, n, abstool, solvertool, result;

CREATE VIEW final AS
SELECT ftype, n, abstool, solvertool, result, SUM(avgexp) as avgexp, SUM(nbexists) as nbexists FROM rmpn
GROUP BY ftype, n, abstool, solvertool, result;

SELECT ftype, nbf as '#prg', COALESCE(n, 'NA') as n, abstool, solvertool, result, COALESCE(avgexp,0) as avgexp, COALESCE(nbexists,0) as nbexists FROM final NATURAL JOIN nbfiles
ORDER BY ftype, n, abstool, result
