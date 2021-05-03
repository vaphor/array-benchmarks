;Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(set-logic HORN)
(declare-fun assign_282_26_10 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_273_25_3 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_285_22_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_187_20_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_151_18_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_112_15_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_103_14_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_115_12_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_46_11_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => true (start dest  source  l  i ))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (start dest  source  l  i ) (assign_46_11_1 dest  source  l  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_46_11_1 dest  source  l  i ) (while_115_12_1 dest  source  l  0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_115_12_1 dest  source  l  i ) (not (= (select source  i ) 0))) (arrayassign_103_14_5 dest  source  l  i ))))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_115_12_1 dest  source  l  i ) (not (not (= (select source  i ) 0)))) (assign_151_18_1 dest  source  l  i ))))
;
;(aassign) dest[i] := source[i]
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (arrayassign_103_14_5 dest  source  l  i ) (assign_112_15_5 (store dest  i  (select source  i )) source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_112_15_5 dest  source  l  i ) (while_115_12_1 dest  source  l  (+ i  1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_151_18_1 dest  source  l  i ) (assign_187_20_8 dest  source  i  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_187_20_8 dest  source  l  i ) (while_285_22_8 dest  source  l  0))))
;
;(while)   while((i<l))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_285_22_8 dest  source  l  i ) (< i  l )) (assert_273_25_3 dest  source  l  i ))))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_285_22_8 dest  source  l  i ) (not (< i  l ))) (end dest  source  l  i ))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_273_25_3 dest  source  l  i ) (= (select source  i ) (select dest  i )))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_273_25_3 dest  source  l  i ) (assign_282_26_10 dest  source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_282_26_10 dest  source  l  i ) (while_285_22_8 dest  source  l  (+ i  1)))))
(check-sat)
