(set-logic HORN)
(declare-fun assign_364_34_10_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_355_33_10_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_337_32_3_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_319_31_10_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_289_30_10_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_367_29_8_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_251_28_1_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_242_25_5_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_233_24_5_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_219_23_5_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_205_22_12_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_175_21_12_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_245_20_1_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_137_19_1_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_128_17_5_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_119_16_12_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_105_15_5_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_131_13_1_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_83_12_8_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_77_11_1_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start_abs0123 (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (vabs_f_f Int) (vabs_s_f_f Int) (vabs_s_s_f_f Int) (vabs_s_s_s_f_f Int)) (start_abs0123 vabs_f_f (select b_copy vabs_f_f) vabs_s_f_f (select a_copy vabs_s_f_f) vabs_s_s_f_f (select b vabs_s_s_f_f) vabs_s_s_s_f_f (select a vabs_s_s_s_f_f) N i)))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (start_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (assign_77_11_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assign_77_11_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (assign_83_12_8_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) rnd i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assign_83_12_8_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (while_131_13_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N 0))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (while_131_13_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (< i N)) (arrayassign_105_15_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (while_131_13_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (not (< i N))) (assign_137_19_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (arrayassign_105_15_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (arrayassign_105_15_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) i (select a i) N i)) (arrayassign_119_16_12_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select (store a_copy i (select a i)) vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (arrayassign_119_16_12_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (arrayassign_119_16_12_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) i (select b i) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i)) (assign_128_17_5_abs0123 vabs_0_f_f (select (store b_copy i (select b i)) vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assign_128_17_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (while_131_13_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N (+ i 1)))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assign_137_19_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (while_245_20_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N 0))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (while_245_20_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (< i N)) (assert_175_21_12_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (while_245_20_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (not (< i N))) (assign_251_28_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int))) (=> (and (assert_175_21_12_abs0123 0 (select b_copy 0) k (select a_copy k) k (select b k) 0 (select a 0) N i) (<= 0 k) (< k i)) (= (select a_copy k) (select b k)))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assert_175_21_12_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (assert_205_22_12_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int))) (=> (and (assert_205_22_12_abs0123 k (select b_copy k) 0 (select a_copy 0) 0 (select b 0) k (select a k) N i) (<= 0 k) (< k i)) (= (select b_copy k) (select a k)))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assert_205_22_12_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (arrayassign_219_23_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (arrayassign_219_23_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (arrayassign_219_23_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) i (select b i) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i)) (arrayassign_233_24_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select (store a_copy i (select b i)) vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (arrayassign_233_24_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (arrayassign_233_24_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) i (select a i) N i)) (assign_242_25_5_abs0123 vabs_0_f_f (select (store b_copy i (select a i)) vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assign_242_25_5_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (while_245_20_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N (+ i 1)))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assign_251_28_1_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (while_367_29_8_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N 0))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (while_367_29_8_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (< i N)) (assert_289_30_10_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (and (while_367_29_8_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (not (< i N))) (end_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int))) (=> (and (assert_289_30_10_abs0123 0 (select b_copy 0) k (select a_copy k) k (select b k) 0 (select a 0) N i) (<= 0 k) (< k N)) (= (select a_copy k) (select b k)))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assert_289_30_10_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (assert_319_31_10_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int))) (=> (and (assert_319_31_10_abs0123 k (select b_copy k) 0 (select a_copy 0) 0 (select b 0) k (select a k) N i) (<= 0 k) (< k N)) (= (select b_copy k) (select a k)))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assert_319_31_10_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (assert_337_32_3_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int))) (=> (assert_337_32_3_abs0123 i (select b_copy i) 0 (select a_copy 0) 0 (select b 0) i (select a i) N i) (= (select a i) (select b_copy i)))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assert_337_32_3_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (assert_355_33_10_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int))) (=> (assert_355_33_10_abs0123 0 (select b_copy 0) i (select a_copy i) i (select b i) 0 (select a 0) N i) (= (select b i) (select a_copy i)))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assert_355_33_10_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (assign_364_34_10_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (vabs_0_s_s_s_f_f Int)) (=> (assign_364_34_10_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N i) (while_367_29_8_abs0123 vabs_0_f_f (select b_copy vabs_0_f_f) vabs_0_s_f_f (select a_copy vabs_0_s_f_f) vabs_0_s_s_f_f (select b vabs_0_s_s_f_f) vabs_0_s_s_s_f_f (select a vabs_0_s_s_s_f_f) N (+ i 1)))))
(check-sat)