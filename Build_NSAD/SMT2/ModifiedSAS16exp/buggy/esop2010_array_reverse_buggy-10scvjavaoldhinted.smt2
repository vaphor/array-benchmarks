;Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(set-logic HORN)
(declare-fun assert_24_1_171 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_23_1_147 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_20_5_126 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_19_5_117 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_18_1_129 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_17_1_89 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_14_5_80 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_13_5_71 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_12_1_83 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_10_1_49 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_9_1_37 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => true (start a_copy  a  size  k  i ))))
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  size  k  i ) (assign_9_1_37 a_copy  a  size  k  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_9_1_37 a_copy  a  size  k  i ) (assign_10_1_49 a_copy  a  size  k  0))))
;
;(assign)  size := Support.random()
(assert (forall ((rnd Int) (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_10_1_49 a_copy  a  size  k  i ) (while_12_1_83 a_copy  a  rnd k  i ))))
;
;(while)   while((i<size))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (while_12_1_83 a_copy  a  size  k  i ) (< i  size )) (arrayassign_13_5_71 a_copy  a  size  k  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (while_12_1_83 a_copy  a  size  k  i ) (not (< i  size ))) (assign_17_1_89 a_copy  a  size  k  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_13_5_71 a_copy  a  size  k  i ) (assign_14_5_80 (store a_copy  i  (select a  i )) a  size  k  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_14_5_80 a_copy  a  size  k  i ) (while_12_1_83 a_copy  a  size  k  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_17_1_89 a_copy  a  size  k  i ) (while_18_1_129 a_copy  a  size  k  0))))
;
;(while)   while((i<size))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (while_18_1_129 a_copy  a  size  k  i ) (< i  size )) (arrayassign_19_5_117 a_copy  a  size  k  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (while_18_1_129 a_copy  a  size  k  i ) (not (< i  size ))) (assign_23_1_147 a_copy  a  size  k  i ))))
;
;(aassign) a[i] := a_copy[((size-i)-1)]
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_19_5_117 a_copy  a  size  k  i ) (assign_20_5_126 a_copy  (store a  i  (select a_copy  (- (- size  i ) 1))) size  k  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_20_5_126 a_copy  a  size  k  i ) (while_18_1_129 a_copy  a  size  k  (+ i  1)))))
;
;(assign)  k := Support.random(0, (size+1))
(assert (forall ((rnd Int) (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (assign_23_1_147 a_copy  a  size  k  i ) (>= rnd 0) (< rnd (+ size  1))) (assert_24_1_171 a_copy  a  size  rnd i ))))
;
;(assert)  (a_copy[((size-1)-k)]==a[k])
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_24_1_171 a_copy  a  size  k  i ) (= (select a_copy  (- (- size  1) k )) (select a  k )))))
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_24_1_171 a_copy  a  size  k  i ) (end a_copy  a  size  k  i ))))
(check-sat)
