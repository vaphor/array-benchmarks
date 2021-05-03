;Number of predicates (nodes) = 18
;Number of variables = 4
;Number of clauses = 25
;
(set-logic HORN)
(declare-fun assign_287_29_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_278_28_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_254_27_12 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_290_26_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_210_25_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_201_22_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_192_21_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_172_20_12 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_204_19_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_128_18_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_119_15_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_110_14_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_96_13_12 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_122_12_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_58_11_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_52_9_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => true (start a_copy  a  N  i ))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  N  i ) (assign_52_9_1 a_copy  a  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_52_9_1 a_copy  a  N  i ) (assign_58_11_8 a_copy  a  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_58_11_8 a_copy  a  N  i ) (while_122_12_1 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_122_12_1 a_copy  a  N  i ) (< i  N )) (assert_96_13_12 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_122_12_1 a_copy  a  N  i ) (not (< i  N ))) (assign_128_18_1 a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_96_13_12 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a_copy  k ) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_96_13_12 a_copy  a  N  i ) (arrayassign_110_14_5 a_copy  a  N  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_110_14_5 a_copy  a  N  i ) (assign_119_15_5 (store a_copy  i  (select a  i )) a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_119_15_5 a_copy  a  N  i ) (while_122_12_1 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_128_18_1 a_copy  a  N  i ) (while_204_19_1 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_204_19_1 a_copy  a  N  i ) (< i  N )) (assert_172_20_12 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_204_19_1 a_copy  a  N  i ) (not (< i  N ))) (assign_210_25_1 a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_172_20_12 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a_copy  (- (- N  k ) 1)) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_172_20_12 a_copy  a  N  i ) (arrayassign_192_21_5 a_copy  a  N  i ))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_192_21_5 a_copy  a  N  i ) (assign_201_22_5 a_copy  (store a  i  (select a_copy  (- (- N  i ) 1))) N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_201_22_5 a_copy  a  N  i ) (while_204_19_1 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_210_25_1 a_copy  a  N  i ) (while_290_26_1 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_290_26_1 a_copy  a  N  i ) (< i  N )) (assert_254_27_12 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_290_26_1 a_copy  a  N  i ) (not (< i  N ))) (end a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_254_27_12 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (select a_copy  (- (- N  k ) 1)) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_254_27_12 a_copy  a  N  i ) (assert_278_28_5 a_copy  a  N  i ))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_278_28_5 a_copy  a  N  i ) (= (select a  i ) (select a_copy  (- (- N  i ) 1))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_278_28_5 a_copy  a  N  i ) (assign_287_29_5 a_copy  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_287_29_5 a_copy  a  N  i ) (while_290_26_1 a_copy  a  N  (+ i  1)))))
(check-sat)
