
(set-logic HORN)
(declare-rel assign_287_29_5_abs (Int Int Int Int Int Int))
(declare-rel assert_278_28_5_abs (Int Int Int Int Int Int))
(declare-rel while_290_26_1_abs (Int Int Int Int Int Int))
(declare-rel assign_210_25_1_abs (Int Int Int Int Int Int))
(declare-rel assign_201_22_5_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_192_21_5_abs (Int Int Int Int Int Int))
(declare-rel while_204_19_1_abs (Int Int Int Int Int Int))
(declare-rel assign_128_18_1_abs (Int Int Int Int Int Int))
(declare-rel assign_119_15_5_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_110_14_5_abs (Int Int Int Int Int Int))
(declare-rel while_122_12_1_abs (Int Int Int Int Int Int))
(declare-rel assign_58_11_8_abs (Int Int Int Int Int Int))
(declare-rel assign_52_9_1_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 15
;Number of variables = 4
;Number of clauses = 19
;
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a_copy i2) i1 (select a i1) N i)))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_52_9_1_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_52_9_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_58_11_8_abs i2 (select a_copy i2) i1 (select a i1) rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_58_11_8_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_122_12_1_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_122_12_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (arrayassign_110_14_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_122_12_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (assign_128_18_1_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_110_14_5_abs i2 (select a_copy i2) i (select a i) N i) (arrayassign_110_14_5_abs i2 (select a_copy i2) i1 (select a i1) N i)) (assign_119_15_5_abs i2 (ite (= i i2) (select a i) (select a_copy i2)) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_119_15_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_122_12_1_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_128_18_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_204_19_1_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_204_19_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (arrayassign_192_21_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_204_19_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (assign_210_25_1_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_192_21_5_abs (- (- N i) 1) (select a_copy (- (- N i) 1)) i1 (select a i1) N i) (arrayassign_192_21_5_abs i2 (select a_copy i2) i1 (select a i1) N i)) (assign_201_22_5_abs i2 (select a_copy i2) i1 (ite (= i i1) (select a_copy (- (- N i) 1)) (select a i1)) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_201_22_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_204_19_1_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_210_25_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_290_26_1_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_290_26_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (assert_278_28_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_290_26_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (end_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (assert_278_28_5_abs (- (- N i) 1) (select a_copy (- (- N i) 1)) i (select a i) N i) (= (select a i) (select a_copy (- (- N i) 1))))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_278_28_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_287_29_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_287_29_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_290_26_1_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
(check-sat)
