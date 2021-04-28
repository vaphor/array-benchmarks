-- .param set :%analysisfile% %1
.mode csv 
.separator ;
.import !analysisfile! Bench 
.headers on 

SELECT * FROM Bench WHERE (resulttype like '%#%' or resulttype like '%>=correct%') and resulttype like '%correct%'
