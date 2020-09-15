;Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(set-logic HORN)
(declare-fun assign_22_5_199 (Int Int Int Int Int Int) Bool)
(declare-fun assert_21_5_190 (Int Int Int Int Int Int) Bool)
(declare-fun while_19_1_202 (Int Int Int Int Int Int) Bool)
(declare-fun assign_18_1_131 (Int Int Int Int Int Int) Bool)
(declare-fun assign_15_5_122 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_14_5_113 (Int Int Int Int Int Int) Bool)
(declare-fun while_12_1_125 (Int Int Int Int Int Int) Bool)
(declare-fun assign_11_1_58 (Int Int Int Int Int Int) Bool)
(declare-fun assign_10_1_52 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (start a_copy_ind a_copy_val a_ind a_val N i)))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (start a_copy_ind a_copy_val a_ind a_val N i) (assign_10_1_52 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (rnd Int)) (=> (assign_10_1_52 a_copy_ind a_copy_val a_ind a_val N i) (assign_11_1_58 a_copy_ind a_copy_val a_ind a_val rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_11_1_58 a_copy_ind a_copy_val a_ind a_val N i) (while_12_1_125 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_12_1_125 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (arrayassign_14_5_113 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_12_1_125 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (assign_18_1_131 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_14_5_113 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_14_5_113 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_14_5_113 a_copy_ind a_copy_val i tmp_select_a N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (assign_15_5_122 tmp_store_a_copy_ind tmp_store_a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_15_5_122 a_copy_ind a_copy_val a_ind a_val N i) (while_12_1_125 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_18_1_131 a_copy_ind a_copy_val a_ind a_val N i) (while_19_1_202 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_19_1_202 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (assert_21_5_190 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_19_1_202 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (end a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (a[i]==a_copy[i])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_21_5_190 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_21_5_190 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (assert_21_5_190 a_copy_ind a_copy_val i tmp_select_a N i))) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_21_5_190 i tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_21_5_190 i tmp_select_a_copy i tmp_select_a N i)) (and (< a_ind i) (assert_21_5_190 i tmp_select_a_copy i tmp_select_a N i)))) (and (< a_copy_ind i) (assert_21_5_190 i tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_21_5_190 i tmp_select_a_copy i tmp_select_a N i)) (and (< a_ind i) (assert_21_5_190 i tmp_select_a_copy i tmp_select_a N i)))))) (= tmp_select_a tmp_select_a_copy))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_21_5_190 a_copy_ind a_copy_val a_ind a_val N i) (assign_22_5_199 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_22_5_199 a_copy_ind a_copy_val a_ind a_val N i) (while_19_1_202 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
(check-sat)
