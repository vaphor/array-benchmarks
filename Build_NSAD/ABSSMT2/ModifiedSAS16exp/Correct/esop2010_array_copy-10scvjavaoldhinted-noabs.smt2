;Number of predicates (nodes) = 13
;Number of variables = 4
;Number of clauses = 18
;
(set-logic HORN)
(declare-fun assign_22_5_205 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_21_5_196 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_20_12_178 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_19_1_208 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_18_1_134 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_15_5_125 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_14_5_116 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_13_12_102 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_12_1_128 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_11_1_58 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_10_1_52 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => true (start a_copy  a  N  i ))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  N  i ) (assign_10_1_52 a_copy  a  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_10_1_52 a_copy  a  N  i ) (assign_11_1_58 a_copy  a  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_11_1_58 a_copy  a  N  i ) (while_12_1_128 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_12_1_128 a_copy  a  N  i ) (< i  N )) (assert_13_12_102 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_12_1_128 a_copy  a  N  i ) (not (< i  N ))) (assign_18_1_134 a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==a_copy[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_13_12_102 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a  k ) (select a_copy  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_13_12_102 a_copy  a  N  i ) (arrayassign_14_5_116 a_copy  a  N  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_14_5_116 a_copy  a  N  i ) (assign_15_5_125 (store a_copy  i  (select a  i )) a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_15_5_125 a_copy  a  N  i ) (while_12_1_128 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_18_1_134 a_copy  a  N  i ) (while_19_1_208 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_19_1_208 a_copy  a  N  i ) (< i  N )) (assert_20_12_178 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_19_1_208 a_copy  a  N  i ) (not (< i  N ))) (end a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==a_copy[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_20_12_178 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (select a  k ) (select a_copy  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_20_12_178 a_copy  a  N  i ) (assert_21_5_196 a_copy  a  N  i ))))
;
;(assert)  (a[i]==a_copy[i])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_21_5_196 a_copy  a  N  i ) (= (select a  i ) (select a_copy  i )))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_21_5_196 a_copy  a  N  i ) (assign_22_5_205 a_copy  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_22_5_205 a_copy  a  N  i ) (while_19_1_208 a_copy  a  N  (+ i  1)))))
(check-sat)
