;Number of predicates (nodes) = 12
;Number of variables = 3
;Number of clauses = 17
;
(set-logic HORN)
(declare-fun assign_166_22_5 ((Array Int Int) Int Int ) Bool)
(declare-fun assert_157_21_5 ((Array Int Int) Int Int ) Bool)
(declare-fun assert_142_20_12 ((Array Int Int) Int Int ) Bool)
(declare-fun while_169_19_1 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_107_18_1 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_101_17_1 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_92_15_5 ((Array Int Int) Int Int ) Bool)
(declare-fun assert_83_14_12 ((Array Int Int) Int Int ) Bool)
(declare-fun while_95_13_1 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_39_12_1 ((Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int ) Bool)
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => true (start source  l  i ))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (start source  l  i ) (assign_39_12_1 source  l  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_39_12_1 source  l  i ) (while_95_13_1 source  l  0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_95_13_1 source  l  i ) (not (= (select source  i ) 0))) (assert_83_14_12 source  l  i ))))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_95_13_1 source  l  i ) (not (not (= (select source  i ) 0)))) (assign_101_17_1 source  l  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(!(source[k]==0)))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) ) ( => (assert_83_14_12 source  l  i ) (=> (and (<= 0 k ) (< k  i )) (not (= (select source  k ) 0))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_83_14_12 source  l  i ) (assign_92_15_5 source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_92_15_5 source  l  i ) (while_95_13_1 source  l  (+ i  1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_101_17_1 source  l  i ) (assign_107_18_1 source  i  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_107_18_1 source  l  i ) (while_169_19_1 source  l  0))))
;
;(while)   while((i<l))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_169_19_1 source  l  i ) (< i  l )) (assert_142_20_12 source  l  i ))))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_169_19_1 source  l  i ) (not (< i  l ))) (end source  l  i ))))
;
;(assert)  (((0<=k)&&(k<l))=>(!(source[k]==0)))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) ) ( => (assert_142_20_12 source  l  i ) (=> (and (<= 0 k ) (< k  l )) (not (= (select source  k ) 0))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_142_20_12 source  l  i ) (assert_157_21_5 source  l  i ))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_157_21_5 source  l  i ) (not (= (select source  i ) 0)))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_157_21_5 source  l  i ) (assign_166_22_5 source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_166_22_5 source  l  i ) (while_169_19_1 source  l  (+ i  1)))))
(check-sat)
