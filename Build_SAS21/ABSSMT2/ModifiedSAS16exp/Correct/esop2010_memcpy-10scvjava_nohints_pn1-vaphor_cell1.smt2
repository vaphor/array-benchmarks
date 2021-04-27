;Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(set-logic HORN)
(declare-fun assign_193_25_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_184_24_5 (Int Int Int Int Int Int) Bool)
(declare-fun while_196_22_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_128_21_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_119_18_5 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_110_17_5 (Int Int Int Int Int Int) Bool)
(declare-fun while_122_15_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_58_14_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_52_12_1 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (start a_copy_ind a_copy_val a_ind a_val N i)))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (start a_copy_ind a_copy_val a_ind a_val N i) (assign_52_12_1 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (rnd Int)) (=> (assign_52_12_1 a_copy_ind a_copy_val a_ind a_val N i) (assign_58_14_1 a_copy_ind a_copy_val a_ind a_val rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_58_14_1 a_copy_ind a_copy_val a_ind a_val N i) (while_122_15_1 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_122_15_1 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (arrayassign_110_17_5 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_122_15_1 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (assign_128_21_1 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_110_17_5 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_110_17_5 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_110_17_5 a_copy_ind a_copy_val i tmp_select_a N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (assign_119_18_5 tmp_store_a_copy_ind tmp_store_a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_119_18_5 a_copy_ind a_copy_val a_ind a_val N i) (while_122_15_1 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_128_21_1 a_copy_ind a_copy_val a_ind a_val N i) (while_196_22_1 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_196_22_1 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (assert_184_24_5 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_196_22_1 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (end a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (a_copy[i]==a[i])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_184_24_5 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_184_24_5 i tmp_select_a_copy a_ind a_val N i)) (and (< a_copy_ind i) (assert_184_24_5 i tmp_select_a_copy a_ind a_val N i))) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_184_24_5 a_copy_ind a_copy_val i tmp_select_a N i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_184_24_5 i tmp_select_a_copy i tmp_select_a N i)) (and (< a_copy_ind i) (assert_184_24_5 i tmp_select_a_copy i tmp_select_a N i)))) (and (< a_ind i) (assert_184_24_5 a_copy_ind a_copy_val i tmp_select_a N i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_184_24_5 i tmp_select_a_copy i tmp_select_a N i)) (and (< a_copy_ind i) (assert_184_24_5 i tmp_select_a_copy i tmp_select_a N i)))))) (= tmp_select_a_copy tmp_select_a))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_184_24_5 a_copy_ind a_copy_val a_ind a_val N i) (assign_193_25_5 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_193_25_5 a_copy_ind a_copy_val a_ind a_val N i) (while_196_22_1 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
(check-sat)
