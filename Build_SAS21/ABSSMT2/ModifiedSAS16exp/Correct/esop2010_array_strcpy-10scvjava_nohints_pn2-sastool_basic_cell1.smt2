
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
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select dest i2) i1 (select source i1) l i)))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select dest i2) i1 (select source i1) l i) (assign_46_11_1_abs i2 (select dest i2) i1 (select source i1) l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_46_11_1_abs i2 (select dest i2) i1 (select source i1) l i) (while_115_12_1_abs i2 (select dest i2) i1 (select source i1) l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_115_12_1_abs i2 (select dest i2) i (select source i) l i) (while_115_12_1_abs i2 (select dest i2) i1 (select source i1) l i) (not (= 0 (select source i)))) (arrayassign_103_14_5_abs i2 (select dest i2) i1 (select source i1) l i))))
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_115_12_1_abs i2 (select dest i2) i (select source i) l i) (while_115_12_1_abs i2 (select dest i2) i1 (select source i1) l i) (not (not (= 0 (select source i))))) (assign_151_18_1_abs i2 (select dest i2) i1 (select source i1) l i))))
;
;(aassign) dest[i] := source[i]
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_103_14_5_abs i2 (select dest i2) i (select source i) l i) (arrayassign_103_14_5_abs i2 (select dest i2) i1 (select source i1) l i)) (assign_112_15_5_abs i2 (ite (= i i2) (select source i) (select dest i2)) i1 (select source i1) l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_112_15_5_abs i2 (select dest i2) i1 (select source i1) l i) (while_115_12_1_abs i2 (select dest i2) i1 (select source i1) l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_151_18_1_abs i2 (select dest i2) i1 (select source i1) l i) (assign_187_20_8_abs i2 (select dest i2) i1 (select source i1) i i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_187_20_8_abs i2 (select dest i2) i1 (select source i1) l i) (while_285_22_8_abs i2 (select dest i2) i1 (select source i1) l 0))))
;
;(while)   while((i<l))
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_285_22_8_abs i2 (select dest i2) i1 (select source i1) l i) (< i l)) (assert_273_25_3_abs i2 (select dest i2) i1 (select source i1) l i))))
(assert (forall ( (dest (Array Int Int)) (source (Array Int Int)) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_285_22_8_abs i2 (select dest i2) i1 (select source i1) l i) (not (< i l))) (end_abs i2 (select dest i2) i1 (select source i1) l i))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int))) (=> (assert_273_25_3_abs i (select dest i) i (select source i) l i) (= (select dest i) (select source i)))))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_273_25_3_abs i2 (select dest i2) i1 (select source i1) l i) (assign_282_26_10_abs i2 (select dest i2) i1 (select source i1) l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (dest (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_282_26_10_abs i2 (select dest i2) i1 (select source i1) l i) (while_285_22_8_abs i2 (select dest i2) i1 (select source i1) l (+ i 1)))))
(check-sat)
