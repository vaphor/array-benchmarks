;Number of predicates (nodes) = 15
;Number of variables = 4
;Number of clauses = 19
;
(set-logic HORN)
(declare-fun assign_29_5_287 (Int Int Int Int Int Int) Bool)
(declare-fun assert_28_5_278 (Int Int Int Int Int Int) Bool)
(declare-fun while_26_1_290 (Int Int Int Int Int Int) Bool)
(declare-fun assign_25_1_210 (Int Int Int Int Int Int) Bool)
(declare-fun assign_22_5_201 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_21_5_192 (Int Int Int Int Int Int) Bool)
(declare-fun while_19_1_204 (Int Int Int Int Int Int) Bool)
(declare-fun assign_18_1_128 (Int Int Int Int Int Int) Bool)
(declare-fun assign_15_5_119 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_14_5_110 (Int Int Int Int Int Int) Bool)
(declare-fun while_12_1_122 (Int Int Int Int Int Int) Bool)
(declare-fun assign_11_8_58 (Int Int Int Int Int Int) Bool)
(declare-fun assign_9_1_52 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (start a_copy_ind a_copy_val a_ind a_val N i)))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (start a_copy_ind a_copy_val a_ind a_val N i) (assign_9_1_52 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (rnd Int)) (=> (assign_9_1_52 a_copy_ind a_copy_val a_ind a_val N i) (assign_11_8_58 a_copy_ind a_copy_val a_ind a_val rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_11_8_58 a_copy_ind a_copy_val a_ind a_val N i) (while_12_1_122 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_12_1_122 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (arrayassign_14_5_110 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_12_1_122 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (assign_18_1_128 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_14_5_110 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_14_5_110 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_14_5_110 a_copy_ind a_copy_val i tmp_select_a N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (assign_15_5_119 tmp_store_a_copy_ind tmp_store_a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_15_5_119 a_copy_ind a_copy_val a_ind a_val N i) (while_12_1_122 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_18_1_128 a_copy_ind a_copy_val a_ind a_val N i) (while_19_1_204 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_19_1_204 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (arrayassign_21_5_192 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_19_1_204 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (assign_25_1_210 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a_copy Int) (tmp_store_a_ind Int) (tmp_store_a_val Int)) (=> (and (arrayassign_21_5_192 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_copy_ind (- (- N i) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N i) 1) a_copy_ind) (arrayassign_21_5_192 (- (- N i) 1) tmp_select_a_copy a_ind a_val N i)) (and (< a_copy_ind (- (- N i) 1)) (arrayassign_21_5_192 (- (- N i) 1) tmp_select_a_copy a_ind a_val N i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val tmp_select_a_copy)) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_22_5_201 a_copy_ind a_copy_val tmp_store_a_ind tmp_store_a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_22_5_201 a_copy_ind a_copy_val a_ind a_val N i) (while_19_1_204 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_25_1_210 a_copy_ind a_copy_val a_ind a_val N i) (while_26_1_290 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_26_1_290 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (assert_28_5_278 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_26_1_290 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (end a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_28_5_278 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_28_5_278 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (assert_28_5_278 a_copy_ind a_copy_val i tmp_select_a N i))) (or (and (= a_copy_ind (- (- N i) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N i) 1) a_copy_ind) (assert_28_5_278 (- (- N i) 1) tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_28_5_278 (- (- N i) 1) tmp_select_a_copy i tmp_select_a N i)) (and (< a_ind i) (assert_28_5_278 (- (- N i) 1) tmp_select_a_copy i tmp_select_a N i)))) (and (< a_copy_ind (- (- N i) 1)) (assert_28_5_278 (- (- N i) 1) tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_28_5_278 (- (- N i) 1) tmp_select_a_copy i tmp_select_a N i)) (and (< a_ind i) (assert_28_5_278 (- (- N i) 1) tmp_select_a_copy i tmp_select_a N i)))))) (= tmp_select_a tmp_select_a_copy))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_28_5_278 a_copy_ind a_copy_val a_ind a_val N i) (assign_29_5_287 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_29_5_287 a_copy_ind a_copy_val a_ind a_val N i) (while_26_1_290 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
(check-sat)
