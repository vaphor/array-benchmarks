
(set-logic HORN)
(declare-rel assign_234_38_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_225_37_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assert_191_32_2_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assert_213_35_2_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel if_216_31_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel while_237_30_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_157_29_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_151_28_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_145_26_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_127_23_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_118_22_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel while_130_21_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_96_20_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_87_17_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_78_16_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel while_90_15_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_56_14_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_50_12_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 20
;Number of variables = 6
;Number of clauses = 26
;
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (start_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i)))
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (start_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (assign_50_12_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_50_12_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (assign_56_14_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_56_14_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (while_90_15_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size 0))))
;
;(while)   while((i<size))
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_90_15_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (< i size)) (arrayassign_78_16_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_90_15_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (not (< i size))) (assign_96_20_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(aassign) res[i] := a[i]
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (and (arrayassign_78_16_5_abs i3 (select res i3) i2 (select b i2) i (select a i) modul size i) (arrayassign_78_16_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i)) (assign_87_17_5_abs i3 (ite (= i i3) (select a i) (select res i3)) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_87_17_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (while_90_15_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_96_20_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (while_130_21_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size 1))))
;
;(while)   while((i<size))
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_130_21_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (< i size)) (arrayassign_118_22_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_130_21_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (not (< i size))) (assign_145_26_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(aassign) res[i] := b[i]
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (and (arrayassign_118_22_5_abs i3 (select res i3) i (select b i) i1 (select a i1) modul size i) (arrayassign_118_22_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i)) (assign_127_23_5_abs i3 (ite (= i i3) (select b i) (select res i3)) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_127_23_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (while_130_21_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size (+ i 2)))))
;
;(assign)  k := Support.random(0, size)
(assert (forall ( (rnd Int) (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (assign_145_26_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (>= rnd 0) (< rnd size)) (assign_151_28_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_151_28_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (assign_157_29_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size 0))))
;
;(assign)  modul := 1
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_157_29_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (while_237_30_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) 1 size i))))
;
;(while)   while((i<size))
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_237_30_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (< i size)) (if_216_31_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_237_30_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (not (< i size))) (end_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(if)      if((modul==0))
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (if_216_31_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) 0 size i) (assert_191_32_2_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) 0 size i))))
(assert (forall ( (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (if_216_31_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (not (= 0 modul))) (assert_213_35_2_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(assert)  (res[i]==a[i])
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int))) (=> (assert_191_32_2_abs i (select res i) 17 (select b 17) i (select a i) modul size i) (= (select a i) (select res i)))))
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assert_191_32_2_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (assign_225_37_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(assert)  (res[i]==b[i])
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int))) (=> (assert_213_35_2_abs i (select res i) i (select b i) 17 (select a 17) modul size i) (= (select b i) (select res i)))))
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assert_213_35_2_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (assign_225_37_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i))))
;
;(assign)  modul := (1-modul)
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_225_37_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (assign_234_38_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) (- 1 modul) size i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_234_38_5_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size i) (while_237_30_1_abs i3 (select res i3) i2 (select b i2) i1 (select a i1) modul size (+ i 1)))))
(check-sat)
