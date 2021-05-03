;Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(set-logic HORN)
(declare-fun assign_25_5_193 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_24_5_184 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_22_1_196 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_21_1_128 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_18_5_119 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_17_5_110 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_15_1_122 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_14_1_58 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_12_1_52 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => true (start a_copy  a  N  i ))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  N  i ) (assign_12_1_52 a_copy  a  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_12_1_52 a_copy  a  N  i ) (assign_14_1_58 a_copy  a  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_14_1_58 a_copy  a  N  i ) (while_15_1_122 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_15_1_122 a_copy  a  N  i ) (< i  N )) (arrayassign_17_5_110 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_15_1_122 a_copy  a  N  i ) (not (< i  N ))) (assign_21_1_128 a_copy  a  N  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_17_5_110 a_copy  a  N  i ) (assign_18_5_119 (store a_copy  i  (select a  i )) a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_18_5_119 a_copy  a  N  i ) (while_15_1_122 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_21_1_128 a_copy  a  N  i ) (while_22_1_196 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_22_1_196 a_copy  a  N  i ) (< i  N )) (assert_24_5_184 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_22_1_196 a_copy  a  N  i ) (not (< i  N ))) (end a_copy  a  N  i ))))
;
;(assert)  (a_copy[i]==a[i])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_24_5_184 a_copy  a  N  i ) (= (select a_copy  i ) (select a  i )))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_24_5_184 a_copy  a  N  i ) (assign_25_5_193 a_copy  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_25_5_193 a_copy  a  N  i ) (while_22_1_196 a_copy  a  N  (+ i  1)))))
(check-sat)
