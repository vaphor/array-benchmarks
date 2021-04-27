;Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(set-logic HORN)
(declare-fun assign_22_5_139 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_21_5_130 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_20_1_142 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_19_1_104 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_16_5_95 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_15_5_86 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_14_5_77 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_13_1_98 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_11_1_55 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_10_1_43 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_9_1_37 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => true (start a_copy  a  size  j  i ))))
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  size  j  i ) (assign_9_1_37 a_copy  a  size  j  i ))))
;
;(assign)  i := 1
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_9_1_37 a_copy  a  size  j  i ) (assign_10_1_43 a_copy  a  size  j  1))))
;
;(assign)  j := 0
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_10_1_43 a_copy  a  size  j  i ) (assign_11_1_55 a_copy  a  size  0 i ))))
;
;(assign)  size := Support.random()
(assert (forall ((rnd Int) (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_11_1_55 a_copy  a  size  j  i ) (while_13_1_98 a_copy  a  rnd j  i ))))
;
;(while)   while((i<size))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => ( and (while_13_1_98 a_copy  a  size  j  i ) (< i  size )) (arrayassign_14_5_77 a_copy  a  size  j  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => ( and (while_13_1_98 a_copy  a  size  j  i ) (not (< i  size ))) (assign_19_1_104 a_copy  a  size  j  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_14_5_77 a_copy  a  size  j  i ) (assign_15_5_86 (store a_copy  i  (select a  i )) a  size  j  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_15_5_86 a_copy  a  size  j  i ) (assign_16_5_95 a_copy  a  size  j  (+ i  2)))))
;
;(assign)  j := (j+1)
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_16_5_95 a_copy  a  size  j  i ) (while_13_1_98 a_copy  a  size  (+ j  1) i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_19_1_104 a_copy  a  size  j  i ) (while_20_1_142 a_copy  a  size  j  0))))
;
;(while)   while((i<size))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => ( and (while_20_1_142 a_copy  a  size  j  i ) (< i  size )) (assert_21_5_130 a_copy  a  size  j  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) ) ( => ( and (while_20_1_142 a_copy  a  size  j  i ) (not (< i  size ))) (end a_copy  a  size  j  i ))))
;
;(assert)  (a_copy[i]==a[j])
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_21_5_130 a_copy  a  size  j  i ) (= (select a_copy  i ) (select a  j )))))
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_21_5_130 a_copy  a  size  j  i ) (assign_22_5_139 a_copy  a  size  j  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_22_5_139 a_copy  a  size  j  i ) (while_20_1_142 a_copy  a  size  j  (+ i  1)))))
(check-sat)
