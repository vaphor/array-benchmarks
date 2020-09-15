(set-logic HORN)
(declare-fun assign_38_5_234_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_37_5_225_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_32_2_191_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_35_2_213_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun if_31_5_216_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_30_1_237_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_29_1_157_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_28_1_151_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_26_1_145_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_23_5_127_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_22_5_118_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_21_1_130_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_20_1_96_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_17_5_87_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_16_5_78_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_15_1_90_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_14_1_56_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_50_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start_abs012 (Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((modul Int) (size Int) (i Int) (vabs_f_f Int) (vabs_s_f_f Int) (vabs_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (start_abs012 vabs_f_f res_select vabs_s_f_f b_select vabs_s_s_f_f a_select modul size i)))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (start_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (assign_12_1_50_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((rnd Int) (i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_12_1_50_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (assign_14_1_56_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul rnd i))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_14_1_56_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (while_15_1_90_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size 0))))
(assert (forall ((modul Int) (size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (and (while_15_1_90_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (< i size)) (arrayassign_16_5_78_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((modul Int) (size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (and (while_15_1_90_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (not (< i size))) (assign_20_1_96_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select_0 Int) (a_select Int) (b_select Int) (res_select Int)) (=> (and (=> (= i vabs_0_s_s_f_f) (= a_select a_select_0)) (arrayassign_16_5_78_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (arrayassign_16_5_78_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select i a_select_0 modul size i)) (assign_17_5_87_abs012 vabs_0_f_f (ite (= i vabs_0_f_f) a_select_0 res_select) vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_17_5_87_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (while_15_1_90_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size (+ i 2)))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_20_1_96_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (while_21_1_130_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size 1))))
(assert (forall ((modul Int) (size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (and (while_21_1_130_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (< i size)) (arrayassign_22_5_118_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((modul Int) (size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (and (while_21_1_130_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (not (< i size))) (assign_26_1_145_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select_0 Int) (b_select Int) (res_select Int)) (=> (and (=> (= i vabs_0_s_f_f) (= b_select b_select_0)) (arrayassign_22_5_118_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (arrayassign_22_5_118_abs012 vabs_0_f_f res_select i b_select_0 vabs_0_s_s_f_f a_select modul size i)) (assign_23_5_127_abs012 vabs_0_f_f (ite (= i vabs_0_f_f) b_select_0 res_select) vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_23_5_127_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (while_21_1_130_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size (+ i 2)))))
(assert (forall ((rnd Int) (modul Int) (size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (and (assign_26_1_145_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (>= rnd 0) (< rnd size)) (assign_28_1_151_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_28_1_151_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (assign_29_1_157_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size 0))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_29_1_157_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (while_30_1_237_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select 1 size i))))
(assert (forall ((modul Int) (size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (and (while_30_1_237_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (< i size)) (if_31_5_216_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((modul Int) (size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (and (while_30_1_237_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (not (< i size))) (end_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (if_31_5_216_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select 0 size i) (assert_32_2_191_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select 0 size i))))
(assert (forall ((modul Int) (size Int) (i Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (res_select Int) (b_select Int) (a_select Int)) (=> (and (if_31_5_216_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (not (= modul 0))) (assert_35_2_213_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((i Int) (size Int) (modul Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assert_32_2_191_abs012 i res_select 0 b_select i a_select modul size i) (= res_select a_select))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assert_32_2_191_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (assign_37_5_225_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((i Int) (size Int) (modul Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assert_35_2_213_abs012 i res_select i b_select 0 a_select modul size i) (= res_select b_select))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assert_35_2_213_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (assign_37_5_225_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_37_5_225_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (assign_38_5_234_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select (- 1 modul) size i))))
(assert (forall ((i Int) (size Int) (modul Int) (vabs_0_f_f Int) (vabs_0_s_f_f Int) (vabs_0_s_s_f_f Int) (a_select Int) (b_select Int) (res_select Int)) (=> (assign_38_5_234_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size i) (while_30_1_237_abs012 vabs_0_f_f res_select vabs_0_s_f_f b_select vabs_0_s_s_f_f a_select modul size (+ i 1)))))
(check-sat)