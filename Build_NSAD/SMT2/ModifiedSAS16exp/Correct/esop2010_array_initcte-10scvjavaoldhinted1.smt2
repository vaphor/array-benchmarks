;Number of predicates (nodes) = 14
;Number of variables = 4
;Number of clauses = 19
;
(set-logic HORN)
(declare-fun assign_190_23_5 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_181_22_5 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_167_21_12 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_193_20_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_130_19_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_121_16_5 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_112_15_5 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_102_14_12 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_124_13_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_65_12_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_59_10_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_47_9_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => true (start a  c  N  i ))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (start a  c  N  i ) (assign_47_9_1 a  c  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_47_9_1 a  c  N  i ) (assign_59_10_1 a  c  rnd i ))))
;
;(assign)  c := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_59_10_1 a  c  N  i ) (assign_65_12_8 a  rnd N  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_65_12_8 a  c  N  i ) (while_124_13_1 a  c  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => ( and (while_124_13_1 a  c  N  i ) (< i  N )) (assert_102_14_12 a  c  N  i ))))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => ( and (while_124_13_1 a  c  N  i ) (not (< i  N ))) (assign_130_19_1 a  c  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==c))
(assert (forall ((k Int) (i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assert_102_14_12 a  c  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a  k ) c )))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assert_102_14_12 a  c  N  i ) (arrayassign_112_15_5 a  c  N  i ))))
;
;(aassign) a[i] := c
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (arrayassign_112_15_5 a  c  N  i ) (assign_121_16_5 (store a  i  c ) c  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_121_16_5 a  c  N  i ) (while_124_13_1 a  c  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_130_19_1 a  c  N  i ) (while_193_20_1 a  c  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => ( and (while_193_20_1 a  c  N  i ) (< i  N )) (assert_167_21_12 a  c  N  i ))))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => ( and (while_193_20_1 a  c  N  i ) (not (< i  N ))) (end a  c  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==c))
(assert (forall ((k Int) (i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assert_167_21_12 a  c  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (select a  k ) c )))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assert_167_21_12 a  c  N  i ) (assert_181_22_5 a  c  N  i ))))
;
;(assert)  (a[i]==c)
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assert_181_22_5 a  c  N  i ) (= (select a  i ) c ))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assert_181_22_5 a  c  N  i ) (assign_190_23_5 a  c  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_190_23_5 a  c  N  i ) (while_193_20_1 a  c  N  (+ i  1)))))
(check-sat)
