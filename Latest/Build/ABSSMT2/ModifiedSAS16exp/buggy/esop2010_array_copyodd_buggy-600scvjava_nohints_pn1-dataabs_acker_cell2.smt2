
(set-logic HORN)
(declare-rel assign_139_22_5_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_130_21_5_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_142_20_1_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_104_19_1_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_95_16_5_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_86_15_5_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_77_14_5_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_98_13_1_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_55_11_1_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_43_10_1_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_37_9_1_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (size Int) (j Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11))) (start_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i))))
(assert (forall ( (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (start_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (start_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (start_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (start_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (start_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (start_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (start_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (start_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (start_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (start_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (start_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (start_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (start_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (start_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (start_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (start_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (assign_37_9_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i))))
;
;(assign)  i := 1
(assert (forall ( (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_37_9_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_37_9_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_37_9_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_37_9_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_37_9_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_37_9_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_37_9_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_37_9_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (assign_37_9_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_37_9_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_37_9_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_37_9_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_37_9_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_37_9_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_37_9_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_37_9_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (assign_43_10_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j 1))))
;
;(assign)  j := 0
(assert (forall ( (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_43_10_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_43_10_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_43_10_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_43_10_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_43_10_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_43_10_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_43_10_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_43_10_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (assign_43_10_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_43_10_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_43_10_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_43_10_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_43_10_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_43_10_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_43_10_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_43_10_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (assign_55_11_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size 0 i))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_55_11_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_55_11_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_55_11_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_55_11_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_55_11_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_55_11_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_55_11_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_55_11_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (assign_55_11_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_55_11_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_55_11_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_55_11_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_55_11_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_55_11_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_55_11_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_55_11_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (while_98_13_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 rnd j i))))
;
;(while)   while((i<size))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (size Int) (j Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_98_13_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 size j i) (while_98_13_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 size j i) (while_98_13_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i) (while_98_13_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 size j i) (while_98_13_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 size j i) (while_98_13_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 size j i) (while_98_13_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 size j i) (while_98_13_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 size j i) (while_98_13_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 size j i) (while_98_13_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 size j i) (while_98_13_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i) (while_98_13_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 size j i) (while_98_13_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 size j i) (while_98_13_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 size j i) (while_98_13_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 size j i) (while_98_13_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 size j i) (< i size)) (arrayassign_77_14_5_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (size Int) (j Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_98_13_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 size j i) (while_98_13_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 size j i) (while_98_13_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i) (while_98_13_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 size j i) (while_98_13_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 size j i) (while_98_13_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 size j i) (while_98_13_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 size j i) (while_98_13_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 size j i) (while_98_13_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 size j i) (while_98_13_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 size j i) (while_98_13_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i) (while_98_13_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 size j i) (while_98_13_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 size j i) (while_98_13_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 size j i) (while_98_13_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 size j i) (while_98_13_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 size j i) (not (< i size))) (assign_104_19_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (j Int) (size Int) (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (=> (= i3 i4) (= vacker_01 vacker_11)) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i vacker_0 i vacker_0 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i vacker_0 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i vacker_0 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i vacker_0 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i vacker_0 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i vacker_0 i vacker_0 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i vacker_0 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i vacker_0 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i vacker_0 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i vacker_0 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i vacker_0 i vacker_0 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i vacker_0 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i vacker_0 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i vacker_0 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i vacker_0 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i vacker_0 i vacker_0 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i vacker_0 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i vacker_0 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i vacker_0 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i2 vacker_2 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i vacker_0 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i1 vacker_1 size j i) (arrayassign_77_14_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i2 vacker_2 size j i)) (assign_86_15_5_abs i4 (ite (= i i4) vacker_0 vacker_11) i3 (ite (= i i3) vacker_0 vacker_01) i2 vacker_2 i1 vacker_1 size j i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_86_15_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_86_15_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_86_15_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_86_15_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_86_15_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_86_15_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_86_15_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_86_15_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (assign_86_15_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_86_15_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_86_15_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_86_15_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_86_15_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_86_15_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_86_15_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_86_15_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (assign_95_16_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j (+ i 2)))))
;
;(assign)  j := (j+1)
(assert (forall ( (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_95_16_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_95_16_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_95_16_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_95_16_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_95_16_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_95_16_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_95_16_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_95_16_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (assign_95_16_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_95_16_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_95_16_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_95_16_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_95_16_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_95_16_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_95_16_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_95_16_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (while_98_13_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size (+ j 1) i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_104_19_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_104_19_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_104_19_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_104_19_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_104_19_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_104_19_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_104_19_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_104_19_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (assign_104_19_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_104_19_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_104_19_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_104_19_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_104_19_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_104_19_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_104_19_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_104_19_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (while_142_20_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j 0))))
;
;(while)   while((i<size))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (size Int) (j Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_142_20_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 size j i) (while_142_20_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 size j i) (while_142_20_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i) (while_142_20_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 size j i) (while_142_20_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 size j i) (while_142_20_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 size j i) (while_142_20_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 size j i) (while_142_20_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 size j i) (while_142_20_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 size j i) (while_142_20_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 size j i) (while_142_20_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i) (while_142_20_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 size j i) (while_142_20_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 size j i) (while_142_20_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 size j i) (while_142_20_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 size j i) (while_142_20_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 size j i) (< i size)) (assert_130_21_5_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (size Int) (j Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_142_20_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 size j i) (while_142_20_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 size j i) (while_142_20_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i) (while_142_20_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 size j i) (while_142_20_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 size j i) (while_142_20_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 size j i) (while_142_20_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 size j i) (while_142_20_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 size j i) (while_142_20_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 size j i) (while_142_20_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 size j i) (while_142_20_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i) (while_142_20_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 size j i) (while_142_20_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 size j i) (while_142_20_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 size j i) (while_142_20_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 size j i) (while_142_20_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 size j i) (not (< i size))) (end_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 size j i))))
;
;(assert)  (a_copy[i]==a[j])
(assert (forall ( (i Int) (j Int) (size Int) (acker1 Int) (acker Int)) (=> (assert_130_21_5_abs i acker i acker j acker1 j acker1 size j i) (= acker acker1))))
(assert (forall ( (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assert_130_21_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assert_130_21_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assert_130_21_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assert_130_21_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assert_130_21_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assert_130_21_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assert_130_21_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assert_130_21_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (assert_130_21_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assert_130_21_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assert_130_21_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assert_130_21_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assert_130_21_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assert_130_21_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assert_130_21_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assert_130_21_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (assign_139_22_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (j Int) (size Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_139_22_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_139_22_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_139_22_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_139_22_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_139_22_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_139_22_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_139_22_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_139_22_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i) (assign_139_22_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 size j i) (assign_139_22_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 size j i) (assign_139_22_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j i) (assign_139_22_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 size j i) (assign_139_22_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 size j i) (assign_139_22_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 size j i) (assign_139_22_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 size j i) (assign_139_22_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 size j i)) (while_142_20_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 size j (+ i 1)))))
(check-sat)
