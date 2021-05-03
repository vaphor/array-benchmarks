
(set-logic HORN)
(declare-rel assign_193_25_5_abs (Int Int Int Int Int Int))
(declare-rel assert_184_24_5_abs (Int Int Int Int Int Int))
(declare-rel while_196_22_1_abs (Int Int Int Int Int Int))
(declare-rel assign_128_21_1_abs (Int Int Int Int Int Int))
(declare-rel assign_119_18_5_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_110_17_5_abs (Int Int Int Int Int Int))
(declare-rel while_122_15_1_abs (Int Int Int Int Int Int))
(declare-rel assign_58_14_1_abs (Int Int Int Int Int Int))
(declare-rel assign_52_12_1_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a_copy i2) i1 (select a i1) N i)))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_52_12_1_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_52_12_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_58_14_1_abs i2 (select a_copy i2) i1 (select a i1) rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_58_14_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_122_15_1_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_122_15_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (arrayassign_110_17_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_122_15_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (assign_128_21_1_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_110_17_5_abs i2 (select a_copy i2) i (select a i) N i) (arrayassign_110_17_5_abs i2 (select a_copy i2) i1 (select a i1) N i)) (assign_119_18_5_abs i2 (ite (= i i2) (select a i) (select a_copy i2)) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_119_18_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_122_15_1_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_128_21_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_196_22_1_abs i2 (select a_copy i2) i1 (select a i1) N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_196_22_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (< i N)) (assert_184_24_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_196_22_1_abs i2 (select a_copy i2) i1 (select a i1) N i) (not (< i N))) (end_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assert)  (a_copy[i]==a[i])
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (assert_184_24_5_abs i (select a_copy i) i (select a i) N i) (= (select a i) (select a_copy i)))))
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_184_24_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (assign_193_25_5_abs i2 (select a_copy i2) i1 (select a i1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_193_25_5_abs i2 (select a_copy i2) i1 (select a i1) N i) (while_196_22_1_abs i2 (select a_copy i2) i1 (select a i1) N (+ i 1)))))
(check-sat)
