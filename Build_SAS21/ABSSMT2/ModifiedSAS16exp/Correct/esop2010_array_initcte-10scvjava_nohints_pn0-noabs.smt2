;Number of predicates (nodes) = 12
;Number of variables = 4
;Number of clauses = 15
;
(set-logic HORN)
(declare-fun assign_23_5_184 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_22_5_175 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_20_1_187 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_19_1_127 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_16_5_118 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_15_5_109 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_13_1_121 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_12_8_65 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_10_1_59 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_9_1_47 ((Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => true (start a  c  N  i ))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (start a  c  N  i ) (assign_9_1_47 a  c  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_9_1_47 a  c  N  i ) (assign_10_1_59 a  c  rnd i ))))
;
;(assign)  c := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_10_1_59 a  c  N  i ) (assign_12_8_65 a  rnd N  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_12_8_65 a  c  N  i ) (while_13_1_121 a  c  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => ( and (while_13_1_121 a  c  N  i ) (< i  N )) (arrayassign_15_5_109 a  c  N  i ))))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => ( and (while_13_1_121 a  c  N  i ) (not (< i  N ))) (assign_19_1_127 a  c  N  i ))))
;
;(aassign) a[i] := c
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (arrayassign_15_5_109 a  c  N  i ) (assign_16_5_118 (store a  i  c ) c  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_16_5_118 a  c  N  i ) (while_13_1_121 a  c  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_19_1_127 a  c  N  i ) (while_20_1_187 a  c  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => ( and (while_20_1_187 a  c  N  i ) (< i  N )) (assert_22_5_175 a  c  N  i ))))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) ) ( => ( and (while_20_1_187 a  c  N  i ) (not (< i  N ))) (end a  c  N  i ))))
;
;(assert)  (a[i]==c)
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assert_22_5_175 a  c  N  i ) (= (select a  i ) c ))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assert_22_5_175 a  c  N  i ) (assign_23_5_184 a  c  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) ) ( => (assign_23_5_184 a  c  N  i ) (while_20_1_187 a  c  N  (+ i  1)))))
(check-sat)
