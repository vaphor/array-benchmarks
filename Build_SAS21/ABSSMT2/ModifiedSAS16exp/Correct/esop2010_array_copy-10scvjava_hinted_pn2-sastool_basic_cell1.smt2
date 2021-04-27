
(set-logic HORN)
(declare-rel assign_199_22_5_abs (Int Int Int Int Int Int))
(declare-rel assert_190_21_5_abs (Int Int Int Int Int Int))
(declare-rel assert_172_20_12_abs (Int Int Int Int Int Int))
(declare-rel while_202_19_1_abs (Int Int Int Int Int Int))
(declare-rel assign_131_18_1_abs (Int Int Int Int Int Int))
(declare-rel assign_122_15_5_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_113_14_5_abs (Int Int Int Int Int Int))
(declare-rel assert_99_13_12_abs (Int Int Int Int Int Int))
(declare-rel while_125_12_1_abs (Int Int Int Int Int Int))
(declare-rel assign_58_11_1_abs (Int Int Int Int Int Int))
(declare-rel assign_52_10_1_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 13
;Number of variables = 4
;Number of clauses = 18
;
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a_copy i2) i1 (select a i1) N i)))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_52_10_1_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_52_10_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_58_11_1_abs i2 (select a_copy i2) i1 (select a i1) rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_58_11_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_125_12_1_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_125_12_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (assert_99_13_12_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_125_12_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (assign_131_18_1_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==a_copy[k]))
(assert (forall ( (k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (and (assert_99_13_12_abs k (select a_copy k) k (select a k) N i) (<= 0 k) (< k i)) (= (select a k) (select a_copy k)))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_99_13_12_abs i2 (select a_copy i2) i1 (select a i1) N i) (arrayassign_113_14_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_113_14_5_abs i2 (select a_copy i2) i (select a i) N i) (arrayassign_113_14_5_abs i2 (select a_copy i2) i1 (select a i1) N i)) (assign_122_15_5_abs i2 (ite (= i i2) (select a i) (select a_copy i2)) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_122_15_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_125_12_1_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_131_18_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_202_19_1_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_202_19_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (assert_172_20_12_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_202_19_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (end_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==a_copy[k]))
(assert (forall ( (k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (and (assert_172_20_12_abs k (select a_copy k) k (select a k) N i) (<= 0 k) (< k N)) (= (select a k) (select a_copy k)))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_172_20_12_abs i2 (select a_copy i2) i1 (select a i1) N i) (assert_190_21_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assert)  (a[i]==a_copy[i])
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (assert_190_21_5_abs i (select a_copy i) i (select a i) N i) (= (select a i) (select a_copy i)))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_190_21_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_199_22_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_199_22_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_202_19_1_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
(check-sat)
