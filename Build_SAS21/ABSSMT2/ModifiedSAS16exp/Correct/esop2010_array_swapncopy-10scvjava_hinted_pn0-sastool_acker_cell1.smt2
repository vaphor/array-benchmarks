
(set-logic HORN)
(declare-rel assign_34_10_364_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_33_10_355_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_32_3_337_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_31_10_319_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_30_10_289_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_29_8_367_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_28_1_251_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_25_5_242_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_24_5_233_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_23_5_219_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_22_12_205_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_21_12_175_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_20_1_245_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_19_1_137_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_17_5_128_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_16_12_119_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_15_5_105_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_13_1_131_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_12_8_83_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_11_1_77_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 22
;Number of variables = 6
;Number of clauses = 31
;
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (start_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i)))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (start_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assign_11_1_77_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_11_1_77_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assign_12_8_83_abs i4 acker i3 acker1 i2 acker2 i1 acker3 rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_12_8_83_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_13_1_131_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_13_1_131_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (< i N)) (arrayassign_15_5_105_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_13_1_131_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (not (< i N))) (assign_19_1_137_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_15_5_105_abs i4 acker i3 acker1 i2 acker2 i vacker_0 N i) (arrayassign_15_5_105_abs i4 acker i3 acker1 i2 acker2 i1 vacker_0 N i)) (arrayassign_16_12_119_abs i4 acker i3 (ite (= i i3) vacker_0 acker1) i2 acker2 i1 vacker_0 N i))))
;
;(aassign) b_copy[i] := b[i]
(assert (forall ( (i Int) (N Int) (acker3 Int) (vacker_1 Int) (vacker_0 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i2) (= vacker_0 vacker_1)) (arrayassign_16_12_119_abs i4 acker i3 acker1 i vacker_0 i1 acker3 N i) (arrayassign_16_12_119_abs i4 acker i3 acker1 i2 vacker_0 i1 acker3 N i)) (assign_17_5_128_abs i4 (ite (= i i4) vacker_0 acker) i3 acker1 i2 vacker_0 i1 acker3 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_17_5_128_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_13_1_131_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_19_1_137_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_20_1_245_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_20_1_245_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (< i N)) (assert_21_12_175_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_20_1_245_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (not (< i N))) (assign_28_1_251_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==b[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (and (assert_21_12_175_abs 17 acker k acker1 k acker2 17 acker3 N i) (<= 0 k) (< k i)) (= acker1 acker2))))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_21_12_175_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assert_22_12_205_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(b_copy[k]==a[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (and (assert_22_12_205_abs k acker 17 acker1 17 acker2 k acker3 N i) (<= 0 k) (< k i)) (= acker acker3))))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_22_12_205_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (arrayassign_23_5_219_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(aassign) a_copy[i] := b[i]
(assert (forall ( (i Int) (N Int) (acker3 Int) (vacker_1 Int) (vacker_0 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i2) (= vacker_0 vacker_1)) (arrayassign_23_5_219_abs i4 acker i3 acker1 i vacker_0 i1 acker3 N i) (arrayassign_23_5_219_abs i4 acker i3 acker1 i2 vacker_0 i1 acker3 N i)) (arrayassign_24_5_233_abs i4 acker i3 (ite (= i i3) vacker_0 acker1) i2 vacker_0 i1 acker3 N i))))
;
;(aassign) b_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_24_5_233_abs i4 acker i3 acker1 i2 acker2 i vacker_0 N i) (arrayassign_24_5_233_abs i4 acker i3 acker1 i2 acker2 i1 vacker_0 N i)) (assign_25_5_242_abs i4 (ite (= i i4) vacker_0 acker) i3 acker1 i2 acker2 i1 vacker_0 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_25_5_242_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_20_1_245_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_28_1_251_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_29_8_367_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_29_8_367_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (< i N)) (assert_30_10_289_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
(assert (forall ( (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_29_8_367_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i) (not (< i N))) (end_abs i4 acker3 i3 acker2 i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[k]==b[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (and (assert_30_10_289_abs 17 acker k acker1 k acker2 17 acker3 N i) (<= 0 k) (< k N)) (= acker1 acker2))))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_30_10_289_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assert_31_10_319_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(b_copy[k]==a[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (and (assert_31_10_319_abs k acker 17 acker1 17 acker2 k acker3 N i) (<= 0 k) (< k N)) (= acker acker3))))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_31_10_319_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assert_32_3_337_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assert)  (a[i]==b_copy[i])
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (assert_32_3_337_abs i acker 17 acker1 17 acker2 i acker3 N i) (= acker acker3))))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_32_3_337_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assert_33_10_355_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assert)  (b[i]==a_copy[i])
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (assert_33_10_355_abs 17 acker i acker1 i acker2 17 acker3 N i) (= acker1 acker2))))
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assert_33_10_355_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (assign_34_10_364_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker3 Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (assign_34_10_364_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N i) (while_29_8_367_abs i4 acker i3 acker1 i2 acker2 i1 acker3 N (+ i 1)))))
(check-sat)
