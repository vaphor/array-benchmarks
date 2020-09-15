(set-logic HORN)
(declare-fun assign_25_5_199_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_24_5_190_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_23_12_172_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun while_22_1_202_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_21_1_131_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_18_5_122_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_17_5_113_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_16_12_99_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun while_15_1_125_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_14_1_58_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_52_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun end_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun start_abs01 (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (i Int) (vabs_f_f Int) (vabs_s_f_f Int) (a_copy_select Int) (a_select Int)) (start_abs01 vabs_f_f a_copy_select vabs_s_f_f a_select N i)))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (start_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_12_1_52_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((rnd Int) (i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_12_1_52_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_14_1_58_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select rnd i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_14_1_58_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_15_1_125_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N 0))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_15_1_125_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (< i N)) (assert_16_12_99_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_15_1_125_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (not (< i N))) (assign_21_1_131_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((k Int) (i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (and (assert_16_12_99_abs01 k a_copy_select k a_select N i) (<= 0 k) (< k i)) (= a_copy_select a_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_16_12_99_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (arrayassign_17_5_113_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select_0 Int) (a_select Int) (a_copy_select Int)) (=> (and (=> (= i vabs_0_s_f_f) (= a_select a_select_0)) (arrayassign_17_5_113_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (arrayassign_17_5_113_abs01 vabs_0_f_f a_copy_select i a_select_0 N i)) (assign_18_5_122_abs01 vabs_0_f_f (ite (= i vabs_0_f_f) a_select_0 a_copy_select) vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_18_5_122_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_15_1_125_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N (+ i 1)))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_21_1_131_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_22_1_202_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N 0))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_22_1_202_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (< i N)) (assert_23_12_172_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_22_1_202_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (not (< i N))) (end_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((k Int) (i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (and (assert_23_12_172_abs01 k a_copy_select k a_select N i) (<= 0 k) (< k N)) (= a_copy_select a_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_23_12_172_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assert_24_5_190_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (assert_24_5_190_abs01 i a_copy_select i a_select N i) (= a_copy_select a_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_24_5_190_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_25_5_199_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_25_5_199_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_22_1_202_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N (+ i 1)))))
(check-sat)