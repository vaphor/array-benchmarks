
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
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (start_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i)))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (start_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assign_77_11_1_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_77_11_1_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assign_83_12_8_abs i4 acker i3 acker1 i2 acker2 i1 acker3 rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_83_12_8_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_131_13_1_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_131_13_1_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (< i N)) (arrayassign_105_15_5_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_131_13_1_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (not (< i N))) (assign_137_19_1_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_105_15_5_abs i4 acker i3 acker1 i2 acker2 i vacker_0 N i) (arrayassign_105_15_5_abs i4 acker i3 acker1 i2 acker2 i1 vacker_1 N i)) (arrayassign_119_16_12_abs i4 acker i3 (ite (= i i3) vacker_0 acker1) i2 acker2 i1 vacker_1 N i))))
;
;(aassign) b_copy[i] := b[i]
(assert (forall ( (i Int) (N Int) (acker3 Int) (vacker_1 Int) (vacker_0 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i2) (= vacker_0 vacker_1)) (arrayassign_119_16_12_abs i4 acker i3 acker1 i vacker_0 i1 acker3 N i) (arrayassign_119_16_12_abs i4 acker i3 acker1 i2 vacker_1 i1 acker3 N i)) (assign_128_17_5_abs i4 (ite (= i i4) vacker_0 acker) i3 acker1 i2 vacker_1 i1 acker3 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_128_17_5_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_131_13_1_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_137_19_1_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_245_20_1_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_245_20_1_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (< i N)) (arrayassign_219_23_5_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_245_20_1_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (not (< i N))) (assign_251_28_1_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
;
;(aassign) a_copy[i] := b[i]
(assert (forall ( (i Int) (N Int) (acker3 Int) (vacker_1 Int) (vacker_0 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i2) (= vacker_0 vacker_1)) (arrayassign_219_23_5_abs i4 acker i3 acker1 i vacker_0 i1 acker3 N i) (arrayassign_219_23_5_abs i4 acker i3 acker1 i2 vacker_1 i1 acker3 N i)) (arrayassign_233_24_5_abs i4 acker i3 (ite (= i i3) vacker_0 acker1) i2 vacker_1 i1 acker3 N i))))
;
;(aassign) b_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_233_24_5_abs i4 acker i3 acker1 i2 acker2 i vacker_0 N i) (arrayassign_233_24_5_abs i4 acker i3 acker1 i2 acker2 i1 vacker_1 N i)) (assign_242_25_5_abs i4 (ite (= i i4) vacker_0 acker) i3 acker1 i2 acker2 i1 vacker_1 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_242_25_5_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_245_20_1_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_251_28_1_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_367_29_8_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_367_29_8_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (< i N)) (assert_337_32_3_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_367_29_8_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (not (< i N))) (end_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
;
;(assert)  (a[i]==b_copy[i])
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (assert_337_32_3_abs i acker 17 acker1 17 acker2 i acker3 N i) (= acker acker3))))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_337_32_3_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assert_355_33_10_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assert)  (b[i]==a_copy[i])
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (assert_355_33_10_abs 17 acker i acker1 i acker2 17 acker3 N i) (= acker1 acker2))))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_355_33_10_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assign_364_34_10_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_364_34_10_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_367_29_8_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N (+ i 1)))))
(check-sat)
