;Number of predicates (nodes) = 12
;Number of variables = 3
;Number of clauses = 17
;
(set-logic HORN)
(declare-fun assign_22_5_172 ((Array Int Int) Int Int ) Bool)
(declare-fun assert_21_5_163 ((Array Int Int) Int Int ) Bool)
(declare-fun assert_20_12_148 ((Array Int Int) Int Int ) Bool)
(declare-fun while_19_1_175 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_18_1_110 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_17_1_104 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_15_5_95 ((Array Int Int) Int Int ) Bool)
(declare-fun assert_14_12_86 ((Array Int Int) Int Int ) Bool)
(declare-fun while_13_1_98 ((Array Int Int) Int Int ) Bool)
(declare-fun assign_12_1_39 ((Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int ) Bool)
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => true (start source  l  i ))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (start source  l  i ) (assign_12_1_39 source  l  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_12_1_39 source  l  i ) (while_13_1_98 source  l  0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_13_1_98 source  l  i ) (not (= (select source  i ) 0))) (assert_14_12_86 source  l  i ))))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_13_1_98 source  l  i ) (not (not (= (select source  i ) 0)))) (assign_17_1_104 source  l  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(!(source[k]==0)))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) ) ( => (assert_14_12_86 source  l  i ) (=> (and (<= 0 k ) (< k  i )) (not (= (select source  k ) 0))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_14_12_86 source  l  i ) (assign_15_5_95 source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_15_5_95 source  l  i ) (while_13_1_98 source  l  (+ i  1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_17_1_104 source  l  i ) (assign_18_1_110 source  i  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_18_1_110 source  l  i ) (while_19_1_175 source  l  0))))
;
;(while)   while((i<l))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_19_1_175 source  l  i ) (< i  l )) (assert_20_12_148 source  l  i ))))
(assert (forall ((source (Array Int Int)) (l Int) (i Int) ) ( => ( and (while_19_1_175 source  l  i ) (not (< i  l ))) (end source  l  i ))))
;
;(assert)  (((0<=k)&&(k<l))=>(!(source[k]==0)))
(assert (forall ((k Int) (i Int) (l Int) (source (Array Int Int)) ) ( => (assert_20_12_148 source  l  i ) (=> (and (<= 0 k ) (< k  l )) (not (= (select source  k ) 0))))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_20_12_148 source  l  i ) (assert_21_5_163 source  l  i ))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_21_5_163 source  l  i ) (not (= (select source  i ) 0)))))
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assert_21_5_163 source  l  i ) (assign_22_5_172 source  l  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source (Array Int Int)) ) ( => (assign_22_5_172 source  l  i ) (while_19_1_175 source  l  (+ i  1)))))
(check-sat)
