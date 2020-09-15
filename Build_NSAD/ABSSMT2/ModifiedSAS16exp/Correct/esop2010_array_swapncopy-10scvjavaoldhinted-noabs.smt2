;Number of predicates (nodes) = 22
;Number of variables = 6
;Number of clauses = 31
;
(set-logic HORN)
(declare-fun assign_34_10_376 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_33_10_367 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_32_3_349 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_31_10_331 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_30_10_298 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_29_8_379 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_28_1_257 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_25_5_248 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_24_5_239 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_23_5_225 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_22_12_211 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_21_12_178 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_20_1_251 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_19_1_137 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_17_5_128 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_16_12_119 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_15_5_105 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_13_1_131 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_12_8_83 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_11_1_77 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => true (start b_copy  a_copy  b  a  N  i ))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (start b_copy  a_copy  b  a  N  i ) (assign_11_1_77 b_copy  a_copy  b  a  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_11_1_77 b_copy  a_copy  b  a  N  i ) (assign_12_8_83 b_copy  a_copy  b  a  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_12_8_83 b_copy  a_copy  b  a  N  i ) (while_13_1_131 b_copy  a_copy  b  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_13_1_131 b_copy  a_copy  b  a  N  i ) (< i  N )) (arrayassign_15_5_105 b_copy  a_copy  b  a  N  i ))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_13_1_131 b_copy  a_copy  b  a  N  i ) (not (< i  N ))) (assign_19_1_137 b_copy  a_copy  b  a  N  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (arrayassign_15_5_105 b_copy  a_copy  b  a  N  i ) (arrayassign_16_12_119 b_copy  (store a_copy  i  (select a  i )) b  a  N  i ))))
;
;(aassign) b_copy[i] := b[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (arrayassign_16_12_119 b_copy  a_copy  b  a  N  i ) (assign_17_5_128 (store b_copy  i  (select b  i )) a_copy  b  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_17_5_128 b_copy  a_copy  b  a  N  i ) (while_13_1_131 b_copy  a_copy  b  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_19_1_137 b_copy  a_copy  b  a  N  i ) (while_20_1_251 b_copy  a_copy  b  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_20_1_251 b_copy  a_copy  b  a  N  i ) (< i  N )) (assert_21_12_178 b_copy  a_copy  b  a  N  i ))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_20_1_251 b_copy  a_copy  b  a  N  i ) (not (< i  N ))) (assign_28_1_257 b_copy  a_copy  b  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==b[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_21_12_178 b_copy  a_copy  b  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a_copy  k ) (select b  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_21_12_178 b_copy  a_copy  b  a  N  i ) (assert_22_12_211 b_copy  a_copy  b  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(b_copy[k]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_22_12_211 b_copy  a_copy  b  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select b_copy  k ) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_22_12_211 b_copy  a_copy  b  a  N  i ) (arrayassign_23_5_225 b_copy  a_copy  b  a  N  i ))))
;
;(aassign) a_copy[i] := b[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (arrayassign_23_5_225 b_copy  a_copy  b  a  N  i ) (arrayassign_24_5_239 b_copy  (store a_copy  i  (select b  i )) b  a  N  i ))))
;
;(aassign) b_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (arrayassign_24_5_239 b_copy  a_copy  b  a  N  i ) (assign_25_5_248 (store b_copy  i  (select a  i )) a_copy  b  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_25_5_248 b_copy  a_copy  b  a  N  i ) (while_20_1_251 b_copy  a_copy  b  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_28_1_257 b_copy  a_copy  b  a  N  i ) (while_29_8_379 b_copy  a_copy  b  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_29_8_379 b_copy  a_copy  b  a  N  i ) (< i  N )) (assert_30_10_298 b_copy  a_copy  b  a  N  i ))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_29_8_379 b_copy  a_copy  b  a  N  i ) (not (< i  N ))) (end b_copy  a_copy  b  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[k]==b[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_30_10_298 b_copy  a_copy  b  a  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (select a_copy  k ) (select b  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_30_10_298 b_copy  a_copy  b  a  N  i ) (assert_31_10_331 b_copy  a_copy  b  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>(b_copy[k]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_31_10_331 b_copy  a_copy  b  a  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (select b_copy  k ) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_31_10_331 b_copy  a_copy  b  a  N  i ) (assert_32_3_349 b_copy  a_copy  b  a  N  i ))))
;
;(assert)  (a[i]==b_copy[i])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_32_3_349 b_copy  a_copy  b  a  N  i ) (= (select a  i ) (select b_copy  i )))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_32_3_349 b_copy  a_copy  b  a  N  i ) (assert_33_10_367 b_copy  a_copy  b  a  N  i ))))
;
;(assert)  (b[i]==a_copy[i])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_33_10_367 b_copy  a_copy  b  a  N  i ) (= (select b  i ) (select a_copy  i )))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_33_10_367 b_copy  a_copy  b  a  N  i ) (assign_34_10_376 b_copy  a_copy  b  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_34_10_376 b_copy  a_copy  b  a  N  i ) (while_29_8_379 b_copy  a_copy  b  a  N  (+ i  1)))))
(check-sat)
