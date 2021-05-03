;Number of predicates (nodes) = 18
;Number of variables = 6
;Number of clauses = 23
;
(set-logic HORN)
(declare-fun assign_364_34_10 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_355_33_10 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_337_32_3 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_367_29_8 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_251_28_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_242_25_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_233_24_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_219_23_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_245_20_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_137_19_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_128_17_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_119_16_12 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_105_15_5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_131_13_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_83_12_8 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_77_11_1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (start b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i)))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (start b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (assign_77_11_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (rnd Int)) (=> (assign_77_11_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (assign_83_12_8 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_83_12_8 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_131_13_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_131_13_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (< i N)) (arrayassign_105_15_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_131_13_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (not (< i N))) (assign_137_19_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_105_15_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_105_15_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_105_15_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (arrayassign_119_16_12 b_copy_ind b_copy_val tmp_store_a_copy_ind tmp_store_a_copy_val b_ind b_val a_ind a_val N i))))
;
;(aassign) b_copy[i] := b[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_b Int) (tmp_store_b_copy_ind Int) (tmp_store_b_copy_val Int)) (=> (and (arrayassign_119_16_12 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (arrayassign_119_16_12 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (arrayassign_119_16_12 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i))) (= tmp_store_b_copy_ind b_copy_ind) (or (and (= b_copy_ind i) (= tmp_store_b_copy_val tmp_select_b)) (and (not (= b_copy_ind i)) (= tmp_store_b_copy_val b_copy_val)))) (assign_128_17_5 tmp_store_b_copy_ind tmp_store_b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_128_17_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_131_13_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_137_19_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_245_20_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_245_20_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (< i N)) (arrayassign_219_23_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_245_20_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (not (< i N))) (assign_251_28_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := b[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_b Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_219_23_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (arrayassign_219_23_5 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (arrayassign_219_23_5 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_b)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (arrayassign_233_24_5 b_copy_ind b_copy_val tmp_store_a_copy_ind tmp_store_a_copy_val b_ind b_val a_ind a_val N i))))
;
;(aassign) b_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a Int) (tmp_store_b_copy_ind Int) (tmp_store_b_copy_val Int)) (=> (and (arrayassign_233_24_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_233_24_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_233_24_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i))) (= tmp_store_b_copy_ind b_copy_ind) (or (and (= b_copy_ind i) (= tmp_store_b_copy_val tmp_select_a)) (and (not (= b_copy_ind i)) (= tmp_store_b_copy_val b_copy_val)))) (assign_242_25_5 tmp_store_b_copy_ind tmp_store_b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_242_25_5 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_245_20_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_251_28_1 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_367_29_8 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_367_29_8 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (< i N)) (assert_337_32_3 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_367_29_8 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (not (< i N))) (end b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assert)  (a[i]==b_copy[i])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a Int) (tmp_select_b_copy Int)) (=> (and (assert_337_32_3 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_337_32_3 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (assert_337_32_3 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i))) (or (and (= b_copy_ind i) (= tmp_select_b_copy b_copy_val)) (and (< i b_copy_ind) (assert_337_32_3 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_337_32_3 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (assert_337_32_3 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)))) (and (< b_copy_ind i) (assert_337_32_3 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_337_32_3 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)) (and (< a_ind i) (assert_337_32_3 i tmp_select_b_copy a_copy_ind a_copy_val b_ind b_val i tmp_select_a N i)))))) (= tmp_select_a tmp_select_b_copy))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_337_32_3 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (assert_355_33_10 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assert)  (b[i]==a_copy[i])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a_copy Int) (tmp_select_b Int)) (=> (and (assert_355_33_10 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (assert_355_33_10 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (assert_355_33_10 b_copy_ind b_copy_val a_copy_ind a_copy_val i tmp_select_b a_ind a_val N i))) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_355_33_10 b_copy_ind b_copy_val i tmp_select_a_copy b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (assert_355_33_10 b_copy_ind b_copy_val i tmp_select_a_copy i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (assert_355_33_10 b_copy_ind b_copy_val i tmp_select_a_copy i tmp_select_b a_ind a_val N i)))) (and (< a_copy_ind i) (assert_355_33_10 b_copy_ind b_copy_val i tmp_select_a_copy b_ind b_val a_ind a_val N i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (assert_355_33_10 b_copy_ind b_copy_val i tmp_select_a_copy i tmp_select_b a_ind a_val N i)) (and (< b_ind i) (assert_355_33_10 b_copy_ind b_copy_val i tmp_select_a_copy i tmp_select_b a_ind a_val N i)))))) (= tmp_select_b tmp_select_a_copy))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_355_33_10 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (assign_364_34_10 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (b_copy_ind Int) (b_copy_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_364_34_10 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N i) (while_367_29_8 b_copy_ind b_copy_val a_copy_ind a_copy_val b_ind b_val a_ind a_val N (+ i 1)))))
(check-sat)
