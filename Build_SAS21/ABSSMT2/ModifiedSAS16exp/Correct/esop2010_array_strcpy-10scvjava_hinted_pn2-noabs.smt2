;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 24
;
(set-logic HORN)
(declare-fun assign_282_26_10 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_273_25_3 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_255_24_10 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_285_22_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_217_21_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_187_20_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_181_19_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_151_18_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_145_17_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_112_15_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_103_14_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_89_13_12 ((Array Int Int) (Array Int Int) Int Int ) Bool)
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
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_115_12_1 dest  source  l  i ) (not (= (select source  i ) 0))) (assert_89_13_12 dest  source  l  i ))))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_115_12_1 dest  source  l  i ) (not (not (= (select source  i ) 0)))) (assert_145_17_8 dest  source  l  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(dest[k]==source[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_89_13_12 dest  source  l  i ) (=> (and (<= 0 k ) (< k  i )) (= (select dest  k ) (select source  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_89_13_12 dest  source  l  i ) (arrayassign_103_14_5 dest  source  l  i ))))
;
;(aassign) dest[i] := source[i]
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (arrayassign_103_14_5 dest  source  l  i ) (assign_112_15_5 (store dest  i  (select source  i )) source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_112_15_5 dest  source  l  i ) (while_115_12_1 dest  source  l  (+ i  1)))))
;
;(assert)  (((0<=k)&&(k<i))=>(source[k]==dest[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_145_17_8 dest  source  l  i ) (=> (and (<= 0 k ) (< k  i )) (= (select source  k ) (select dest  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_145_17_8 dest  source  l  i ) (assign_151_18_1 dest  source  l  i ))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_151_18_1 dest  source  l  i ) (assert_181_19_8 dest  source  i  i ))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_181_19_8 dest  source  l  i ) (=> (and (<= 0 k ) (< k  l )) (= (select source  k ) (select dest  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_181_19_8 dest  source  l  i ) (assign_187_20_8 dest  source  l  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_187_20_8 dest  source  l  i ) (assert_217_21_8 dest  source  l  0))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_217_21_8 dest  source  l  i ) (=> (and (<= 0 k ) (< k  l )) (= (select source  k ) (select dest  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_217_21_8 dest  source  l  i ) (while_285_22_8 dest  source  l  i ))))
;
;(while)   while((i<l))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_285_22_8 dest  source  l  i ) (< i  l )) (assert_255_24_10 dest  source  l  i ))))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_285_22_8 dest  source  l  i ) (not (< i  l ))) (end dest  source  l  i ))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_255_24_10 dest  source  l  i ) (=> (and (<= 0 k ) (< k  l )) (= (select source  k ) (select dest  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_255_24_10 dest  source  l  i ) (assert_273_25_3 dest  source  l  i ))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_273_25_3 dest  source  l  i ) (= (select source  i ) (select dest  i )))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_273_25_3 dest  source  l  i ) (assign_282_26_10 dest  source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_282_26_10 dest  source  l  i ) (while_285_22_8 dest  source  l  (+ i  1)))))
(check-sat)
