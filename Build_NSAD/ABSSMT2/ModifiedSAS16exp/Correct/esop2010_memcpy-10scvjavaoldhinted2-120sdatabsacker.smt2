(set-logic HORN)
(declare-fun assign_199_25_5_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_190_24_5_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_172_23_12_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun while_202_22_1_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_131_21_1_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_122_18_5_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_113_17_5_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_99_16_12_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun while_125_15_1_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_58_14_1_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_52_12_1_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun end_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun start_abs01 (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (i Int) (vabs_f_f Int) (vabs_s_f_f Int) (a_copy_select Int) (a_select Int)) (start_abs01 vabs_f_f a_copy_select vabs_s_f_f a_select N i)))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (start_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_52_12_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((rnd Int) (i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_52_12_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_58_14_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select rnd i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_58_14_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_125_15_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N 0))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_125_15_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (< i N)) (assert_99_16_12_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_125_15_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (not (< i N))) (assign_131_21_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((k Int) (i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (and (assert_99_16_12_abs01 k a_copy_select k a_select N i) (<= 0 k) (< k i)) (= a_copy_select a_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_99_16_12_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (arrayassign_113_17_5_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select_0 Int) (a_select Int) (a_copy_select Int)) (=> (and (=> (= i vabs_0_s_f_f) (= a_select a_select_0)) (arrayassign_113_17_5_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (arrayassign_113_17_5_abs01 vabs_0_f_f a_copy_select i a_select_0 N i)) (assign_122_18_5_abs01 vabs_0_f_f (ite (= i vabs_0_f_f) a_select_0 a_copy_select) vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_122_18_5_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_125_15_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N (+ i 1)))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_131_21_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_202_22_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N 0))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_202_22_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (< i N)) (assert_172_23_12_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_202_22_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (not (< i N))) (end_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((k Int) (i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (and (assert_172_23_12_abs01 k a_copy_select k a_select N i) (<= 0 k) (< k N)) (= a_copy_select a_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_172_23_12_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assert_190_24_5_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (assert_190_24_5_abs01 i a_copy_select i a_select N i) (= a_copy_select a_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_190_24_5_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_199_25_5_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_199_25_5_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_202_22_1_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N (+ i 1)))))
(check-sat)