;Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(set-logic HORN)
(declare-fun assign_193_25_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_184_24_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_196_22_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_128_21_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_119_18_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_110_17_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_122_15_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_58_14_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_52_12_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => true (start a_copy  a  N  i ))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  N  i ) (assign_52_12_1 a_copy  a  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_52_12_1 a_copy  a  N  i ) (assign_58_14_1 a_copy  a  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_58_14_1 a_copy  a  N  i ) (while_122_15_1 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_122_15_1 a_copy  a  N  i ) (< i  N )) (arrayassign_110_17_5 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_122_15_1 a_copy  a  N  i ) (not (< i  N ))) (assign_128_21_1 a_copy  a  N  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_110_17_5 a_copy  a  N  i ) (assign_119_18_5 (store a_copy  i  (select a  i )) a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_119_18_5 a_copy  a  N  i ) (while_122_15_1 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_128_21_1 a_copy  a  N  i ) (while_196_22_1 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_196_22_1 a_copy  a  N  i ) (< i  N )) (assert_184_24_5 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_196_22_1 a_copy  a  N  i ) (not (< i  N ))) (end a_copy  a  N  i ))))
;
;(assert)  (a_copy[i]==a[i])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_184_24_5 a_copy  a  N  i ) (= (select a_copy  i ) (select a  i )))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_184_24_5 a_copy  a  N  i ) (assign_193_25_5 a_copy  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_193_25_5 a_copy  a  N  i ) (while_196_22_1 a_copy  a  N  (+ i  1)))))
(check-sat)
