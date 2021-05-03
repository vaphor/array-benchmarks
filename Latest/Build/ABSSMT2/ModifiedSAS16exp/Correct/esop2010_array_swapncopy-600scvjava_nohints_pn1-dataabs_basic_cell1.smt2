
(set-logic HORN)
(declare-rel assign_364_34_10_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_355_33_10_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_337_32_3_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_367_29_8_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_251_28_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_242_25_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_233_24_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_219_23_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_245_20_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_137_19_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_128_17_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_119_16_12_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_105_15_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_131_13_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_83_12_8_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_77_11_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 18
;Number of variables = 6
;Number of clauses = 23
;
(assert (forall ( (b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (start_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i)))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (start_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (assign_77_11_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_77_11_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (assign_83_12_8_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_83_12_8_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (while_131_13_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_131_13_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (< i N)) (arrayassign_105_15_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
(assert (forall ( (b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_131_13_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (not (< i N))) (assign_137_19_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (arrayassign_105_15_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i (select a i) N i) (arrayassign_105_15_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i)) (arrayassign_119_16_12_abs i4 (select b_copy i4) i3 (ite (= i i3) (select a i) (select a_copy i3)) i2 (select b i2) i1 (select a i1) N i))))
;
;(aassign) b_copy[i] := b[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (arrayassign_119_16_12_abs i4 (select b_copy i4) i3 (select a_copy i3) i (select b i) i1 (select a i1) N i) (arrayassign_119_16_12_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i)) (assign_128_17_5_abs i4 (ite (= i i4) (select b i) (select b_copy i4)) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_128_17_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (while_131_13_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_137_19_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (while_245_20_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_245_20_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (< i N)) (arrayassign_219_23_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
(assert (forall ( (b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_245_20_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (not (< i N))) (assign_251_28_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
;
;(aassign) a_copy[i] := b[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (arrayassign_219_23_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i (select b i) i1 (select a i1) N i) (arrayassign_219_23_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i)) (arrayassign_233_24_5_abs i4 (select b_copy i4) i3 (ite (= i i3) (select b i) (select a_copy i3)) i2 (select b i2) i1 (select a i1) N i))))
;
;(aassign) b_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (arrayassign_233_24_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i (select a i) N i) (arrayassign_233_24_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i)) (assign_242_25_5_abs i4 (ite (= i i4) (select a i) (select b_copy i4)) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_242_25_5_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (while_245_20_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_251_28_1_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (while_367_29_8_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_367_29_8_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (< i N)) (assert_337_32_3_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
(assert (forall ( (b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_367_29_8_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (not (< i N))) (end_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
;
;(assert)  (a[i]==b_copy[i])
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int))) (=> (assert_337_32_3_abs i (select b_copy i) 17 (select a_copy 17) 17 (select b 17) i (select a i) N i) (= (select a i) (select b_copy i)))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_337_32_3_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (assert_355_33_10_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
;
;(assert)  (b[i]==a_copy[i])
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int))) (=> (assert_355_33_10_abs 17 (select b_copy 17) i (select a_copy i) i (select b i) 17 (select a 17) N i) (= (select a_copy i) (select b i)))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_355_33_10_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (assign_364_34_10_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_364_34_10_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N i) (while_367_29_8_abs i4 (select b_copy i4) i3 (select a_copy i3) i2 (select b i2) i1 (select a i1) N (+ i 1)))))
(check-sat)
