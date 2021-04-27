
(set-logic HORN)
(declare-rel assign_26_10_282_abs (Int Int Int Int Int Int))
(declare-rel assert_25_3_273_abs (Int Int Int Int Int Int))
(declare-rel while_22_8_285_abs (Int Int Int Int Int Int))
(declare-rel assign_20_8_187_abs (Int Int Int Int Int Int))
(declare-rel assign_18_1_151_abs (Int Int Int Int Int Int))
(declare-rel assign_15_5_112_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_14_5_103_abs (Int Int Int Int Int Int))
(declare-rel while_12_1_115_abs (Int Int Int Int Int Int))
(declare-rel assign_11_1_46_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select dest i2) i1 (select source i1) l i)))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select dest i2) i1 (select source i1) l i) (assign_11_1_46_abs i2 (select dest i2) i1 (select source i1) l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_11_1_46_abs i2 (select dest i2) i1 (select source i1) l i) (while_12_1_115_abs i2 (select dest i2) i1 (select source i1) l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_115_abs i2 (select dest i2) i (select source i) l i) (while_12_1_115_abs i2 (select dest i2) i1 (select source i1) l i) (not (= 0 (select source i)))) (arrayassign_14_5_103_abs i2 (select dest i2) i1 (select source i1) l i))))
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_115_abs i2 (select dest i2) i (select source i) l i) (while_12_1_115_abs i2 (select dest i2) i1 (select source i1) l i) (not (not (= 0 (select source i))))) (assign_18_1_151_abs i2 (select dest i2) i1 (select source i1) l i))))
;
;(aassign) dest[i] := source[i]
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_14_5_103_abs i2 (select dest i2) i (select source i) l i) (arrayassign_14_5_103_abs i2 (select dest i2) i1 (select source i1) l i)) (assign_15_5_112_abs i2 (ite (= i i2) (select source i) (select dest i2)) i1 (select source i1) l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_15_5_112_abs i2 (select dest i2) i1 (select source i1) l i) (while_12_1_115_abs i2 (select dest i2) i1 (select source i1) l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_18_1_151_abs i2 (select dest i2) i1 (select source i1) l i) (assign_20_8_187_abs i2 (select dest i2) i1 (select source i1) i i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_20_8_187_abs i2 (select dest i2) i1 (select source i1) l i) (while_22_8_285_abs i2 (select dest i2) i1 (select source i1) l 0))))
;
;(while)   while((i<l))
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_22_8_285_abs i2 (select dest i2) i1 (select source i1) l i) (< i l)) (assert_25_3_273_abs i2 (select dest i2) i1 (select source i1) l i))))
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_22_8_285_abs i2 (select dest i2) i1 (select source i1) l i) (not (< i l))) (end_abs i2 (select dest i2) i1 (select source i1) l i))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int))) (=> (assert_25_3_273_abs i (select dest i) i (select source i) l i) (= (select dest i) (select source i)))))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_25_3_273_abs i2 (select dest i2) i1 (select source i1) l i) (assign_26_10_282_abs i2 (select dest i2) i1 (select source i1) l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_26_10_282_abs i2 (select dest i2) i1 (select source i1) l i) (while_22_8_285_abs i2 (select dest i2) i1 (select source i1) l (+ i 1)))))
(check-sat)