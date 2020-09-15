(set-logic HORN)
(declare-fun assert_33_8_239_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_31_10_213_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assert_30_10_204_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assert_29_10_189_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun while_27_8_216_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_26_8_151_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_23_5_142_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_21_2_130_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_20_2_121_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun if_19_5_134_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assert_18_12_103_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun while_17_1_145_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_15_1_65_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_14_1_56_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_13_1_44_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_32_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun end_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun start_abs0 (Int Int Int Int Int Int) Bool)
(assert (forall ((elem Int) (pos Int) (N Int) (i Int) (vabs_f_f Int) (a_select Int)) (start_abs0 vabs_f_f a_select elem pos N i)))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (start_abs0 vabs_0_f_f a_select elem pos N i) (assign_12_1_32_abs0 vabs_0_f_f a_select elem pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_12_1_32_abs0 vabs_0_f_f a_select elem pos N i) (assign_13_1_44_abs0 vabs_0_f_f a_select elem pos N 0))))
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_13_1_44_abs0 vabs_0_f_f a_select elem pos N i) (assign_14_1_56_abs0 vabs_0_f_f a_select elem pos rnd i))))
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_14_1_56_abs0 vabs_0_f_f a_select elem pos N i) (assign_15_1_65_abs0 vabs_0_f_f a_select rnd pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_15_1_65_abs0 vabs_0_f_f a_select elem pos N i) (while_17_1_145_abs0 vabs_0_f_f a_select elem (- 0 1) N i))))
(assert (forall ((elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_17_1_145_abs0 vabs_0_f_f a_select elem pos N i) (< i N)) (assert_18_12_103_abs0 vabs_0_f_f a_select elem pos N i))))
(assert (forall ((elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_17_1_145_abs0 vabs_0_f_f a_select elem pos N i) (not (< i N))) (assign_26_8_151_abs0 vabs_0_f_f a_select elem pos N i))))
(assert (forall ((k Int) (i Int) (N Int) (pos Int) (elem Int) (a_select Int)) (=> (and (assert_18_12_103_abs0 k a_select elem pos N i) (>= k 0) (< k i)) (not (= a_select elem)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assert_18_12_103_abs0 vabs_0_f_f a_select elem pos N i) (if_19_5_134_abs0 vabs_0_f_f a_select elem pos N i))))
(assert (forall ((pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select_0 Int) (a_select Int)) (=> (and (=> (= vabs_0_f_f i) (= a_select a_select_0)) (if_19_5_134_abs0 i a_select a_select pos N i) (if_19_5_134_abs0 vabs_0_f_f a_select_0 a_select pos N i)) (assign_20_2_121_abs0 vabs_0_f_f a_select_0 a_select pos N i))))
(assert (forall ((elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select_0 Int) (a_select Int)) (=> (and (=> (= vabs_0_f_f i) (= a_select a_select_0)) (if_19_5_134_abs0 i a_select elem pos N i) (if_19_5_134_abs0 vabs_0_f_f a_select_0 elem pos N i) (not (= a_select elem))) (assign_23_5_142_abs0 vabs_0_f_f a_select_0 elem pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_20_2_121_abs0 vabs_0_f_f a_select elem pos N i) (assign_21_2_130_abs0 vabs_0_f_f a_select elem i N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_21_2_130_abs0 vabs_0_f_f a_select elem pos N i) (assign_23_5_142_abs0 vabs_0_f_f a_select elem pos N (+ N 2)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_23_5_142_abs0 vabs_0_f_f a_select elem pos N i) (while_17_1_145_abs0 vabs_0_f_f a_select elem pos N (+ i 1)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_26_8_151_abs0 vabs_0_f_f a_select elem pos N i) (while_27_8_216_abs0 vabs_0_f_f a_select elem pos N 0))))
(assert (forall ((elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_27_8_216_abs0 vabs_0_f_f a_select elem pos N i) (< i pos)) (assert_29_10_189_abs0 vabs_0_f_f a_select elem pos N i))))
(assert (forall ((elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_27_8_216_abs0 vabs_0_f_f a_select elem pos N i) (not (< i pos))) (assert_33_8_239_abs0 vabs_0_f_f a_select elem pos N i))))
(assert (forall ((k Int) (i Int) (N Int) (pos Int) (elem Int) (a_select Int)) (=> (and (assert_29_10_189_abs0 k a_select elem pos N i) (>= k 0) (< k pos)) (not (= a_select elem)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assert_29_10_189_abs0 vabs_0_f_f a_select elem pos N i) (assert_30_10_204_abs0 vabs_0_f_f a_select elem pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a_select Int)) (=> (assert_30_10_204_abs0 i a_select elem pos N i) (not (= a_select elem)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assert_30_10_204_abs0 vabs_0_f_f a_select elem pos N i) (assign_31_10_213_abs0 vabs_0_f_f a_select elem pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_31_10_213_abs0 vabs_0_f_f a_select elem pos N i) (while_27_8_216_abs0 vabs_0_f_f a_select elem pos N (+ i 1)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a_select Int)) (=> (assert_33_8_239_abs0 pos a_select elem pos N i) (or (= a_select elem) (= pos (- 0 1))))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (vabs_0_f_f Int) (a_select Int)) (=> (assert_33_8_239_abs0 vabs_0_f_f a_select elem pos N i) (end_abs0 vabs_0_f_f a_select elem pos N i))))
(check-sat)