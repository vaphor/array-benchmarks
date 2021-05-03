;Number of predicates (nodes) = 18
;Number of variables = 6
;Number of clauses = 23
;
(set-logic HORN)
(declare-fun assign_34_10_364 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_33_10_355 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_32_3_337 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_29_8_367 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_28_1_251 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_25_5_242 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_24_5_233 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_23_5_219 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_20_1_245 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_19_1_137 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_17_5_128 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_16_12_119 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_15_5_105 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_13_1_131 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_12_8_83 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_11_1_77 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (start b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i)))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (start b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (assign_11_1_77 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (rnd Int)) (=> (assign_11_1_77 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (assign_12_8_83 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_12_8_83 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_13_1_131 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_13_1_131 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (< i N)) (arrayassign_15_5_105 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_13_1_131 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (not (< i N))) (assign_19_1_137 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_15_5_105 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_15_5_105 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_15_5_105 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (arrayassign_16_12_119 b_copy_ind b_copy_val tmp_store_a_copy_ind tmp_store_a_copy_val b_ind b_val a_ind a_val N i))))
;
;(aassign) b_copy[i] := b[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_b Int) (tmp_store_b_copy_ind Int) (tmp_store_b_copy_val Int)) (=> (and (arrayassign_16_12_119 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (arrayassign_16_12_119 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (arrayassign_16_12_119 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i))) (= tmp_store_b_copy_ind b_copy_ind) (or (and (= b_copy_ind i) (= tmp_store_b_copy_val tmp_select_b)) (and (not (= b_copy_ind i)) (= tmp_store_b_copy_val b_copy_val)))) (assign_17_5_128 tmp_store_b_copy_ind tmp_store_b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_17_5_128 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_13_1_131 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_19_1_137 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_20_1_245 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_20_1_245 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (< i N)) (arrayassign_23_5_219 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_20_1_245 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (not (< i N))) (assign_28_1_251 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := b[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_b Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_23_5_219 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (arrayassign_23_5_219 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (arrayassign_23_5_219 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_b)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (arrayassign_24_5_233 b_copy_ind b_copy_val tmp_store_a_copy_ind tmp_store_a_copy_val b_ind b_val a_ind a_val N i))))
;
;(aassign) b_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a Int) (tmp_store_b_copy_ind Int) (tmp_store_b_copy_val Int)) (=> (and (arrayassign_24_5_233 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_24_5_233 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_24_5_233 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i))) (= tmp_store_b_copy_ind b_copy_ind) (or (and (= b_copy_ind i) (= tmp_store_b_copy_val tmp_select_a)) (and (not (= b_copy_ind i)) (= tmp_store_b_copy_val b_copy_val)))) (assign_25_5_242 tmp_store_b_copy_ind tmp_store_b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_25_5_242 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_20_1_245 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_28_1_251 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_29_8_367 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_29_8_367 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (< i N)) (assert_32_3_337 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_29_8_367 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (not (< i N))) (end b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assert)  (a[i]==b_copy[i])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a Int) (tmp_select_b_copy Int)) (=> (and (assert_32_3_337 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_32_3_337 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (assert_32_3_337 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i))) (or (and (= b_copy_ind i) (= tmp_select_b_copy b_copy_val)) (and (< i b_copy_ind) (assert_32_3_337 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_32_3_337 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (assert_32_3_337 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)))) (and (< b_copy_ind i) (assert_32_3_337 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_32_3_337 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (assert_32_3_337 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)))))) (= tmp_select_a tmp_select_b_copy))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_32_3_337 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (assert_33_10_355 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assert)  (b[i]==a_copy[i])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a_copy Int) (tmp_select_b Int)) (=> (and (assert_33_10_355 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (assert_33_10_355 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (assert_33_10_355 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i))) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_33_10_355 b_copy_ind b_copy_val i tmp_select_a_copy b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (assert_33_10_355 b_copy_ind b_copy_val i tmp_select_a_copy i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (assert_33_10_355 b_copy_ind b_copy_val i tmp_select_a_copy i tmp_select_b a_ind a_val N i)))) (and (< a_copy_ind i) (assert_33_10_355 b_copy_ind b_copy_val i tmp_select_a_copy b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (assert_33_10_355 b_copy_ind b_copy_val i tmp_select_a_copy i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (assert_33_10_355 b_copy_ind b_copy_val i tmp_select_a_copy i tmp_select_b a_ind a_val N i)))))) (= tmp_select_b tmp_select_a_copy))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_33_10_355 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (assign_34_10_364 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_34_10_364 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_29_8_367 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N (+ i 1)))))
(check-sat)
