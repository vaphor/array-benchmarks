
(set-logic HORN)
(declare-rel assign_282_26_10_abs (Int Int Int Int Int Int))
(declare-rel assert_273_25_3_abs (Int Int Int Int Int Int))
(declare-rel while_285_22_8_abs (Int Int Int Int Int Int))
(declare-rel assign_187_20_8_abs (Int Int Int Int Int Int))
(declare-rel assign_151_18_1_abs (Int Int Int Int Int Int))
(declare-rel assign_112_15_5_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_103_14_5_abs (Int Int Int Int Int Int))
(declare-rel while_115_12_1_abs (Int Int Int Int Int Int))
(declare-rel assign_46_11_1_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker l i)))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 l i) (assign_46_11_1_abs i2 acker i1 acker1 l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_46_11_1_abs i2 acker i1 acker1 l i) (while_115_12_1_abs i2 acker i1 acker1 l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (acker1 Int) (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_115_12_1_abs i2 acker1 i vacker_0 l i) (while_115_12_1_abs i2 acker1 i1 vacker_1 l i) (not (= 0 vacker_0))) (arrayassign_103_14_5_abs i2 acker1 i1 vacker_1 l i))))
(assert (forall ( (acker1 Int) (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_115_12_1_abs i2 acker1 i vacker_0 l i) (while_115_12_1_abs i2 acker1 i1 vacker_1 l i) (not (not (= 0 vacker_0)))) (assign_151_18_1_abs i2 acker1 i1 vacker_1 l i))))
;
;(aassign) dest[i] := source[i]
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_103_14_5_abs i2 acker i vacker_0 l i) (arrayassign_103_14_5_abs i2 acker i1 vacker_1 l i)) (assign_112_15_5_abs i2 (ite (= i i2) vacker_0 acker) i1 vacker_1 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_112_15_5_abs i2 acker i1 acker1 l i) (while_115_12_1_abs i2 acker i1 acker1 l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_151_18_1_abs i2 acker i1 acker1 l i) (assign_187_20_8_abs i2 acker i1 acker1 i i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_187_20_8_abs i2 acker i1 acker1 l i) (while_285_22_8_abs i2 acker i1 acker1 l 0))))
;
;(while)   while((i<l))
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_285_22_8_abs i2 acker1 i1 acker l i) (< i l)) (assert_273_25_3_abs i2 acker1 i1 acker l i))))
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_285_22_8_abs i2 acker1 i1 acker l i) (not (< i l))) (end_abs i2 acker1 i1 acker l i))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int)) (=> (assert_273_25_3_abs i acker i acker1 l i) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_273_25_3_abs i2 acker i1 acker1 l i) (assign_282_26_10_abs i2 acker i1 acker1 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_282_26_10_abs i2 acker i1 acker1 l i) (while_285_22_8_abs i2 acker i1 acker1 l (+ i 1)))))
(check-sat)
