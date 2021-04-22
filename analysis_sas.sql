.mode csv 
.separator ;
.import analysis.csv Bench 
.headers on 

SELECT * FROM Bench WHERE (resulttype like '%#%' or resulttype like '%>=correct%') and resulttype like '%correct%'
