;Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(set-logic HORN)
(declare-fun assign_139_22_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_130_21_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_142_20_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_104_19_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_95_16_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_86_15_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_77_14_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_98_13_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_55_11_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_43_10_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_37_9_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => true (start a_copy  a  size  j  i ))))
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  size  j  i ) (assign_37_9_1 a_copy  a  size  j  i ))))
;
;(assign)  i := 1
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_37_9_1 a_copy  a  size  j  i ) (assign_43_10_1 a_copy  a  size  j  1))))
;
;(assign)  j := 0
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_43_10_1 a_copy  a  size  j  i ) (assign_55_11_1 a_copy  a  size  0 i ))))
;
;(assign)  size := Support.random()
(assert (forall ((rnd Int) (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_55_11_1 a_copy  a  size  j  i ) (while_98_13_1 a_copy  a  rnd j  i ))))
;
;(while)   while((i<size))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => ( and (while_98_13_1 a_copy  a  size  j  i ) (< i  size )) (arrayassign_77_14_5 a_copy  a  size  j  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => ( and (while_98_13_1 a_copy  a  size  j  i ) (not (< i  size ))) (assign_104_19_1 a_copy  a  size  j  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_77_14_5 a_copy  a  size  j  i ) (assign_86_15_5 (store a_copy  i  (select a  i )) a  size  j  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_86_15_5 a_copy  a  size  j  i ) (assign_95_16_5 a_copy  a  size  j  (+ i  2)))))
;
;(assign)  j := (j+1)
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_95_16_5 a_copy  a  size  j  i ) (while_98_13_1 a_copy  a  size  (+ j  1) i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_104_19_1 a_copy  a  size  j  i ) (while_142_20_1 a_copy  a  size  j  0))))
;
;(while)   while((i<size))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => ( and (while_142_20_1 a_copy  a  size  j  i ) (< i  size )) (assert_130_21_5 a_copy  a  size  j  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => ( and (while_142_20_1 a_copy  a  size  j  i ) (not (< i  size ))) (end a_copy  a  size  j  i ))))
;
;(assert)  (a_copy[i]==a[j])
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_130_21_5 a_copy  a  size  j  i ) (= (select a_copy  i ) (select a  j )))))
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_130_21_5 a_copy  a  size  j  i ) (assign_139_22_5 a_copy  a  size  j  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_139_22_5 a_copy  a  size  j  i ) (while_142_20_1 a_copy  a  size  j  (+ i  1)))))
(check-sat)
