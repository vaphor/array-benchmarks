
(set-logic HORN)
(declare-rel assign_38_5_234_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_37_5_225_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assert_32_2_191_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assert_35_2_213_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel if_31_5_216_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel while_30_1_237_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_29_1_157_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_28_1_151_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_26_1_145_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_23_5_127_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_22_5_118_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel while_21_1_130_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_20_1_96_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_17_5_87_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_16_5_78_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel while_15_1_90_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_14_1_56_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_12_1_50_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 20
;Number of variables = 6
;Number of clauses = 26
;
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (start_abs i3 acker2 i2 acker1 i1 acker modul size i)))
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (start_abs i3 acker i2 acker1 i1 acker2 modul size i) (assign_12_1_50_abs i3 acker i2 acker1 i1 acker2 modul size i))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_12_1_50_abs i3 acker i2 acker1 i1 acker2 modul size i) (assign_14_1_56_abs i3 acker i2 acker1 i1 acker2 modul rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_14_1_56_abs i3 acker i2 acker1 i1 acker2 modul size i) (while_15_1_90_abs i3 acker i2 acker1 i1 acker2 modul size 0))))
;
;(while)   while((i<size))
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_15_1_90_abs i3 acker2 i2 acker1 i1 acker modul size i) (< i size)) (arrayassign_16_5_78_abs i3 acker2 i2 acker1 i1 acker modul size i))))
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_15_1_90_abs i3 acker2 i2 acker1 i1 acker modul size i) (not (< i size))) (assign_20_1_96_abs i3 acker2 i2 acker1 i1 acker modul size i))))
;
;(aassign) res[i] := a[i]
(assert (forall ( (i Int) (size Int) (modul Int) (vacker_1 Int) (vacker_0 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_16_5_78_abs i3 acker i2 acker1 i vacker_0 modul size i) (arrayassign_16_5_78_abs i3 acker i2 acker1 i1 vacker_0 modul size i)) (assign_17_5_87_abs i3 (ite (= i i3) vacker_0 acker) i2 acker1 i1 vacker_0 modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_17_5_87_abs i3 acker i2 acker1 i1 acker2 modul size i) (while_15_1_90_abs i3 acker i2 acker1 i1 acker2 modul size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_20_1_96_abs i3 acker i2 acker1 i1 acker2 modul size i) (while_21_1_130_abs i3 acker i2 acker1 i1 acker2 modul size 1))))
;
;(while)   while((i<size))
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_21_1_130_abs i3 acker2 i2 acker1 i1 acker modul size i) (< i size)) (arrayassign_22_5_118_abs i3 acker2 i2 acker1 i1 acker modul size i))))
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_21_1_130_abs i3 acker2 i2 acker1 i1 acker modul size i) (not (< i size))) (assign_26_1_145_abs i3 acker2 i2 acker1 i1 acker modul size i))))
;
;(aassign) res[i] := b[i]
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (=> (= i i2) (= vacker_0 vacker_1)) (arrayassign_22_5_118_abs i3 acker i vacker_0 i1 acker2 modul size i) (arrayassign_22_5_118_abs i3 acker i2 vacker_0 i1 acker2 modul size i)) (assign_23_5_127_abs i3 (ite (= i i3) vacker_0 acker) i2 vacker_0 i1 acker2 modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_23_5_127_abs i3 acker i2 acker1 i1 acker2 modul size i) (while_21_1_130_abs i3 acker i2 acker1 i1 acker2 modul size (+ i 2)))))
;
;(assign)  k := Support.random(0, size)
(assert (forall ( (rnd Int) (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (assign_26_1_145_abs i3 acker2 i2 acker1 i1 acker modul size i) (>= rnd 0) (< rnd size)) (assign_28_1_151_abs i3 acker2 i2 acker1 i1 acker modul size i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_28_1_151_abs i3 acker i2 acker1 i1 acker2 modul size i) (assign_29_1_157_abs i3 acker i2 acker1 i1 acker2 modul size 0))))
;
;(assign)  modul := 1
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_29_1_157_abs i3 acker i2 acker1 i1 acker2 modul size i) (while_30_1_237_abs i3 acker i2 acker1 i1 acker2 1 size i))))
;
;(while)   while((i<size))
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_30_1_237_abs i3 acker2 i2 acker1 i1 acker modul size i) (< i size)) (if_31_5_216_abs i3 acker2 i2 acker1 i1 acker modul size i))))
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (while_30_1_237_abs i3 acker2 i2 acker1 i1 acker modul size i) (not (< i size))) (end_abs i3 acker2 i2 acker1 i1 acker modul size i))))
;
;(if)      if((modul==0))
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (if_31_5_216_abs i3 acker2 i2 acker1 i1 acker 0 size i) (assert_32_2_191_abs i3 acker2 i2 acker1 i1 acker 0 size i))))
(assert (forall ( (acker2 Int) (acker1 Int) (acker Int) (modul Int) (size Int) (i Int) (i1 Int) (i2 Int) (i3 Int)) (=> (and (if_31_5_216_abs i3 acker2 i2 acker1 i1 acker modul size i) (not (= 0 modul))) (assert_35_2_213_abs i3 acker2 i2 acker1 i1 acker modul size i))))
;
;(assert)  (res[i]==a[i])
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (assert_32_2_191_abs i acker 17 acker1 i acker2 modul size i) (= acker acker2))))
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assert_32_2_191_abs i3 acker i2 acker1 i1 acker2 modul size i) (assign_37_5_225_abs i3 acker i2 acker1 i1 acker2 modul size i))))
;
;(assert)  (res[i]==b[i])
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int)) (=> (assert_35_2_213_abs i acker i acker1 17 acker2 modul size i) (= acker acker1))))
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assert_35_2_213_abs i3 acker i2 acker1 i1 acker2 modul size i) (assign_37_5_225_abs i3 acker i2 acker1 i1 acker2 modul size i))))
;
;(assign)  modul := (1-modul)
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_37_5_225_abs i3 acker i2 acker1 i1 acker2 modul size i) (assign_38_5_234_abs i3 acker i2 acker1 i1 acker2 (- 1 modul) size i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (size Int) (modul Int) (acker2 Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int) (i3 Int)) (=> (assign_38_5_234_abs i3 acker i2 acker1 i1 acker2 modul size i) (while_30_1_237_abs i3 acker i2 acker1 i1 acker2 modul size (+ i 1)))))
(check-sat)
