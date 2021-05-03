
(set-logic HORN)
(declare-rel assign_29_5_287_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_28_5_278_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_26_1_290_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_25_1_210_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_22_5_201_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_21_5_192_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_19_1_204_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_18_1_128_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_15_5_119_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_14_5_110_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_12_1_122_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_11_8_58_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_9_1_52_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 15
;Number of variables = 4
;Number of clauses = 19
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11))) (start_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (start_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (start_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (start_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (start_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (start_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (start_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (start_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (start_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (start_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (start_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (start_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (start_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (start_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (start_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (start_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (start_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (assign_9_1_52_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_9_1_52_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_9_1_52_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_9_1_52_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_9_1_52_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_9_1_52_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_9_1_52_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_9_1_52_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_9_1_52_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_9_1_52_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_9_1_52_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_9_1_52_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_9_1_52_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_9_1_52_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_9_1_52_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_9_1_52_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_9_1_52_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (assign_11_8_58_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_11_8_58_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_11_8_58_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_11_8_58_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_11_8_58_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_11_8_58_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_11_8_58_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_11_8_58_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_11_8_58_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_11_8_58_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_11_8_58_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_11_8_58_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_11_8_58_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_11_8_58_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_11_8_58_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_11_8_58_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_11_8_58_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_12_1_122_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_12_1_122_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_122_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_12_1_122_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_12_1_122_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_12_1_122_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_12_1_122_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_12_1_122_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_12_1_122_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_12_1_122_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_122_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_12_1_122_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_12_1_122_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_12_1_122_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_12_1_122_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_12_1_122_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_12_1_122_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (< i N)) (arrayassign_14_5_110_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_12_1_122_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_122_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_12_1_122_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_12_1_122_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_12_1_122_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_12_1_122_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_12_1_122_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_12_1_122_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_12_1_122_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_122_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_12_1_122_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_12_1_122_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_12_1_122_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_12_1_122_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_12_1_122_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_12_1_122_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (not (< i N))) (assign_18_1_128_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (=> (= i3 i4) (= vacker_01 vacker_11)) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i vacker_0 i vacker_0 N i) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i vacker_0 i1 vacker_1 N i) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i vacker_0 i2 vacker_2 N i) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i vacker_0 N i) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i1 vacker_1 N i) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i2 vacker_2 N i) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i vacker_0 N i) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i1 vacker_1 N i) (arrayassign_14_5_110_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i2 vacker_2 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i vacker_0 i vacker_0 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i vacker_0 i1 vacker_1 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i vacker_0 i2 vacker_2 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i vacker_0 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i1 vacker_1 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i2 vacker_2 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i vacker_0 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i1 vacker_1 N i) (arrayassign_14_5_110_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i2 vacker_2 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i vacker_0 i vacker_0 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i vacker_0 i1 vacker_1 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i vacker_0 i2 vacker_2 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i vacker_0 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i1 vacker_1 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i2 vacker_2 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i vacker_0 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i1 vacker_1 N i) (arrayassign_14_5_110_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i2 vacker_2 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i vacker_0 i vacker_0 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i vacker_0 i1 vacker_1 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i vacker_0 i2 vacker_2 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i vacker_0 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i1 vacker_1 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i2 vacker_2 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i vacker_0 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i1 vacker_1 N i) (arrayassign_14_5_110_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i2 vacker_2 N i)) (assign_15_5_119_abs i4 (ite (= i i4) vacker_0 vacker_11) i3 (ite (= i i3) vacker_0 vacker_01) i2 vacker_2 i1 vacker_1 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_15_5_119_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_15_5_119_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_15_5_119_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_15_5_119_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_15_5_119_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_15_5_119_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_15_5_119_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_15_5_119_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_15_5_119_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_15_5_119_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_15_5_119_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_15_5_119_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_15_5_119_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_15_5_119_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_15_5_119_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_15_5_119_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_12_1_122_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_18_1_128_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_18_1_128_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_18_1_128_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_18_1_128_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_18_1_128_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_18_1_128_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_18_1_128_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_18_1_128_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_18_1_128_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_18_1_128_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_18_1_128_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_18_1_128_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_18_1_128_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_18_1_128_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_18_1_128_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_18_1_128_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_19_1_204_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_19_1_204_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_204_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_19_1_204_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_19_1_204_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_19_1_204_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_19_1_204_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_19_1_204_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_19_1_204_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_19_1_204_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_204_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_19_1_204_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_19_1_204_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_19_1_204_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_19_1_204_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_19_1_204_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_19_1_204_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (< i N)) (arrayassign_21_5_192_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_19_1_204_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_204_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_19_1_204_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_19_1_204_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_19_1_204_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_19_1_204_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_19_1_204_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_19_1_204_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_19_1_204_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_204_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_19_1_204_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_19_1_204_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_19_1_204_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_19_1_204_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_19_1_204_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_19_1_204_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (not (< i N))) (assign_25_1_210_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_2 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= (- (- N i) 1) i3) (= vacker_01 vacker_11)) (=> (= (- (- N i) 1) i4) (= vacker_01 vacker_2)) (=> (= i3 i4) (= vacker_11 vacker_2)) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 (- (- N i) 1) vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 (- (- N i) 1) vacker_01 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 (- (- N i) 1) vacker_01 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 (- (- N i) 1) vacker_01 i2 vacker_1 i2 vacker_1 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 i3 vacker_11 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 i3 vacker_11 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 i3 vacker_11 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 i3 vacker_11 i2 vacker_1 i2 vacker_1 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 i4 vacker_2 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 i4 vacker_2 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 i4 vacker_2 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_01 i4 vacker_2 i2 vacker_1 i2 vacker_1 N i) (arrayassign_21_5_192_abs i3 vacker_11 (- (- N i) 1) vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs i3 vacker_11 (- (- N i) 1) vacker_01 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs i3 vacker_11 (- (- N i) 1) vacker_01 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs i3 vacker_11 (- (- N i) 1) vacker_01 i2 vacker_1 i2 vacker_1 N i) (arrayassign_21_5_192_abs i3 vacker_11 i3 vacker_11 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs i3 vacker_11 i3 vacker_11 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs i3 vacker_11 i3 vacker_11 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs i3 vacker_11 i3 vacker_11 i2 vacker_1 i2 vacker_1 N i) (arrayassign_21_5_192_abs i3 vacker_11 i4 vacker_2 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs i3 vacker_11 i4 vacker_2 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs i3 vacker_11 i4 vacker_2 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs i3 vacker_11 i4 vacker_2 i2 vacker_1 i2 vacker_1 N i) (arrayassign_21_5_192_abs i4 vacker_2 (- (- N i) 1) vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs i4 vacker_2 (- (- N i) 1) vacker_01 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs i4 vacker_2 (- (- N i) 1) vacker_01 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs i4 vacker_2 (- (- N i) 1) vacker_01 i2 vacker_1 i2 vacker_1 N i) (arrayassign_21_5_192_abs i4 vacker_2 i3 vacker_11 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs i4 vacker_2 i3 vacker_11 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs i4 vacker_2 i3 vacker_11 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs i4 vacker_2 i3 vacker_11 i2 vacker_1 i2 vacker_1 N i) (arrayassign_21_5_192_abs i4 vacker_2 i4 vacker_2 i1 vacker_0 i1 vacker_0 N i) (arrayassign_21_5_192_abs i4 vacker_2 i4 vacker_2 i1 vacker_0 i2 vacker_1 N i) (arrayassign_21_5_192_abs i4 vacker_2 i4 vacker_2 i2 vacker_1 i1 vacker_0 N i) (arrayassign_21_5_192_abs i4 vacker_2 i4 vacker_2 i2 vacker_1 i2 vacker_1 N i)) (assign_22_5_201_abs i4 vacker_2 i3 vacker_11 i2 (ite (= i i2) vacker_01 vacker_1) i1 (ite (= i i1) vacker_01 vacker_0) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_22_5_201_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_22_5_201_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_22_5_201_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_22_5_201_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_22_5_201_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_22_5_201_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_22_5_201_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_22_5_201_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_22_5_201_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_22_5_201_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_22_5_201_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_22_5_201_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_22_5_201_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_22_5_201_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_22_5_201_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_22_5_201_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_19_1_204_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_25_1_210_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_25_1_210_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_25_1_210_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_25_1_210_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_25_1_210_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_25_1_210_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_25_1_210_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_25_1_210_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_25_1_210_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_25_1_210_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_25_1_210_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_25_1_210_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_25_1_210_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_25_1_210_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_25_1_210_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_25_1_210_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_26_1_290_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_26_1_290_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_26_1_290_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_26_1_290_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_26_1_290_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_26_1_290_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_26_1_290_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_26_1_290_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_26_1_290_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_26_1_290_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_26_1_290_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_26_1_290_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_26_1_290_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_26_1_290_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_26_1_290_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_26_1_290_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_26_1_290_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (< i N)) (assert_28_5_278_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_26_1_290_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_26_1_290_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_26_1_290_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_26_1_290_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_26_1_290_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_26_1_290_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_26_1_290_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_26_1_290_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_26_1_290_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_26_1_290_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_26_1_290_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_26_1_290_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_26_1_290_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_26_1_290_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_26_1_290_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_26_1_290_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (not (< i N))) (end_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int)) (=> (assert_28_5_278_abs (- (- N i) 1) acker (- (- N i) 1) acker i acker1 i acker1 N i) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assert_28_5_278_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_28_5_278_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assert_28_5_278_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assert_28_5_278_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assert_28_5_278_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assert_28_5_278_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assert_28_5_278_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assert_28_5_278_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assert_28_5_278_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_28_5_278_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assert_28_5_278_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assert_28_5_278_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assert_28_5_278_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assert_28_5_278_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assert_28_5_278_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assert_28_5_278_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (assign_29_5_287_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_29_5_287_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_29_5_287_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_29_5_287_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_29_5_287_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_29_5_287_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_29_5_287_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_29_5_287_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_29_5_287_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_29_5_287_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_29_5_287_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_29_5_287_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_29_5_287_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_29_5_287_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_29_5_287_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_29_5_287_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_29_5_287_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_26_1_290_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N (+ i 1)))))
(check-sat)
