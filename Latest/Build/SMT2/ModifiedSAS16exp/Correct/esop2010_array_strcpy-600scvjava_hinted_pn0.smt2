;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 24
;
(set-logic HORN)
(declare-fun assign_26_10_282 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_25_3_273 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_24_10_255 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_22_8_285 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_21_8_217 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_20_8_187 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_19_8_181 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_18_1_151 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_17_8_145 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_15_5_112 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_14_5_103 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_13_12_89 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_12_1_115 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_11_1_46 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => true (start dest  source  l  i ))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (start dest  source  l  i ) (assign_11_1_46 dest  source  l  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_11_1_46 dest  source  l  i ) (while_12_1_115 dest  source  l  0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_12_1_115 dest  source  l  i ) (not (= (select source  i ) 0))) (assert_13_12_89 dest  source  l  i ))))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_12_1_115 dest  source  l  i ) (not (not (= (select source  i ) 0)))) (assert_17_8_145 dest  source  l  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(dest[k]==source[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_13_12_89 dest  source  l  i ) (=> (and (<= 0 k ) (< k  i )) (= (select dest  k ) (select source  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_13_12_89 dest  source  l  i ) (arrayassign_14_5_103 dest  source  l  i ))))
;
;(aassign) dest[i] := source[i]
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (arrayassign_14_5_103 dest  source  l  i ) (assign_15_5_112 (store dest  i  (select source  i )) source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_15_5_112 dest  source  l  i ) (while_12_1_115 dest  source  l  (+ i  1)))))
;
;(assert)  (((0<=k)&&(k<i))=>(source[k]==dest[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_17_8_145 dest  source  l  i ) (=> (and (<= 0 k ) (< k  i )) (= (select source  k ) (select dest  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_17_8_145 dest  source  l  i ) (assign_18_1_151 dest  source  l  i ))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_18_1_151 dest  source  l  i ) (assert_19_8_181 dest  source  i  i ))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_19_8_181 dest  source  l  i ) (=> (and (<= 0 k ) (< k  l )) (= (select source  k ) (select dest  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_19_8_181 dest  source  l  i ) (assign_20_8_187 dest  source  l  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_20_8_187 dest  source  l  i ) (assert_21_8_217 dest  source  l  0))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_21_8_217 dest  source  l  i ) (=> (and (<= 0 k ) (< k  l )) (= (select source  k ) (select dest  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_21_8_217 dest  source  l  i ) (while_22_8_285 dest  source  l  i ))))
;
;(while)   while((i<l))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_22_8_285 dest  source  l  i ) (< i  l )) (assert_24_10_255 dest  source  l  i ))))
(assert (forall ((dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_22_8_285 dest  source  l  i ) (not (< i  l ))) (end dest  source  l  i ))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_24_10_255 dest  source  l  i ) (=> (and (<= 0 k ) (< k  l )) (= (select source  k ) (select dest  k ))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_24_10_255 dest  source  l  i ) (assert_25_3_273 dest  source  l  i ))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_25_3_273 dest  source  l  i ) (= (select source  i ) (select dest  i )))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assert_25_3_273 dest  source  l  i ) (assign_26_10_282 dest  source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) ) ( => (assign_26_10_282 dest  source  l  i ) (while_22_8_285 dest  source  l  (+ i  1)))))
(check-sat)
