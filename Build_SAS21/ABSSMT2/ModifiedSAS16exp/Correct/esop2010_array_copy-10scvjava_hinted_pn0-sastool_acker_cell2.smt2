
(set-logic HORN)
(declare-rel assign_22_5_199_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_21_5_190_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_20_12_172_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_19_1_202_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_18_1_131_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_15_5_122_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_14_5_113_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assert_13_12_99_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel while_12_1_125_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_11_1_58_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel assign_10_1_52_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 13
;Number of variables = 4
;Number of clauses = 18
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11))) (start_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i))))
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (start_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (start_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (start_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (start_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (start_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (start_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (start_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (start_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (start_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (start_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (start_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (start_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (start_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (start_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (start_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (start_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (assign_10_1_52_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_10_1_52_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_10_1_52_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_10_1_52_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_10_1_52_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_10_1_52_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_10_1_52_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_10_1_52_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_10_1_52_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_10_1_52_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_10_1_52_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_10_1_52_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_10_1_52_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_10_1_52_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_10_1_52_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_10_1_52_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_10_1_52_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (assign_11_1_58_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_11_1_58_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_11_1_58_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_11_1_58_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_11_1_58_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_11_1_58_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_11_1_58_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_11_1_58_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_11_1_58_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_11_1_58_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_11_1_58_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_11_1_58_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_11_1_58_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_11_1_58_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_11_1_58_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_11_1_58_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_11_1_58_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (while_12_1_125_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_12_1_125_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i3 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i4 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i4 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i4 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i4 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i4 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i4 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i4 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i4 vacker_0 i2 vacker_01 i2 vacker_01 N i) (< i N)) (assert_13_12_99_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_12_1_125_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i3 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i4 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i4 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i4 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i3 vacker_0 i4 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i4 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i4 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i4 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_12_1_125_abs i4 vacker_0 i4 vacker_0 i2 vacker_01 i2 vacker_01 N i) (not (< i N))) (assign_18_1_131_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==a_copy[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_13_12_99_abs k acker k acker k acker1 k acker1 N i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assert_13_12_99_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_13_12_99_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_13_12_99_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_13_12_99_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_13_12_99_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_13_12_99_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_13_12_99_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_13_12_99_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_13_12_99_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_13_12_99_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_13_12_99_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_13_12_99_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_13_12_99_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_13_12_99_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_13_12_99_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_13_12_99_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (=> (= i3 i4) (= vacker_01 vacker_11)) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (arrayassign_14_5_113_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (assign_15_5_122_abs i4 (ite (= i i4) vacker_0 vacker_01) i3 (ite (= i i3) vacker_0 vacker_01) i2 vacker_0 i1 vacker_0 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_15_5_122_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_15_5_122_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_15_5_122_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_15_5_122_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_15_5_122_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_15_5_122_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_15_5_122_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_15_5_122_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_15_5_122_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_15_5_122_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_15_5_122_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_15_5_122_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_15_5_122_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_15_5_122_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_15_5_122_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_15_5_122_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (while_12_1_125_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_18_1_131_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_18_1_131_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_18_1_131_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_18_1_131_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_18_1_131_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_18_1_131_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_18_1_131_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_18_1_131_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_18_1_131_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_18_1_131_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_18_1_131_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_18_1_131_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_18_1_131_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_18_1_131_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_18_1_131_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_18_1_131_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (while_19_1_202_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_19_1_202_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i3 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i4 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i4 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i4 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i4 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i4 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i4 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i4 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i4 vacker_0 i2 vacker_01 i2 vacker_01 N i) (< i N)) (assert_20_12_172_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (N Int) (i Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i3 i4) (= vacker_0 vacker_1)) (=> (= i1 i2) (= vacker_01 vacker_11)) (while_19_1_202_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i3 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i4 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i4 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i4 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i3 vacker_0 i4 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i3 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i3 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i4 vacker_0 i1 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i4 vacker_0 i1 vacker_01 i2 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i4 vacker_0 i2 vacker_01 i1 vacker_01 N i) (while_19_1_202_abs i4 vacker_0 i4 vacker_0 i2 vacker_01 i2 vacker_01 N i) (not (< i N))) (end_abs i4 vacker_0 i3 vacker_0 i2 vacker_01 i1 vacker_01 N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==a_copy[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_20_12_172_abs k acker k acker k acker1 k acker1 N i) (<= 0 k) (< k N)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assert_20_12_172_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_20_12_172_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_20_12_172_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_20_12_172_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_20_12_172_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_20_12_172_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_20_12_172_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_20_12_172_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_20_12_172_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_20_12_172_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_20_12_172_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_20_12_172_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_20_12_172_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_20_12_172_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_20_12_172_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_20_12_172_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (assert_21_5_190_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i))))
;
;(assert)  (a[i]==a_copy[i])
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int)) (=> (assert_21_5_190_abs i acker i acker i acker1 i acker1 N i) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assert_21_5_190_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_21_5_190_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_21_5_190_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_21_5_190_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_21_5_190_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_21_5_190_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_21_5_190_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_21_5_190_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_21_5_190_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_21_5_190_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_21_5_190_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_21_5_190_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assert_21_5_190_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assert_21_5_190_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assert_21_5_190_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assert_21_5_190_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (assign_22_5_199_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (vacker_11 Int) (vacker_01 Int) (i1 Int) (i2 Int) (i3 Int) (i4 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (=> (= i3 i4) (= vacker_01 vacker_11)) (assign_22_5_199_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_22_5_199_abs i3 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_22_5_199_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_22_5_199_abs i3 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_22_5_199_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_22_5_199_abs i3 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_22_5_199_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_22_5_199_abs i3 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_22_5_199_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_22_5_199_abs i4 vacker_01 i3 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_22_5_199_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_22_5_199_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i2 vacker_0 N i) (assign_22_5_199_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i1 vacker_0 N i) (assign_22_5_199_abs i4 vacker_01 i4 vacker_01 i1 vacker_0 i2 vacker_0 N i) (assign_22_5_199_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i1 vacker_0 N i) (assign_22_5_199_abs i4 vacker_01 i4 vacker_01 i2 vacker_0 i2 vacker_0 N i)) (while_19_1_202_abs i4 vacker_01 i3 vacker_01 i2 vacker_0 i1 vacker_0 N (+ i 1)))))
(check-sat)
