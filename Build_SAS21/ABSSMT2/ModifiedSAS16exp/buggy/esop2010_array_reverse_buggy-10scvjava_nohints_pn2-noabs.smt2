;Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(set-logic HORN)
(declare-fun assert_171_24_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_147_23_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_126_20_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_117_19_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_129_18_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_89_17_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_80_14_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_71_13_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_83_12_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_49_10_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_37_9_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => true (start a_copy  a  size  k  i ))))
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  size  k  i ) (assign_37_9_1 a_copy  a  size  k  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_37_9_1 a_copy  a  size  k  i ) (assign_49_10_1 a_copy  a  size  k  0))))
;
;(assign)  size := Support.random()
(assert (forall ((rnd Int) (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_49_10_1 a_copy  a  size  k  i ) (while_83_12_1 a_copy  a  rnd k  i ))))
;
;(while)   while((i<size))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (while_83_12_1 a_copy  a  size  k  i ) (< i  size )) (arrayassign_71_13_5 a_copy  a  size  k  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (while_83_12_1 a_copy  a  size  k  i ) (not (< i  size ))) (assign_89_17_1 a_copy  a  size  k  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_71_13_5 a_copy  a  size  k  i ) (assign_80_14_5 (store a_copy  i  (select a  i )) a  size  k  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_80_14_5 a_copy  a  size  k  i ) (while_83_12_1 a_copy  a  size  k  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_89_17_1 a_copy  a  size  k  i ) (while_129_18_1 a_copy  a  size  k  0))))
;
;(while)   while((i<size))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (while_129_18_1 a_copy  a  size  k  i ) (< i  size )) (arrayassign_117_19_5 a_copy  a  size  k  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (while_129_18_1 a_copy  a  size  k  i ) (not (< i  size ))) (assign_147_23_1 a_copy  a  size  k  i ))))
;
;(aassign) a[i] := a_copy[((size-i)-1)]
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_117_19_5 a_copy  a  size  k  i ) (assign_126_20_5 a_copy  (store a  i  (select a_copy  (- (- size  i ) 1))) size  k  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_126_20_5 a_copy  a  size  k  i ) (while_129_18_1 a_copy  a  size  k  (+ i  1)))))
;
;(assign)  k := Support.random(0, (size+1))
(assert (forall ((rnd Int) (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) ) ( => ( and (assign_147_23_1 a_copy  a  size  k  i ) (>= rnd 0) (< rnd (+ size  1))) (assert_171_24_1 a_copy  a  size  rnd i ))))
;
;(assert)  (a_copy[((size-1)-k)]==a[k])
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_171_24_1 a_copy  a  size  k  i ) (= (select a_copy  (- (- size  1) k )) (select a  k )))))
(assert (forall ((i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_171_24_1 a_copy  a  size  k  i ) (end a_copy  a  size  k  i ))))
(check-sat)
