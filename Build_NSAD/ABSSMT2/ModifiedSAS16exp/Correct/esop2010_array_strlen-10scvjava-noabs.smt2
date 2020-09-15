;Number of predicates (nodes) = 10
;Number of variables = 3
;Number of clauses = 13
;
(set-logic HORN)
(declare-fun assign_22_5_166 ((Array Int Int) Int Int ) Bool)
(declare-fun assert_21_5_157 ((Array Int Int) Int Int ) Bool)
(declare-fun while_19_1_169 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_18_1_107 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_17_1_101 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_15_5_92 ((Array Int Int) Int Int ) Bool)
(declare-fun while_13_1_95 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_12_1_39 ((Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int ) Bool)
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => true (start source  l  i ))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (start source  l  i ) (assign_12_1_39 source  l  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_12_1_39 source  l  i ) (while_13_1_95 source  l  0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_13_1_95 source  l  i ) (not (= (select source  i ) 0))) (assign_15_5_92 source  l  i ))))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_13_1_95 source  l  i ) (not (not (= (select source  i ) 0)))) (assign_17_1_101 source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_15_5_92 source  l  i ) (while_13_1_95 source  l  (+ i  1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_17_1_101 source  l  i ) (assign_18_1_107 source  i  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_18_1_107 source  l  i ) (while_19_1_169 source  l  0))))
;
;(while)   while((i<l))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_19_1_169 source  l  i ) (< i  l )) (assert_21_5_157 source  l  i ))))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_19_1_169 source  l  i ) (not (< i  l ))) (end source  l  i ))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_21_5_157 source  l  i ) (not (= (select source  i ) 0)))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_21_5_157 source  l  i ) (assign_22_5_166 source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_22_5_166 source  l  i ) (while_19_1_169 source  l  (+ i  1)))))
(check-sat)
