(set-logic HORN)
(declare-fun assert_33_8_239_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_31_10_213_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assert_30_10_204_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun while_27_8_216_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_26_8_151_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_23_5_142_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_21_2_130_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_20_2_121_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun if_19_5_134_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun while_17_1_145_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_15_1_65_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_14_1_56_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_13_1_44_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_32_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun end_abs0 (Int Int Int Int Int Int) Bool)
(declare-fun start_abs0 (Int Int Int Int Int Int) Bool)
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (vabs_f_f Int)) (start_abs0 vabs_f_f (select a vabs_f_f) elem pos N i)))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (start_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (assign_12_1_32_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_12_1_32_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (assign_13_1_44_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N 0))))
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_13_1_44_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (assign_14_1_56_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos rnd i))))
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_14_1_56_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (assign_15_1_65_abs0 vabs_0_f_f (select a vabs_0_f_f) rnd pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_15_1_65_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (while_17_1_145_abs0 vabs_0_f_f (select a vabs_0_f_f) elem (- 0 1) N i))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (while_17_1_145_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (< i N)) (if_19_5_134_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (while_17_1_145_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (not (< i N))) (assign_26_8_151_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (if_19_5_134_abs0 i (select a i) elem pos N i) (if_19_5_134_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (= (select a i) elem)) (assign_20_2_121_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (if_19_5_134_abs0 i (select a i) elem pos N i) (if_19_5_134_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (not (= (select a i) elem))) (assign_23_5_142_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_20_2_121_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (assign_21_2_130_abs0 vabs_0_f_f (select a vabs_0_f_f) elem i N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_21_2_130_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (assign_23_5_142_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N (+ N 2)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_23_5_142_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (while_17_1_145_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N (+ i 1)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_26_8_151_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (while_27_8_216_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N 0))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (while_27_8_216_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (< i pos)) (assert_30_10_204_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (while_27_8_216_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (not (< i pos))) (assert_33_8_239_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int))) (=> (assert_30_10_204_abs0 i (select a i) elem pos N i) (not (= (select a i) elem)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assert_30_10_204_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (assign_31_10_213_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_31_10_213_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (while_27_8_216_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N (+ i 1)))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int))) (=> (assert_33_8_239_abs0 pos (select a pos) elem pos N i) (or (= (select a pos) elem) (= pos (- 0 1))))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assert_33_8_239_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i) (end_abs0 vabs_0_f_f (select a vabs_0_f_f) elem pos N i))))
(check-sat)