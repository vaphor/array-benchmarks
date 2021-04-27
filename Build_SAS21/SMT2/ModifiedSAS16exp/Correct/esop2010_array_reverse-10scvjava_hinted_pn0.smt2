;Number of predicates (nodes) = 18
;Number of variables = 4
;Number of clauses = 25
;
(set-logic HORN)
(declare-fun assign_29_5_287 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_28_5_278 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_27_12_254 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_26_1_290 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_25_1_210 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_22_5_201 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_21_5_192 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_20_12_172 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_19_1_204 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_18_1_128 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_15_5_119 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_14_5_110 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_13_12_96 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_12_1_122 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_11_8_58 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_9_1_52 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => true (start a_copy  a  N  i ))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  N  i ) (assign_9_1_52 a_copy  a  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_9_1_52 a_copy  a  N  i ) (assign_11_8_58 a_copy  a  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_11_8_58 a_copy  a  N  i ) (while_12_1_122 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_12_1_122 a_copy  a  N  i ) (< i  N )) (assert_13_12_96 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_12_1_122 a_copy  a  N  i ) (not (< i  N ))) (assign_18_1_128 a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_13_12_96 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a_copy  k ) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_13_12_96 a_copy  a  N  i ) (arrayassign_14_5_110 a_copy  a  N  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_14_5_110 a_copy  a  N  i ) (assign_15_5_119 (store a_copy  i  (select a  i )) a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_15_5_119 a_copy  a  N  i ) (while_12_1_122 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_18_1_128 a_copy  a  N  i ) (while_19_1_204 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_19_1_204 a_copy  a  N  i ) (< i  N )) (assert_20_12_172 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_19_1_204 a_copy  a  N  i ) (not (< i  N ))) (assign_25_1_210 a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_20_12_172 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a_copy  (- (- N  k ) 1)) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_20_12_172 a_copy  a  N  i ) (arrayassign_21_5_192 a_copy  a  N  i ))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_21_5_192 a_copy  a  N  i ) (assign_22_5_201 a_copy  (store a  i  (select a_copy  (- (- N  i ) 1))) N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_22_5_201 a_copy  a  N  i ) (while_19_1_204 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_25_1_210 a_copy  a  N  i ) (while_26_1_290 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_26_1_290 a_copy  a  N  i ) (< i  N )) (assert_27_12_254 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_26_1_290 a_copy  a  N  i ) (not (< i  N ))) (end a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_27_12_254 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (select a_copy  (- (- N  k ) 1)) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_27_12_254 a_copy  a  N  i ) (assert_28_5_278 a_copy  a  N  i ))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_28_5_278 a_copy  a  N  i ) (= (select a  i ) (select a_copy  (- (- N  i ) 1))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_28_5_278 a_copy  a  N  i ) (assign_29_5_287 a_copy  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_29_5_287 a_copy  a  N  i ) (while_26_1_290 a_copy  a  N  (+ i  1)))))
(check-sat)
