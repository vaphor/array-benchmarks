;Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_32_8_266 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_31_8_257 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_30_8_240 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_28_6_269 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_27_6_200 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_24_8_191 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_23_8_182 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_22_8_165 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_20_6_194 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_19_6_125 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_16_8_116 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_15_8_107 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_14_8_94 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_13_8_82 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_11_6_119 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_10_6_42 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_8_6_36 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val v N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val v N i)) (assign_8_6_36 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (rnd Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_8_6_36 a0_ind a0_val a1_ind a1_val v N i)) (assign_10_6_42 a0_ind a0_val a1_ind a1_val v rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_10_6_42 a0_ind a0_val a1_ind a1_val v N i)) (while_11_6_119 a0_ind a0_val a1_ind a1_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_11_6_119 a0_ind a0_val a1_ind a1_val v N i) (< i N)) (assert_13_8_82 a0_ind a0_val a1_ind a1_val v N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_11_6_119 a0_ind a0_val a1_ind a1_val v N i) (not (< i N))) (assign_19_6_125 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_13_8_82 a0_ind a0_val a1_ind a1_val v N i) (or (and (= a0_ind k) (= tmp_select_a a0_val)) (and (= a1_ind k) (= tmp_select_a a1_val)) (and (< k a0_ind) (< k a1_ind) (assert_13_8_82 k tmp_select_a a1_ind a1_val v N i) (< k a0_ind) (assert_13_8_82 k tmp_select_a a0_ind a0_val v N i)) (and (< a0_ind k) (< k a1_ind) (< k a1_ind) (assert_13_8_82 k tmp_select_a a1_ind a1_val v N i) (< a0_ind k) (assert_13_8_82 a0_ind a0_val k tmp_select_a v N i)) (and (< a1_ind k) (< a1_ind k) (assert_13_8_82 a1_ind a1_val k tmp_select_a v N i) (< a0_ind k) (assert_13_8_82 a0_ind a0_val k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k i)) (= (mod tmp_select_a 2) 0)))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_13_8_82 a0_ind a0_val a1_ind a1_val v N i)) (assign_14_8_94 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assign)  v := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (rnd Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_14_8_94 a0_ind a0_val a1_ind a1_val v N i)) (arrayassign_15_8_107 a0_ind a0_val a1_ind a1_val rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (tmp_store_a0_ind Int) (tmp_store_a0_val Int) (tmp_store_a1_ind Int) (tmp_store_a1_val Int) (v Int)) (=> (and (< a0_ind a1_ind) (arrayassign_15_8_107 a0_ind a0_val a1_ind a1_val v N i) (= tmp_store_a0_ind a0_ind) (= tmp_store_a1_ind a1_ind) (or (and (= a0_ind i) (= tmp_store_a1_val a1_val) (= tmp_store_a0_val (* v 2))) (and (= a1_ind i) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val (* v 2))) (and (not (= a0_ind i)) (not (= a1_ind i)) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val a1_val)))) (assign_16_8_116 tmp_store_a0_ind tmp_store_a0_val tmp_store_a1_ind tmp_store_a1_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_16_8_116 a0_ind a0_val a1_ind a1_val v N i)) (while_11_6_119 a0_ind a0_val a1_ind a1_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_19_6_125 a0_ind a0_val a1_ind a1_val v N i)) (while_20_6_194 a0_ind a0_val a1_ind a1_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_20_6_194 a0_ind a0_val a1_ind a1_val v N i) (< i N)) (assert_22_8_165 a0_ind a0_val a1_ind a1_val v N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_20_6_194 a0_ind a0_val a1_ind a1_val v N i) (not (< i N))) (assign_27_6_200 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_22_8_165 a0_ind a0_val a1_ind a1_val v N i) (or (and (= a0_ind k) (= tmp_select_a a0_val)) (and (= a1_ind k) (= tmp_select_a a1_val)) (and (< k a0_ind) (< k a1_ind) (assert_22_8_165 k tmp_select_a a1_ind a1_val v N i) (< k a0_ind) (assert_22_8_165 k tmp_select_a a0_ind a0_val v N i)) (and (< a0_ind k) (< k a1_ind) (< k a1_ind) (assert_22_8_165 k tmp_select_a a1_ind a1_val v N i) (< a0_ind k) (assert_22_8_165 a0_ind a0_val k tmp_select_a v N i)) (and (< a1_ind k) (< a1_ind k) (assert_22_8_165 a1_ind a1_val k tmp_select_a v N i) (< a0_ind k) (assert_22_8_165 a0_ind a0_val k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k i)) (= (mod tmp_select_a 2) 1)))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_22_8_165 a0_ind a0_val a1_ind a1_val v N i)) (arrayassign_23_8_182 a0_ind a0_val a1_ind a1_val v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (tmp_select_a Int) (tmp_store_a0_ind Int) (tmp_store_a0_val Int) (tmp_store_a1_ind Int) (tmp_store_a1_val Int) (v Int)) (=> (and (< a0_ind a1_ind) (arrayassign_23_8_182 a0_ind a0_val a1_ind a1_val v N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (arrayassign_23_8_182 i tmp_select_a a1_ind a1_val v N i) (< i a0_ind) (arrayassign_23_8_182 i tmp_select_a a0_ind a0_val v N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (arrayassign_23_8_182 i tmp_select_a a1_ind a1_val v N i) (< a0_ind i) (arrayassign_23_8_182 a0_ind a0_val i tmp_select_a v N i)) (and (< a1_ind i) (< a1_ind i) (arrayassign_23_8_182 a1_ind a1_val i tmp_select_a v N i) (< a0_ind i) (arrayassign_23_8_182 a0_ind a0_val i tmp_select_a v N i))) (= tmp_store_a0_ind a0_ind) (= tmp_store_a1_ind a1_ind) (or (and (= a0_ind i) (= tmp_store_a1_val a1_val) (= tmp_store_a0_val (+ tmp_select_a 1))) (and (= a1_ind i) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val (+ tmp_select_a 1))) (and (not (= a0_ind i)) (not (= a1_ind i)) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val a1_val)))) (assign_24_8_191 tmp_store_a0_ind tmp_store_a0_val tmp_store_a1_ind tmp_store_a1_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_24_8_191 a0_ind a0_val a1_ind a1_val v N i)) (while_20_6_194 a0_ind a0_val a1_ind a1_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_27_6_200 a0_ind a0_val a1_ind a1_val v N i)) (while_28_6_269 a0_ind a0_val a1_ind a1_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_28_6_269 a0_ind a0_val a1_ind a1_val v N i) (< i N)) (assert_30_8_240 a0_ind a0_val a1_ind a1_val v N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_28_6_269 a0_ind a0_val a1_ind a1_val v N i) (not (< i N))) (end a0_ind a0_val a1_ind a1_val v N i))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_30_8_240 a0_ind a0_val a1_ind a1_val v N i) (or (and (= a0_ind k) (= tmp_select_a a0_val)) (and (= a1_ind k) (= tmp_select_a a1_val)) (and (< k a0_ind) (< k a1_ind) (assert_30_8_240 k tmp_select_a a1_ind a1_val v N i) (< k a0_ind) (assert_30_8_240 k tmp_select_a a0_ind a0_val v N i)) (and (< a0_ind k) (< k a1_ind) (< k a1_ind) (assert_30_8_240 k tmp_select_a a1_ind a1_val v N i) (< a0_ind k) (assert_30_8_240 a0_ind a0_val k tmp_select_a v N i)) (and (< a1_ind k) (< a1_ind k) (assert_30_8_240 a1_ind a1_val k tmp_select_a v N i) (< a0_ind k) (assert_30_8_240 a0_ind a0_val k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k N)) (= (mod tmp_select_a 2) 1)))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_30_8_240 a0_ind a0_val a1_ind a1_val v N i)) (assert_31_8_257 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (tmp_select_a Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_31_8_257 a0_ind a0_val a1_ind a1_val v N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_31_8_257 i tmp_select_a a1_ind a1_val v N i) (< i a0_ind) (assert_31_8_257 i tmp_select_a a0_ind a0_val v N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_31_8_257 i tmp_select_a a1_ind a1_val v N i) (< a0_ind i) (assert_31_8_257 a0_ind a0_val i tmp_select_a v N i)) (and (< a1_ind i) (< a1_ind i) (assert_31_8_257 a1_ind a1_val i tmp_select_a v N i) (< a0_ind i) (assert_31_8_257 a0_ind a0_val i tmp_select_a v N i)))) (= (mod tmp_select_a 2) 1))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_31_8_257 a0_ind a0_val a1_ind a1_val v N i)) (assign_32_8_266 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_32_8_266 a0_ind a0_val a1_ind a1_val v N i)) (while_28_6_269 a0_ind a0_val a1_ind a1_val v N (+ i 1)))))
(check-sat)
