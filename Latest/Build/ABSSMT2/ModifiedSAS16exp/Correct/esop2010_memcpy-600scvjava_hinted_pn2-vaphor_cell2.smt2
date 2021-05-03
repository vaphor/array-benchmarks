;Number of predicates (nodes) = 13
;Number of variables = 4
;Number of clauses = 18
;
(set-logic HORN)
(declare-fun assign_193_25_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_184_24_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_166_23_12 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_196_22_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_128_21_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_119_18_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_110_17_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_96_16_12 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_122_15_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_58_14_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_52_12_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind)) (start a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (start a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (assign_52_12_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int) (rnd Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assign_52_12_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (assign_58_14_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assign_58_14_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (while_122_15_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (while_122_15_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (< i N)) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (while_122_15_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (not (< i N))) (assign_128_21_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==a[k]))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (< k a_copy0_ind) (assert_96_16_12 k tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val a1_ind a1_val N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_96_16_12 a_copy1_ind a_copy1_val k tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i))) (or (and (= a0_ind k) (= tmp_select_a a0_val)) (and (= a1_ind k) (= tmp_select_a a1_val)) (and (< k a0_ind) (< k a1_ind) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (< k a_copy0_ind) (assert_96_16_12 k tmp_select_a_copy a_copy0_ind a_copy0_val k tmp_select_a a1_ind a1_val N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_96_16_12 a_copy1_ind a_copy1_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i))) (< k a0_ind) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val k tmp_select_a a0_ind a0_val N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a0_ind a0_val N i) (< k a_copy0_ind) (assert_96_16_12 k tmp_select_a_copy a_copy0_ind a_copy0_val k tmp_select_a a0_ind a0_val N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a0_ind a0_val N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a0_ind a0_val N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_96_16_12 a_copy1_ind a_copy1_val k tmp_select_a_copy k tmp_select_a a0_ind a0_val N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a0_ind a0_val N i)))) (and (< a0_ind k) (< k a1_ind) (< k a1_ind) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (< k a_copy0_ind) (assert_96_16_12 k tmp_select_a_copy a_copy0_ind a_copy0_val k tmp_select_a a1_ind a1_val N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_96_16_12 a_copy1_ind a_copy1_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i))) (< a0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (< k a_copy0_ind) (assert_96_16_12 k tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val k tmp_select_a N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_96_16_12 a_copy1_ind a_copy1_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i)))) (and (< a1_ind k) (< a1_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a1_ind a1_val k tmp_select_a N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a1_ind a1_val k tmp_select_a N i) (< k a_copy0_ind) (assert_96_16_12 k tmp_select_a_copy a_copy0_ind a_copy0_val a1_ind a1_val k tmp_select_a N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a1_ind a1_val k tmp_select_a N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a1_ind a1_val k tmp_select_a N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_96_16_12 a_copy1_ind a_copy1_val k tmp_select_a_copy a1_ind a1_val k tmp_select_a N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a1_ind a1_val k tmp_select_a N i))) (< a0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (< k a_copy0_ind) (assert_96_16_12 k tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val k tmp_select_a N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_96_16_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_96_16_12 a_copy1_ind a_copy1_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i) (< a_copy0_ind k) (assert_96_16_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i)))))) (=> (and (<= 0 k) (< k i)) (= tmp_select_a_copy tmp_select_a)))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assert_96_16_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (arrayassign_110_17_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_copy0_ind Int) (tmp_store_a_copy0_val Int) (tmp_store_a_copy1_ind Int) (tmp_store_a_copy1_val Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (arrayassign_110_17_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (arrayassign_110_17_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val i tmp_select_a a1_ind a1_val N i) (< i a0_ind) (arrayassign_110_17_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val i tmp_select_a a0_ind a0_val N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (arrayassign_110_17_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val i tmp_select_a a1_ind a1_val N i) (< a0_ind i) (arrayassign_110_17_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val i tmp_select_a N i)) (and (< a1_ind i) (< a1_ind i) (arrayassign_110_17_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a1_ind a1_val i tmp_select_a N i) (< a0_ind i) (arrayassign_110_17_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val i tmp_select_a N i))) (= tmp_store_a_copy0_ind a_copy0_ind) (= tmp_store_a_copy1_ind a_copy1_ind) (or (and (= a_copy0_ind i) (= tmp_store_a_copy1_val a_copy1_val) (= tmp_store_a_copy0_val tmp_select_a)) (and (= a_copy1_ind i) (= tmp_store_a_copy0_val a_copy0_val) (= tmp_store_a_copy1_val tmp_select_a)) (and (not (= a_copy0_ind i)) (not (= a_copy1_ind i)) (= tmp_store_a_copy0_val a_copy0_val) (= tmp_store_a_copy1_val a_copy1_val)))) (assign_119_18_5 tmp_store_a_copy0_ind tmp_store_a_copy0_val tmp_store_a_copy1_ind tmp_store_a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assign_119_18_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (while_122_15_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assign_128_21_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (while_196_22_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (while_196_22_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (< i N)) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (while_196_22_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (not (< i N))) (end a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[k]==a[k]))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (< k a_copy0_ind) (assert_166_23_12 k tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val a1_ind a1_val N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_166_23_12 a_copy1_ind a_copy1_val k tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i))) (or (and (= a0_ind k) (= tmp_select_a a0_val)) (and (= a1_ind k) (= tmp_select_a a1_val)) (and (< k a0_ind) (< k a1_ind) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (< k a_copy0_ind) (assert_166_23_12 k tmp_select_a_copy a_copy0_ind a_copy0_val k tmp_select_a a1_ind a1_val N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_166_23_12 a_copy1_ind a_copy1_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i))) (< k a0_ind) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val k tmp_select_a a0_ind a0_val N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a0_ind a0_val N i) (< k a_copy0_ind) (assert_166_23_12 k tmp_select_a_copy a_copy0_ind a_copy0_val k tmp_select_a a0_ind a0_val N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a0_ind a0_val N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a0_ind a0_val N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_166_23_12 a_copy1_ind a_copy1_val k tmp_select_a_copy k tmp_select_a a0_ind a0_val N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a0_ind a0_val N i)))) (and (< a0_ind k) (< k a1_ind) (< k a1_ind) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (< k a_copy0_ind) (assert_166_23_12 k tmp_select_a_copy a_copy0_ind a_copy0_val k tmp_select_a a1_ind a1_val N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val k tmp_select_a a1_ind a1_val N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_166_23_12 a_copy1_ind a_copy1_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy k tmp_select_a a1_ind a1_val N i))) (< a0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (< k a_copy0_ind) (assert_166_23_12 k tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val k tmp_select_a N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_166_23_12 a_copy1_ind a_copy1_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i)))) (and (< a1_ind k) (< a1_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a1_ind a1_val k tmp_select_a N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a1_ind a1_val k tmp_select_a N i) (< k a_copy0_ind) (assert_166_23_12 k tmp_select_a_copy a_copy0_ind a_copy0_val a1_ind a1_val k tmp_select_a N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a1_ind a1_val k tmp_select_a N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a1_ind a1_val k tmp_select_a N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_166_23_12 a_copy1_ind a_copy1_val k tmp_select_a_copy a1_ind a1_val k tmp_select_a N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a1_ind a1_val k tmp_select_a N i))) (< a0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (or (and (= a_copy0_ind k) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind k) (= tmp_select_a_copy a_copy1_val)) (and (< k a_copy0_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (< k a_copy0_ind) (assert_166_23_12 k tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val k tmp_select_a N i)) (and (< a_copy0_ind k) (< k a_copy1_ind) (< k a_copy1_ind) (assert_166_23_12 k tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val k tmp_select_a N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i)) (and (< a_copy1_ind k) (< a_copy1_ind k) (assert_166_23_12 a_copy1_ind a_copy1_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i) (< a_copy0_ind k) (assert_166_23_12 a_copy0_ind a_copy0_val k tmp_select_a_copy a0_ind a0_val k tmp_select_a N i)))))) (=> (and (<= 0 k) (< k N)) (= tmp_select_a_copy tmp_select_a)))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assert_166_23_12 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
;
;(assert)  (a_copy[i]==a[i])
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (or (and (= a_copy0_ind i) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind i) (= tmp_select_a_copy a_copy1_val)) (and (< i a_copy0_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (< i a_copy0_ind) (assert_184_24_5 i tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val a1_ind a1_val N i)) (and (< a_copy0_ind i) (< i a_copy1_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i)) (and (< a_copy1_ind i) (< a_copy1_ind i) (assert_184_24_5 a_copy1_ind a_copy1_val i tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy a0_ind a0_val a1_ind a1_val N i))) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val i tmp_select_a a1_ind a1_val N i) (or (and (= a_copy0_ind i) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind i) (= tmp_select_a_copy a_copy1_val)) (and (< i a_copy0_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val i tmp_select_a a1_ind a1_val N i) (< i a_copy0_ind) (assert_184_24_5 i tmp_select_a_copy a_copy0_ind a_copy0_val i tmp_select_a a1_ind a1_val N i)) (and (< a_copy0_ind i) (< i a_copy1_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val i tmp_select_a a1_ind a1_val N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy i tmp_select_a a1_ind a1_val N i)) (and (< a_copy1_ind i) (< a_copy1_ind i) (assert_184_24_5 a_copy1_ind a_copy1_val i tmp_select_a_copy i tmp_select_a a1_ind a1_val N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy i tmp_select_a a1_ind a1_val N i))) (< i a0_ind) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val i tmp_select_a a0_ind a0_val N i) (or (and (= a_copy0_ind i) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind i) (= tmp_select_a_copy a_copy1_val)) (and (< i a_copy0_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val i tmp_select_a a0_ind a0_val N i) (< i a_copy0_ind) (assert_184_24_5 i tmp_select_a_copy a_copy0_ind a_copy0_val i tmp_select_a a0_ind a0_val N i)) (and (< a_copy0_ind i) (< i a_copy1_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val i tmp_select_a a0_ind a0_val N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy i tmp_select_a a0_ind a0_val N i)) (and (< a_copy1_ind i) (< a_copy1_ind i) (assert_184_24_5 a_copy1_ind a_copy1_val i tmp_select_a_copy i tmp_select_a a0_ind a0_val N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy i tmp_select_a a0_ind a0_val N i)))) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val i tmp_select_a a1_ind a1_val N i) (or (and (= a_copy0_ind i) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind i) (= tmp_select_a_copy a_copy1_val)) (and (< i a_copy0_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val i tmp_select_a a1_ind a1_val N i) (< i a_copy0_ind) (assert_184_24_5 i tmp_select_a_copy a_copy0_ind a_copy0_val i tmp_select_a a1_ind a1_val N i)) (and (< a_copy0_ind i) (< i a_copy1_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val i tmp_select_a a1_ind a1_val N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy i tmp_select_a a1_ind a1_val N i)) (and (< a_copy1_ind i) (< a_copy1_ind i) (assert_184_24_5 a_copy1_ind a_copy1_val i tmp_select_a_copy i tmp_select_a a1_ind a1_val N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy i tmp_select_a a1_ind a1_val N i))) (< a0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val i tmp_select_a N i) (or (and (= a_copy0_ind i) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind i) (= tmp_select_a_copy a_copy1_val)) (and (< i a_copy0_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val i tmp_select_a N i) (< i a_copy0_ind) (assert_184_24_5 i tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val i tmp_select_a N i)) (and (< a_copy0_ind i) (< i a_copy1_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val i tmp_select_a N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy a0_ind a0_val i tmp_select_a N i)) (and (< a_copy1_ind i) (< a_copy1_ind i) (assert_184_24_5 a_copy1_ind a_copy1_val i tmp_select_a_copy a0_ind a0_val i tmp_select_a N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy a0_ind a0_val i tmp_select_a N i)))) (and (< a1_ind i) (< a1_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a1_ind a1_val i tmp_select_a N i) (or (and (= a_copy0_ind i) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind i) (= tmp_select_a_copy a_copy1_val)) (and (< i a_copy0_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val a1_ind a1_val i tmp_select_a N i) (< i a_copy0_ind) (assert_184_24_5 i tmp_select_a_copy a_copy0_ind a_copy0_val a1_ind a1_val i tmp_select_a N i)) (and (< a_copy0_ind i) (< i a_copy1_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val a1_ind a1_val i tmp_select_a N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy a1_ind a1_val i tmp_select_a N i)) (and (< a_copy1_ind i) (< a_copy1_ind i) (assert_184_24_5 a_copy1_ind a_copy1_val i tmp_select_a_copy a1_ind a1_val i tmp_select_a N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy a1_ind a1_val i tmp_select_a N i))) (< a0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val i tmp_select_a N i) (or (and (= a_copy0_ind i) (= tmp_select_a_copy a_copy0_val)) (and (= a_copy1_ind i) (= tmp_select_a_copy a_copy1_val)) (and (< i a_copy0_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val i tmp_select_a N i) (< i a_copy0_ind) (assert_184_24_5 i tmp_select_a_copy a_copy0_ind a_copy0_val a0_ind a0_val i tmp_select_a N i)) (and (< a_copy0_ind i) (< i a_copy1_ind) (< i a_copy1_ind) (assert_184_24_5 i tmp_select_a_copy a_copy1_ind a_copy1_val a0_ind a0_val i tmp_select_a N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy a0_ind a0_val i tmp_select_a N i)) (and (< a_copy1_ind i) (< a_copy1_ind i) (assert_184_24_5 a_copy1_ind a_copy1_val i tmp_select_a_copy a0_ind a0_val i tmp_select_a N i) (< a_copy0_ind i) (assert_184_24_5 a_copy0_ind a_copy0_val i tmp_select_a_copy a0_ind a0_val i tmp_select_a N i)))))) (= tmp_select_a_copy tmp_select_a))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assert_184_24_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (assign_193_25_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (a_copy0_ind Int) (a_copy0_val Int) (a_copy1_ind Int) (a_copy1_val Int) (i Int)) (=> (and (< a0_ind a1_ind) (< a_copy0_ind a_copy1_ind) (assign_193_25_5 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N i)) (while_196_22_1 a_copy0_ind a_copy0_val a_copy1_ind a_copy1_val a0_ind a0_val a1_ind a1_val N (+ i 1)))))
(check-sat)
