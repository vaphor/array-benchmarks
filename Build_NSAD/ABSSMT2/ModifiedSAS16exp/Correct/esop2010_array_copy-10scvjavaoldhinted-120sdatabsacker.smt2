(set-logic HORN)
(declare-fun assign_22_5_205_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_21_5_196_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_20_12_178_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun while_19_1_208_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_18_1_134_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_15_5_125_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_14_5_116_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assert_13_12_102_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun while_12_1_128_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_11_1_58_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun assign_10_1_52_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun end_abs01 (Int Int Int Int Int Int) Bool)
(declare-fun start_abs01 (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (i Int) (vabs_f_f Int) (vabs_s_f_f Int) (a_copy_select Int) (a_select Int)) (start_abs01 vabs_f_f a_copy_select vabs_s_f_f a_select N i)))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (start_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_10_1_52_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((rnd Int) (i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_10_1_52_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_11_1_58_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select rnd i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_11_1_58_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_12_1_128_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N 0))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_12_1_128_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (< i N)) (assert_13_12_102_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_12_1_128_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (not (< i N))) (assign_18_1_134_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((k Int) (i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (and (assert_13_12_102_abs01 k a_copy_select k a_select N i) (<= 0 k) (< k i)) (= a_select a_copy_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_13_12_102_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (arrayassign_14_5_116_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select_0 Int) (a_select Int) (a_copy_select Int)) (=> (and (=> (= i vabs_0_s_f_f) (= a_select a_select_0)) (arrayassign_14_5_116_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (arrayassign_14_5_116_abs01 vabs_0_f_f a_copy_select i a_select_0 N i)) (assign_15_5_125_abs01 vabs_0_f_f (ite (= i vabs_0_f_f) a_select_0 a_copy_select) vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_15_5_125_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_12_1_128_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N (+ i 1)))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_18_1_134_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_19_1_208_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N 0))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_19_1_208_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (< i N)) (assert_20_12_178_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((N Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_copy_select Int) (a_select Int)) (=> (and (while_19_1_208_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (not (< i N))) (end_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((k Int) (i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (and (assert_20_12_178_abs01 k a_copy_select k a_select N i) (<= 0 k) (< k N)) (= a_select a_copy_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_20_12_178_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assert_21_5_196_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (a_select Int) (a_copy_select Int)) (=> (assert_21_5_196_abs01 i a_copy_select i a_select N i) (= a_select a_copy_select))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assert_21_5_196_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (assign_22_5_205_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i))))
(assert (forall ((i Int) (N Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (a_select Int) (a_copy_select Int)) (=> (assign_22_5_205_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N i) (while_19_1_208_abs01 vabs_0_f_f a_copy_select vabs_0_s_f_f a_select N (+ i 1)))))
(check-sat)