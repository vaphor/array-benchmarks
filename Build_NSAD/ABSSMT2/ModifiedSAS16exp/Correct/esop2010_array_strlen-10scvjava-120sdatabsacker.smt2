(set-logic HORN)
(declare-fun assign_22_5_166_abs0 (Int Int Int Int) Bool)
(declare-fun assert_21_5_157_abs0 (Int Int Int Int) Bool)
(declare-fun while_19_1_169_abs0 (Int Int Int Int) Bool)
(declare-fun assign_18_1_107_abs0 (Int Int Int Int) Bool)
(declare-fun assign_17_1_101_abs0 (Int Int Int Int) Bool)
(declare-fun assign_15_5_92_abs0 (Int Int Int Int) Bool)
(declare-fun while_13_1_95_abs0 (Int Int Int Int) Bool)
(declare-fun assign_12_1_39_abs0 (Int Int Int Int) Bool)
(declare-fun end_abs0 (Int Int Int Int) Bool)
(declare-fun start_abs0 (Int Int Int Int) Bool)
(assert (forall ((l Int) (i Int) (vabs_f_f Int) (source_select Int)) (start_abs0 vabs_f_f source_select l i)))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (start_abs0 vabs_0_f_f source_select l i) (assign_12_1_39_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_12_1_39_abs0 vabs_0_f_f source_select l i) (while_13_1_95_abs0 vabs_0_f_f source_select l 0))))
(assert (forall ((l Int) (i Int) (vabs_0_f_f Int) (source_select_0 Int) (source_select Int)) (=> (and (=> (= vabs_0_f_f i) (= source_select source_select_0)) (while_13_1_95_abs0 i source_select l i) (while_13_1_95_abs0 vabs_0_f_f source_select_0 l i) (not (= source_select 0))) (assign_15_5_92_abs0 vabs_0_f_f source_select_0 l i))))
(assert (forall ((l Int) (i Int) (vabs_0_f_f Int) (source_select_0 Int) (source_select Int)) (=> (and (=> (= vabs_0_f_f i) (= source_select source_select_0)) (while_13_1_95_abs0 i source_select l i) (while_13_1_95_abs0 vabs_0_f_f source_select_0 l i) (not (not (= source_select 0)))) (assign_17_1_101_abs0 vabs_0_f_f source_select_0 l i))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_15_5_92_abs0 vabs_0_f_f source_select l i) (while_13_1_95_abs0 vabs_0_f_f source_select l (+ i 1)))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_17_1_101_abs0 vabs_0_f_f source_select l i) (assign_18_1_107_abs0 vabs_0_f_f source_select i i))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_18_1_107_abs0 vabs_0_f_f source_select l i) (while_19_1_169_abs0 vabs_0_f_f source_select l 0))))
(assert (forall ((l Int) (i Int) (vabs_0_f_f Int) (source_select Int)) (=> (and (while_19_1_169_abs0 vabs_0_f_f source_select l i) (< i l)) (assert_21_5_157_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((l Int) (i Int) (vabs_0_f_f Int) (source_select Int)) (=> (and (while_19_1_169_abs0 vabs_0_f_f source_select l i) (not (< i l))) (end_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((i Int) (l Int) (source_select Int)) (=> (assert_21_5_157_abs0 i source_select l i) (not (= source_select 0)))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assert_21_5_157_abs0 vabs_0_f_f source_select l i) (assign_22_5_166_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_22_5_166_abs0 vabs_0_f_f source_select l i) (while_19_1_169_abs0 vabs_0_f_f source_select l (+ i 1)))))
(check-sat)