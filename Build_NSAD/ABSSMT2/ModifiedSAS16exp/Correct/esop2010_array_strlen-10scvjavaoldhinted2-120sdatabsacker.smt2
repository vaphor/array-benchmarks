(set-logic HORN)
(declare-fun assign_172_22_5_abs0 (Int Int Int Int) Bool)
(declare-fun assert_163_21_5_abs0 (Int Int Int Int) Bool)
(declare-fun assert_148_20_12_abs0 (Int Int Int Int) Bool)
(declare-fun while_175_19_1_abs0 (Int Int Int Int) Bool)
(declare-fun assign_110_18_1_abs0 (Int Int Int Int) Bool)
(declare-fun assign_104_17_1_abs0 (Int Int Int Int) Bool)
(declare-fun assign_95_15_5_abs0 (Int Int Int Int) Bool)
(declare-fun assert_86_14_12_abs0 (Int Int Int Int) Bool)
(declare-fun while_98_13_1_abs0 (Int Int Int Int) Bool)
(declare-fun assign_39_12_1_abs0 (Int Int Int Int) Bool)
(declare-fun end_abs0 (Int Int Int Int) Bool)
(declare-fun start_abs0 (Int Int Int Int) Bool)
(assert (forall ((l Int) (i Int) (vabs_f_f Int) (source_select Int)) (start_abs0 vabs_f_f source_select l i)))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (start_abs0 vabs_0_f_f source_select l i) (assign_39_12_1_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_39_12_1_abs0 vabs_0_f_f source_select l i) (while_98_13_1_abs0 vabs_0_f_f source_select l 0))))
(assert (forall ((l Int) (i Int) (vabs_0_f_f Int) (source_select_0 Int) (source_select Int)) (=> (and (=> (= vabs_0_f_f i) (= source_select source_select_0)) (while_98_13_1_abs0 i source_select l i) (while_98_13_1_abs0 vabs_0_f_f source_select_0 l i) (not (= source_select 0))) (assert_86_14_12_abs0 vabs_0_f_f source_select_0 l i))))
(assert (forall ((l Int) (i Int) (vabs_0_f_f Int) (source_select_0 Int) (source_select Int)) (=> (and (=> (= vabs_0_f_f i) (= source_select source_select_0)) (while_98_13_1_abs0 i source_select l i) (while_98_13_1_abs0 vabs_0_f_f source_select_0 l i) (not (not (= source_select 0)))) (assign_104_17_1_abs0 vabs_0_f_f source_select_0 l i))))
(assert (forall ((k Int) (i Int) (l Int) (source_select Int)) (=> (and (assert_86_14_12_abs0 k source_select l i) (<= 0 k) (< k i)) (not (= source_select 0)))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assert_86_14_12_abs0 vabs_0_f_f source_select l i) (assign_95_15_5_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_95_15_5_abs0 vabs_0_f_f source_select l i) (while_98_13_1_abs0 vabs_0_f_f source_select l (+ i 1)))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_104_17_1_abs0 vabs_0_f_f source_select l i) (assign_110_18_1_abs0 vabs_0_f_f source_select i i))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_110_18_1_abs0 vabs_0_f_f source_select l i) (while_175_19_1_abs0 vabs_0_f_f source_select l 0))))
(assert (forall ((l Int) (i Int) (vabs_0_f_f Int) (source_select Int)) (=> (and (while_175_19_1_abs0 vabs_0_f_f source_select l i) (< i l)) (assert_148_20_12_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((l Int) (i Int) (vabs_0_f_f Int) (source_select Int)) (=> (and (while_175_19_1_abs0 vabs_0_f_f source_select l i) (not (< i l))) (end_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((k Int) (i Int) (l Int) (source_select Int)) (=> (and (assert_148_20_12_abs0 k source_select l i) (<= 0 k) (< k l)) (not (= source_select 0)))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assert_148_20_12_abs0 vabs_0_f_f source_select l i) (assert_163_21_5_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((i Int) (l Int) (source_select Int)) (=> (assert_163_21_5_abs0 i source_select l i) (not (= source_select 0)))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assert_163_21_5_abs0 vabs_0_f_f source_select l i) (assign_172_22_5_abs0 vabs_0_f_f source_select l i))))
(assert (forall ((i Int) (l Int) (vabs_0_f_f Int) (source_select Int)) (=> (assign_172_22_5_abs0 vabs_0_f_f source_select l i) (while_175_19_1_abs0 vabs_0_f_f source_select l (+ i 1)))))
(check-sat)