
(set-logic HORN)
(declare-rel assign_287_29_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_278_28_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_290_26_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_210_25_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_201_22_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_192_21_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_204_19_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_128_18_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_119_15_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_110_14_5_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_122_12_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_58_11_8_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_52_9_1_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 15
;Number of variables = 4
;Number of clauses = 19
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11))) (start_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (start_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (start_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (start_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (start_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (start_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (start_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (start_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (start_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (start_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (start_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (start_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (start_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (start_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (start_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (start_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (start_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (assign_52_9_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_52_9_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_52_9_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_52_9_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_52_9_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_52_9_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_52_9_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_52_9_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_52_9_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_52_9_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_52_9_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_52_9_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_52_9_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_52_9_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_52_9_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_52_9_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_52_9_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (assign_58_11_8_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_58_11_8_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_58_11_8_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_58_11_8_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_58_11_8_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_58_11_8_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_58_11_8_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_58_11_8_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_58_11_8_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_58_11_8_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_58_11_8_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_58_11_8_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_58_11_8_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_58_11_8_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_58_11_8_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_58_11_8_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_58_11_8_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_122_12_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_122_12_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_122_12_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_122_12_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_122_12_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_122_12_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_122_12_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_122_12_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_122_12_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_122_12_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_122_12_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_122_12_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_122_12_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_122_12_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_122_12_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_122_12_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_122_12_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (< i N)) (arrayassign_110_14_5_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_122_12_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_122_12_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_122_12_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_122_12_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_122_12_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_122_12_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_122_12_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_122_12_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_122_12_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_122_12_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_122_12_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_122_12_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_122_12_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_122_12_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_122_12_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_122_12_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (not (< i N))) (assign_128_18_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (=> (= i3 i4) (= vacker_01 vacker_11)) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i vacker_0 i vacker_0 N i) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i vacker_0 i1 vacker_1 N i) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i vacker_0 i2 vacker_2 N i) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i vacker_0 N i) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i1 vacker_1 N i) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_1 i2 vacker_2 N i) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i vacker_0 N i) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i1 vacker_1 N i) (arrayassign_110_14_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_2 i2 vacker_2 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i vacker_0 i vacker_0 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i vacker_0 i1 vacker_1 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i vacker_0 i2 vacker_2 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i vacker_0 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i1 vacker_1 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_1 i2 vacker_2 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i vacker_0 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i1 vacker_1 N i) (arrayassign_110_14_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_2 i2 vacker_2 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i vacker_0 i vacker_0 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i vacker_0 i1 vacker_1 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i vacker_0 i2 vacker_2 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i vacker_0 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i1 vacker_1 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_1 i2 vacker_2 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i vacker_0 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i1 vacker_1 N i) (arrayassign_110_14_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_2 i2 vacker_2 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i vacker_0 i vacker_0 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i vacker_0 i1 vacker_1 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i vacker_0 i2 vacker_2 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i vacker_0 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i1 vacker_1 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_1 i2 vacker_2 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i vacker_0 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i1 vacker_1 N i) (arrayassign_110_14_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_2 i2 vacker_2 N i)) (assign_119_15_5_abs i4 (ite (= i i4) vacker_0 vacker_11) i3 (ite (= i i3) vacker_0 vacker_01) i2 vacker_2 i1 vacker_1 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_119_15_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_119_15_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_119_15_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_119_15_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_119_15_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_119_15_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_119_15_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_119_15_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_119_15_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_119_15_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_119_15_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_119_15_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_119_15_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_119_15_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_119_15_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_119_15_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_122_12_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_128_18_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_128_18_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_128_18_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_128_18_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_128_18_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_128_18_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_128_18_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_128_18_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_128_18_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_128_18_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_128_18_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_128_18_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_128_18_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_128_18_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_128_18_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_128_18_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_204_19_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_204_19_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_204_19_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_204_19_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_204_19_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_204_19_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_204_19_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_204_19_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_204_19_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_204_19_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_204_19_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_204_19_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_204_19_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_204_19_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_204_19_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_204_19_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_204_19_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (< i N)) (arrayassign_192_21_5_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_204_19_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_204_19_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_204_19_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_204_19_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_204_19_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_204_19_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_204_19_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_204_19_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_204_19_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_204_19_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_204_19_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_204_19_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_204_19_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_204_19_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_204_19_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_204_19_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (not (< i N))) (assign_210_25_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_2 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= (- (- N i) 1) i3) (= vacker_01 vacker_11)) (=> (= (- (- N i) 1) i4) (= vacker_01 vacker_2)) (=> (= i3 i4) (= vacker_11 vacker_2)) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 (- (- N i) 1) vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 (- (- N i) 1) vacker_01 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 (- (- N i) 1) vacker_01 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 (- (- N i) 1) vacker_01 i2 vacker_1 i2 vacker_1 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 i3 vacker_11 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 i3 vacker_11 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 i3 vacker_11 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 i3 vacker_11 i2 vacker_1 i2 vacker_1 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 i4 vacker_2 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 i4 vacker_2 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 i4 vacker_2 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_01 i4 vacker_2 i2 vacker_1 i2 vacker_1 N i) (arrayassign_192_21_5_abs i3 vacker_11 (- (- N i) 1) vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs i3 vacker_11 (- (- N i) 1) vacker_01 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs i3 vacker_11 (- (- N i) 1) vacker_01 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs i3 vacker_11 (- (- N i) 1) vacker_01 i2 vacker_1 i2 vacker_1 N i) (arrayassign_192_21_5_abs i3 vacker_11 i3 vacker_11 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs i3 vacker_11 i3 vacker_11 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs i3 vacker_11 i3 vacker_11 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs i3 vacker_11 i3 vacker_11 i2 vacker_1 i2 vacker_1 N i) (arrayassign_192_21_5_abs i3 vacker_11 i4 vacker_2 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs i3 vacker_11 i4 vacker_2 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs i3 vacker_11 i4 vacker_2 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs i3 vacker_11 i4 vacker_2 i2 vacker_1 i2 vacker_1 N i) (arrayassign_192_21_5_abs i4 vacker_2 (- (- N i) 1) vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs i4 vacker_2 (- (- N i) 1) vacker_01 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs i4 vacker_2 (- (- N i) 1) vacker_01 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs i4 vacker_2 (- (- N i) 1) vacker_01 i2 vacker_1 i2 vacker_1 N i) (arrayassign_192_21_5_abs i4 vacker_2 i3 vacker_11 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs i4 vacker_2 i3 vacker_11 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs i4 vacker_2 i3 vacker_11 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs i4 vacker_2 i3 vacker_11 i2 vacker_1 i2 vacker_1 N i) (arrayassign_192_21_5_abs i4 vacker_2 i4 vacker_2 i1 vacker_0 i1 vacker_0 N i) (arrayassign_192_21_5_abs i4 vacker_2 i4 vacker_2 i1 vacker_0 i2 vacker_1 N i) (arrayassign_192_21_5_abs i4 vacker_2 i4 vacker_2 i2 vacker_1 i1 vacker_0 N i) (arrayassign_192_21_5_abs i4 vacker_2 i4 vacker_2 i2 vacker_1 i2 vacker_1 N i)) (assign_201_22_5_abs i4 vacker_2 i3 vacker_11 i2 (ite (= i i2) vacker_01 vacker_1) i1 (ite (= i i1) vacker_01 vacker_0) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_201_22_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_201_22_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_201_22_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_201_22_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_201_22_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_201_22_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_201_22_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_201_22_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_201_22_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_201_22_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_201_22_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_201_22_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_201_22_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_201_22_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_201_22_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_201_22_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_204_19_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_210_25_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_210_25_1_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_210_25_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_210_25_1_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_210_25_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_210_25_1_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_210_25_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_210_25_1_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_210_25_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_210_25_1_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_210_25_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_210_25_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_210_25_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_210_25_1_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_210_25_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_210_25_1_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_290_26_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_290_26_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_290_26_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_290_26_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_290_26_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_290_26_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_290_26_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_290_26_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_290_26_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_290_26_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_290_26_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_290_26_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_290_26_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_290_26_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_290_26_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_290_26_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_290_26_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (< i N)) (assert_278_28_5_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_290_26_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_290_26_1_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_290_26_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_290_26_1_abs i3 vacker_0 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_290_26_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_290_26_1_abs i3 vacker_0 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_290_26_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_290_26_1_abs i3 vacker_0 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (while_290_26_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_290_26_1_abs i4 vacker_1 i3 vacker_0 i1 vacker_01 i2 vacker_11 N i) (while_290_26_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i) (while_290_26_1_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i2 vacker_11 N i) (while_290_26_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i1 vacker_01 N i) (while_290_26_1_abs i4 vacker_1 i4 vacker_1 i1 vacker_01 i2 vacker_11 N i) (while_290_26_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i1 vacker_01 N i) (while_290_26_1_abs i4 vacker_1 i4 vacker_1 i2 vacker_11 i2 vacker_11 N i) (not (< i N))) (end_abs i4 vacker_1 i3 vacker_0 i2 vacker_11 i1 vacker_01 N i))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int)) (=> (assert_278_28_5_abs (- (- N i) 1) acker (- (- N i) 1) acker i acker1 i acker1 N i) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assert_278_28_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_278_28_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assert_278_28_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assert_278_28_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assert_278_28_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assert_278_28_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assert_278_28_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assert_278_28_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assert_278_28_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_278_28_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assert_278_28_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assert_278_28_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assert_278_28_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assert_278_28_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assert_278_28_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assert_278_28_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (assign_287_29_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_287_29_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_287_29_5_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_287_29_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_287_29_5_abs i3 vacker_01 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_287_29_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_287_29_5_abs i3 vacker_01 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_287_29_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_287_29_5_abs i3 vacker_01 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i) (assign_287_29_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_287_29_5_abs i4 vacker_11 i3 vacker_01 i1 vacker_0 i2 vacker_1 N i) (assign_287_29_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N i) (assign_287_29_5_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i2 vacker_1 N i) (assign_287_29_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i1 vacker_0 N i) (assign_287_29_5_abs i4 vacker_11 i4 vacker_11 i1 vacker_0 i2 vacker_1 N i) (assign_287_29_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i1 vacker_0 N i) (assign_287_29_5_abs i4 vacker_11 i4 vacker_11 i2 vacker_1 i2 vacker_1 N i)) (while_290_26_1_abs i4 vacker_11 i3 vacker_01 i2 vacker_1 i1 vacker_0 N (+ i 1)))))
(check-sat)
