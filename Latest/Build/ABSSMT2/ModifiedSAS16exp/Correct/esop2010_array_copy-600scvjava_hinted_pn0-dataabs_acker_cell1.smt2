
(set-logic HORN)
(declare-rel assign_22_5_199_abs (Int Int Int Int Int Int))
(declare-rel assert_21_5_190_abs (Int Int Int Int Int Int))
(declare-rel assert_20_12_172_abs (Int Int Int Int Int Int))
(declare-rel while_19_1_202_abs (Int Int Int Int Int Int))
(declare-rel assign_18_1_131_abs (Int Int Int Int Int Int))
(declare-rel assign_15_5_122_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_14_5_113_abs (Int Int Int Int Int Int))
(declare-rel assert_13_12_99_abs (Int Int Int Int Int Int))
(declare-rel while_12_1_125_abs (Int Int Int Int Int Int))
(declare-rel assign_11_1_58_abs (Int Int Int Int Int Int))
(declare-rel assign_10_1_52_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 13
;Number of variables = 4
;Number of clauses = 18
;
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker N i)))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 N i) (assign_10_1_52_abs i2 acker i1 acker1 N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_10_1_52_abs i2 acker i1 acker1 N i) (assign_11_1_58_abs i2 acker i1 acker1 rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_11_1_58_abs i2 acker i1 acker1 N i) (while_12_1_125_abs i2 acker i1 acker1 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_125_abs i2 acker1 i1 acker N i) (< i N)) (assert_13_12_99_abs i2 acker1 i1 acker N i))))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_125_abs i2 acker1 i1 acker N i) (not (< i N))) (assign_18_1_131_abs i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==a_copy[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_13_12_99_abs k acker k acker1 N i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_13_12_99_abs i2 acker i1 acker1 N i) (arrayassign_14_5_113_abs i2 acker i1 acker1 N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_14_5_113_abs i2 acker i vacker_0 N i) (arrayassign_14_5_113_abs i2 acker i1 vacker_1 N i)) (assign_15_5_122_abs i2 (ite (= i i2) vacker_0 acker) i1 vacker_1 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_15_5_122_abs i2 acker i1 acker1 N i) (while_12_1_125_abs i2 acker i1 acker1 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_18_1_131_abs i2 acker i1 acker1 N i) (while_19_1_202_abs i2 acker i1 acker1 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_19_1_202_abs i2 acker1 i1 acker N i) (< i N)) (assert_20_12_172_abs i2 acker1 i1 acker N i))))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_19_1_202_abs i2 acker1 i1 acker N i) (not (< i N))) (end_abs i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==a_copy[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_20_12_172_abs k acker k acker1 N i) (<= 0 k) (< k N)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_20_12_172_abs i2 acker i1 acker1 N i) (assert_21_5_190_abs i2 acker i1 acker1 N i))))
;
;(assert)  (a[i]==a_copy[i])
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int)) (=> (assert_21_5_190_abs i acker i acker1 N i) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_21_5_190_abs i2 acker i1 acker1 N i) (assign_22_5_199_abs i2 acker i1 acker1 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_22_5_199_abs i2 acker i1 acker1 N i) (while_19_1_202_abs i2 acker i1 acker1 N (+ i 1)))))
(check-sat)
