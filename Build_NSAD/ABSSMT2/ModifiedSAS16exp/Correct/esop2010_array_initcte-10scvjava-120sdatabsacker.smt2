(set-logic HORN)
(declare-fun assign_23_5_184_abs0 (Int Int Int Int Int) Bool)
(declare-fun assert_22_5_175_abs0 (Int Int Int Int Int) Bool)
(declare-fun while_20_1_187_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_19_1_127_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_16_5_118_abs0 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_15_5_109_abs0 (Int Int Int Int Int) Bool)
(declare-fun while_13_1_121_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_12_8_65_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_10_1_59_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_9_1_47_abs0 (Int Int Int Int Int) Bool)
(declare-fun end_abs0 (Int Int Int Int Int) Bool)
(declare-fun start_abs0 (Int Int Int Int Int) Bool)
(assert (forall ((c Int) (N Int) (i Int) (vabs_f_f Int) (a_select Int)) (start_abs0 vabs_f_f a_select c N i)))
(assert (forall ((i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (start_abs0 vabs_0_f_f a_select c N i) (assign_9_1_47_abs0 vabs_0_f_f a_select c N i))))
(assert (forall ((rnd Int) (i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_9_1_47_abs0 vabs_0_f_f a_select c N i) (assign_10_1_59_abs0 vabs_0_f_f a_select c rnd i))))
(assert (forall ((rnd Int) (i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_10_1_59_abs0 vabs_0_f_f a_select c N i) (assign_12_8_65_abs0 vabs_0_f_f a_select rnd N i))))
(assert (forall ((i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_12_8_65_abs0 vabs_0_f_f a_select c N i) (while_13_1_121_abs0 vabs_0_f_f a_select c N 0))))
(assert (forall ((c Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_13_1_121_abs0 vabs_0_f_f a_select c N i) (< i N)) (arrayassign_15_5_109_abs0 vabs_0_f_f a_select c N i))))
(assert (forall ((c Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_13_1_121_abs0 vabs_0_f_f a_select c N i) (not (< i N))) (assign_19_1_127_abs0 vabs_0_f_f a_select c N i))))
(assert (forall ((i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (arrayassign_15_5_109_abs0 vabs_0_f_f a_select c N i) (assign_16_5_118_abs0 vabs_0_f_f (ite (= i vabs_0_f_f) c a_select) c N i))))
(assert (forall ((i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_16_5_118_abs0 vabs_0_f_f a_select c N i) (while_13_1_121_abs0 vabs_0_f_f a_select c N (+ i 1)))))
(assert (forall ((i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_19_1_127_abs0 vabs_0_f_f a_select c N i) (while_20_1_187_abs0 vabs_0_f_f a_select c N 0))))
(assert (forall ((c Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_20_1_187_abs0 vabs_0_f_f a_select c N i) (< i N)) (assert_22_5_175_abs0 vabs_0_f_f a_select c N i))))
(assert (forall ((c Int) (N Int) (i Int) (vabs_0_f_f Int) (a_select Int)) (=> (and (while_20_1_187_abs0 vabs_0_f_f a_select c N i) (not (< i N))) (end_abs0 vabs_0_f_f a_select c N i))))
(assert (forall ((i Int) (N Int) (c Int) (a_select Int)) (=> (assert_22_5_175_abs0 i a_select c N i) (= a_select c))))
(assert (forall ((i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (assert_22_5_175_abs0 vabs_0_f_f a_select c N i) (assign_23_5_184_abs0 vabs_0_f_f a_select c N i))))
(assert (forall ((i Int) (N Int) (c Int) (vabs_0_f_f Int) (a_select Int)) (=> (assign_23_5_184_abs0 vabs_0_f_f a_select c N i) (while_20_1_187_abs0 vabs_0_f_f a_select c N (+ i 1)))))
(check-sat)