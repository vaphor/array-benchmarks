
(set-logic HORN)
(declare-rel assign_22_5_199_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_21_5_190_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_19_1_202_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_18_1_131_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_15_5_122_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_14_5_113_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_12_1_125_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_11_1_58_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_10_1_52_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (start_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i)))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (start_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (start_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (start_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (start_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (start_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (start_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (start_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (start_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (start_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (start_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (start_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (start_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (start_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (start_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (start_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (start_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i)) (assign_10_1_52_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (assign_10_1_52_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_10_1_52_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_10_1_52_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_10_1_52_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_10_1_52_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_10_1_52_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_10_1_52_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_10_1_52_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (assign_10_1_52_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_10_1_52_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_10_1_52_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_10_1_52_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_10_1_52_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_10_1_52_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_10_1_52_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_10_1_52_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i)) (assign_11_1_58_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (assign_11_1_58_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_11_1_58_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_11_1_58_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_11_1_58_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_11_1_58_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_11_1_58_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_11_1_58_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_11_1_58_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (assign_11_1_58_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_11_1_58_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_11_1_58_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_11_1_58_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_11_1_58_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_11_1_58_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_11_1_58_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_11_1_58_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i)) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_12_1_125_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (while_12_1_125_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (while_12_1_125_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (while_12_1_125_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (while_12_1_125_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (while_12_1_125_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (while_12_1_125_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (while_12_1_125_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (while_12_1_125_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (while_12_1_125_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (while_12_1_125_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (while_12_1_125_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (< i N)) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_12_1_125_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (while_12_1_125_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (while_12_1_125_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (while_12_1_125_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (while_12_1_125_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (while_12_1_125_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (while_12_1_125_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (while_12_1_125_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (while_12_1_125_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (while_12_1_125_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (while_12_1_125_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (while_12_1_125_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (not (< i N))) (assign_18_1_131_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i (select a i) i (select a i) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i (select a i) i1 (select a i1) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i (select a i) i2 (select a i2) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i (select a i) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i (select a i) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i (select a i) i (select a i) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i (select a i) i1 (select a i1) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i (select a i) i2 (select a i2) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i (select a i) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i (select a i) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (arrayassign_14_5_113_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i (select a i) i (select a i) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i (select a i) i1 (select a i1) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i (select a i) i2 (select a i2) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i (select a i) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i (select a i) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i (select a i) i (select a i) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i (select a i) i1 (select a i1) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i (select a i) i2 (select a i2) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i (select a i) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i (select a i) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (arrayassign_14_5_113_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i)) (assign_15_5_122_abs i4 (ite (= i i4) (select a i) (select a_copy i4)) i3 (ite (= i i3) (select a i) (select a_copy i3)) i2 (select a i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (assign_15_5_122_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_15_5_122_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_15_5_122_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_15_5_122_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_15_5_122_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_15_5_122_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_15_5_122_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_15_5_122_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (assign_15_5_122_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_15_5_122_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_15_5_122_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_15_5_122_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_15_5_122_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_15_5_122_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_15_5_122_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_15_5_122_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i)) (while_12_1_125_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (assign_18_1_131_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_18_1_131_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_18_1_131_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_18_1_131_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_18_1_131_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_18_1_131_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_18_1_131_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_18_1_131_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (assign_18_1_131_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_18_1_131_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_18_1_131_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_18_1_131_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_18_1_131_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_18_1_131_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_18_1_131_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_18_1_131_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i)) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_19_1_202_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (while_19_1_202_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (while_19_1_202_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (while_19_1_202_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (while_19_1_202_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (while_19_1_202_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (while_19_1_202_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (while_19_1_202_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (while_19_1_202_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (while_19_1_202_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (while_19_1_202_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (while_19_1_202_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (< i N)) (assert_21_5_190_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (while_19_1_202_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (while_19_1_202_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (while_19_1_202_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (while_19_1_202_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (while_19_1_202_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (while_19_1_202_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (while_19_1_202_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (while_19_1_202_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (while_19_1_202_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (while_19_1_202_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (while_19_1_202_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (while_19_1_202_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (not (< i N))) (end_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i))))
;
;(assert)  (a[i]==a_copy[i])
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (assert_21_5_190_abs i (select a_copy i) i (select a_copy i) i (select a i) i (select a i) N i) (= (select a i) (select a_copy i)))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (assert_21_5_190_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assert_21_5_190_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assert_21_5_190_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assert_21_5_190_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assert_21_5_190_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assert_21_5_190_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assert_21_5_190_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assert_21_5_190_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (assert_21_5_190_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assert_21_5_190_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assert_21_5_190_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assert_21_5_190_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assert_21_5_190_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assert_21_5_190_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assert_21_5_190_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assert_21_5_190_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i)) (assign_22_5_199_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (assign_22_5_199_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_22_5_199_abs i3 (select a_copy i3) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_22_5_199_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_22_5_199_abs i3 (select a_copy i3) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_22_5_199_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_22_5_199_abs i3 (select a_copy i3) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_22_5_199_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_22_5_199_abs i3 (select a_copy i3) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i) (assign_22_5_199_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i1 (select a i1) N i) (assign_22_5_199_abs i4 (select a_copy i4) i3 (select a_copy i3) i1 (select a i1) i2 (select a i2) N i) (assign_22_5_199_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N i) (assign_22_5_199_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i2 (select a i2) N i) (assign_22_5_199_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i1 (select a i1) N i) (assign_22_5_199_abs i4 (select a_copy i4) i4 (select a_copy i4) i1 (select a i1) i2 (select a i2) N i) (assign_22_5_199_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i1 (select a i1) N i) (assign_22_5_199_abs i4 (select a_copy i4) i4 (select a_copy i4) i2 (select a i2) i2 (select a i2) N i)) (while_19_1_202_abs i4 (select a_copy i4) i3 (select a_copy i3) i2 (select a i2) i1 (select a i1) N (+ i 1)))))
(check-sat)
