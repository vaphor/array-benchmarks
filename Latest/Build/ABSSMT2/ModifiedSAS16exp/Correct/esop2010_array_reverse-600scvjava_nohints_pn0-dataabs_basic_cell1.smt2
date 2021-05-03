
(set-logic HORN)
(declare-rel assign_29_5_287_abs (Int Int Int Int Int Int))
(declare-rel assert_28_5_278_abs (Int Int Int Int Int Int))
(declare-rel while_26_1_290_abs (Int Int Int Int Int Int))
(declare-rel assign_25_1_210_abs (Int Int Int Int Int Int))
(declare-rel assign_22_5_201_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_21_5_192_abs (Int Int Int Int Int Int))
(declare-rel while_19_1_204_abs (Int Int Int Int Int Int))
(declare-rel assign_18_1_128_abs (Int Int Int Int Int Int))
(declare-rel assign_15_5_119_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_14_5_110_abs (Int Int Int Int Int Int))
(declare-rel while_12_1_122_abs (Int Int Int Int Int Int))
(declare-rel assign_11_8_58_abs (Int Int Int Int Int Int))
(declare-rel assign_9_1_52_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 15
;Number of variables = 4
;Number of clauses = 19
;
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a_copy i2) i1 (select a i1) N i)))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_9_1_52_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_9_1_52_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_11_8_58_abs i2 (select a_copy i2) i1 (select a i1) rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_11_8_58_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_12_1_122_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_122_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (arrayassign_14_5_110_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_122_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (assign_18_1_128_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_14_5_110_abs i2 (select a_copy i2) i (select a i) N i) (arrayassign_14_5_110_abs i2 (select a_copy i2) i1 (select a i1) N i)) (assign_15_5_119_abs i2 (ite (= i i2) (select a i) (select a_copy i2)) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_15_5_119_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_12_1_122_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_18_1_128_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_19_1_204_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_19_1_204_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (arrayassign_21_5_192_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_19_1_204_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (assign_25_1_210_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_21_5_192_abs (- (- N i) 1) (select a_copy (- (- N i) 1)) i1 (select a i1) N i) (arrayassign_21_5_192_abs i2 (select a_copy i2) i1 (select a i1) N i)) (assign_22_5_201_abs i2 (select a_copy i2) i1 (ite (= i i1) (select a_copy (- (- N i) 1)) (select a i1)) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_22_5_201_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_19_1_204_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_25_1_210_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_26_1_290_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_26_1_290_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (assert_28_5_278_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_26_1_290_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (end_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (assert_28_5_278_abs (- (- N i) 1) (select a_copy (- (- N i) 1)) i (select a i) N i) (= (select a i) (select a_copy (- (- N i) 1))))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_28_5_278_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_29_5_287_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_29_5_287_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_26_1_290_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
(check-sat)
