
.mode csv
.separator ;
.import res.csv Bench
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
             (CASE 
                 WHEN abs like '%vaphor%' THEN 'vaphor'
                 WHEN abs like '%sastool_basic%' THEN 'us_noacker'
                 WHEN abs like '%sastool_acker%' THEN 'us_acker'
                 WHEN abs like '%noabs%' THEN 'noabs'
              END
             ) as abstool,
             (CASE 
              WHEN abs like '%cell1%' THEN 1
              WHEN abs like '%cell2%' THEN 2 
              ELSE null END) as n,
             (CASE
                WHEN (((file like '%buggy%') and result="unsat") or (not (file like '%buggy%') and result="sat")) THEN 'correct'
                WHEN (((file like '%buggy%') and result="sat") or (not (file like '%buggy%') and result="unsat")) THEN 'incorrect'
                WHEN (result like '%timeoutsolver%') THEN 'solvertimeout'
                WHEN (result like '%unknown%') THEN 'unknown'
                ELSE 'error'
             END) as result
FROM Bench
WHERE not (file like '%buggy%' and preprocess like '%hinted%');

CREATE VIEW rmpn AS
SELECT file, ftype, n, abstool, result, SUM(result=result) as 'nbexp', MAX(result=result) as 'nbexists' FROM nice
GROUP BY file, ftype, n, abstool, result;


CREATE VIEW final AS
SELECT ftype, n, abstool, ('#' || result) as resulttype, SUM(nbexp) as res FROM rmpn 
GROUP BY ftype, n, abstool, result

UNION

SELECT ftype, n, abstool, ('>=' || result) as resulttype, SUM(nbexists) as res FROM rmpn 
GROUP BY ftype, n, abstool, result;

SELECT ftype, COALESCE(n, 'NA') as n, abstool, resulttype, COALESCE(res,0) as res FROM final

-- SELECT (ftype || ',' || COALESCE(n, 'NA')) as 'ftype,n', abstool || resulttype, COALESCE(res,0) as res FROM final

-- CREATE VIEW sumcorrect AS
-- SELECT file, ftype, n, abstool, result, Count() FROM nice
-- GROUP BY file, ftype, n, abstool, result;
-- 
-- 
-- SELECT abstool, result, Count(*) FROM nice
-- WHERE n=1 or n is null
-- GROUP BY abstool, result



-- SELECT * FROM Files LIMIT 10
   
