(set-logic HORN)
(declare-fun assert_29_8_241_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_27_3_214_abs0 (Int Int Int Int Int) Bool)
(declare-fun assert_26_10_205_abs0 (Int Int Int Int Int) Bool)
(declare-fun while_23_1_217_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_22_8_154_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_20_5_145_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_18_2_133_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_17_2_124_abs0 (Int Int Int Int Int) Bool)
(declare-fun if_16_5_137_abs0 (Int Int Int Int Int) Bool)
(declare-fun while_14_1_148_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_13_8_68_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_12_1_62_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_11_1_53_abs0 (Int Int Int Int Int) Bool)
(declare-fun end_abs0 (Int Int Int Int Int) Bool)
(declare-fun start_abs0 (Int Int Int Int Int) Bool)
(assert (forall ((pos Int) (N Int) (i Int) (vabs_f_f Int) (a_select Int)) (start_abs0 vabs_f_f a_select pos N i)))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (start_abs0 vabs_0_f_f a_select pos N i) (assign_11_1_53_abs0 vabs_0_f_f a_select pos N i))))
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_11_1_53_abs0 vabs_0_f_f a_select pos N i) (assign_12_1_62_abs0 vabs_0_f_f a_select pos rnd i))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_12_1_62_abs0 vabs_0_f_f a_select pos N i) (assign_13_8_68_abs0 vabs_0_f_f a_select (- 0 1) N i))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_13_8_68_abs0 vabs_0_f_f a_select pos N i) (while_14_1_148_abs0 vabs_0_f_f a_select pos N 0))))
(assert (forall ((pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_14_1_148_abs0 vabs_0_f_f a_select pos N i) (< i N)) (if_16_5_137_abs0 vabs_0_f_f a_select pos N i))))
(assert (forall ((pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_14_1_148_abs0 vabs_0_f_f a_select pos N i) (not (< i N))) (assign_22_8_154_abs0 vabs_0_f_f a_select pos N i))))
(assert (forall ((pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select_0 Int) (a_select Int)) (=> (and (=> (= vabs_0_f_f i) (= a_select a_select_0)) (if_16_5_137_abs0 i a_select pos N i) (if_16_5_137_abs0 vabs_0_f_f a_select_0 pos N i) (not (= a_select 0))) (assign_17_2_124_abs0 vabs_0_f_f a_select_0 pos N i))))
(assert (forall ((pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select_0 Int) (a_select Int)) (=> (and (=> (= vabs_0_f_f i) (= a_select a_select_0)) (if_16_5_137_abs0 i a_select pos N i) (if_16_5_137_abs0 vabs_0_f_f a_select_0 pos N i) (not (not (= a_select 0)))) (assign_20_5_145_abs0 vabs_0_f_f a_select_0 pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_17_2_124_abs0 vabs_0_f_f a_select pos N i) (assign_18_2_133_abs0 vabs_0_f_f a_select i N i))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_18_2_133_abs0 vabs_0_f_f a_select pos N i) (assign_20_5_145_abs0 vabs_0_f_f a_select pos N (+ N 2)))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_20_5_145_abs0 vabs_0_f_f a_select pos N i) (while_14_1_148_abs0 vabs_0_f_f a_select pos N (+ i 1)))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_22_8_154_abs0 vabs_0_f_f a_select pos N i) (while_23_1_217_abs0 vabs_0_f_f a_select pos N 0))))
(assert (forall ((pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_23_1_217_abs0 vabs_0_f_f a_select pos N i) (< i pos)) (assert_26_10_205_abs0 vabs_0_f_f a_select pos N i))))
(assert (forall ((pos Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_23_1_217_abs0 vabs_0_f_f a_select pos N i) (not (< i pos))) (assert_29_8_241_abs0 vabs_0_f_f a_select pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (a_select Int)) (=> (assert_26_10_205_abs0 i a_select pos N i) (= a_select 0))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assert_26_10_205_abs0 vabs_0_f_f a_select pos N i) (assign_27_3_214_abs0 vabs_0_f_f a_select pos N i))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_27_3_214_abs0 vabs_0_f_f a_select pos N i) (while_23_1_217_abs0 vabs_0_f_f a_select pos N (+ i 1)))))
(assert (forall ((i Int) (N Int) (pos Int) (a_select Int)) (=> (assert_29_8_241_abs0 pos a_select pos N i) (or (not (= a_select 0)) (= pos (- 0 1))))))
(assert (forall ((i Int) (N Int) (pos Int) (vabs_0_f_f Int) (a_select Int)) (=> (assert_29_8_241_abs0 vabs_0_f_f a_select pos N i) (end_abs0 vabs_0_f_f a_select pos N i))))
(check-sat)