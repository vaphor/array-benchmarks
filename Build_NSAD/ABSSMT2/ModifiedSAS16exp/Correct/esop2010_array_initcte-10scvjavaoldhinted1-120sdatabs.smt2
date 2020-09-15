(set-logic HORN)
(declare-fun assign_190_23_5_abs0 (Int Int Int Int Int) Bool)
(declare-fun assert_181_22_5_abs0 (Int Int Int Int Int) Bool)
(declare-fun assert_167_21_12_abs0 (Int Int Int Int Int) Bool)
(declare-fun while_193_20_1_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_130_19_1_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_121_16_5_abs0 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_112_15_5_abs0 (Int Int Int Int Int) Bool)
(declare-fun assert_102_14_12_abs0 (Int Int Int Int Int) Bool)
(declare-fun while_124_13_1_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_65_12_8_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_59_10_1_abs0 (Int Int Int Int Int) Bool)
(declare-fun assign_47_9_1_abs0 (Int Int Int Int Int) Bool)
(declare-fun end_abs0 (Int Int Int Int Int) Bool)
(declare-fun start_abs0 (Int Int Int Int Int) Bool)
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) (vabs_f_f Int)) (start_abs0 vabs_f_f (select a vabs_f_f) c N i)))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (start_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (assign_47_9_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i))))
(assert (forall ((rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_47_9_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (assign_59_10_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c rnd i))))
(assert (forall ((rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_59_10_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (assign_65_12_8_abs0 vabs_0_f_f (select a vabs_0_f_f) rnd N i))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_65_12_8_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (while_124_13_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N 0))))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (while_124_13_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (< i N)) (assert_102_14_12_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i))))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (while_124_13_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (not (< i N))) (assign_130_19_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i))))
(assert (forall ((k Int) (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (and (assert_102_14_12_abs0 k (select a k) c N i) (<= 0 k) (< k i)) (= (select a k) c))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assert_102_14_12_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (arrayassign_112_15_5_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (arrayassign_112_15_5_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (assign_121_16_5_abs0 vabs_0_f_f (select (store a i c) vabs_0_f_f) c N i))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_121_16_5_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (while_124_13_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N (+ i 1)))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_130_19_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (while_193_20_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N 0))))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (while_193_20_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (< i N)) (assert_167_21_12_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i))))
(assert (forall ((a (Array Int Int)) (c Int) (N Int) (i Int) (vabs_0_f_f Int)) (=> (and (while_193_20_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (not (< i N))) (end_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i))))
(assert (forall ((k Int) (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (and (assert_167_21_12_abs0 k (select a k) c N i) (<= 0 k) (< k N)) (= (select a k) c))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assert_167_21_12_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (assert_181_22_5_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int))) (=> (assert_181_22_5_abs0 i (select a i) c N i) (= (select a i) c))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assert_181_22_5_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (assign_190_23_5_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i))))
(assert (forall ((i Int) (N Int) (c Int) (a (Array Int Int)) (vabs_0_f_f Int)) (=> (assign_190_23_5_abs0 vabs_0_f_f (select a vabs_0_f_f) c N i) (while_193_20_1_abs0 vabs_0_f_f (select a vabs_0_f_f) c N (+ i 1)))))
(check-sat)