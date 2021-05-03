
(set-logic HORN)
(declare-rel assign_26_10_282_abs (Int Int Int Int Int Int))
(declare-rel assert_25_3_273_abs (Int Int Int Int Int Int))
(declare-rel assert_24_10_255_abs (Int Int Int Int Int Int))
(declare-rel while_22_8_285_abs (Int Int Int Int Int Int))
(declare-rel assert_21_8_217_abs (Int Int Int Int Int Int))
(declare-rel assign_20_8_187_abs (Int Int Int Int Int Int))
(declare-rel assert_19_8_181_abs (Int Int Int Int Int Int))
(declare-rel assign_18_1_151_abs (Int Int Int Int Int Int))
(declare-rel assert_17_8_145_abs (Int Int Int Int Int Int))
(declare-rel assign_15_5_112_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_14_5_103_abs (Int Int Int Int Int Int))
(declare-rel assert_13_12_89_abs (Int Int Int Int Int Int))
(declare-rel while_12_1_115_abs (Int Int Int Int Int Int))
(declare-rel assign_11_1_46_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 24
;
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker l i)))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 l i) (assign_11_1_46_abs i2 acker i1 acker1 l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_11_1_46_abs i2 acker i1 acker1 l i) (while_12_1_115_abs i2 acker i1 acker1 l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (acker1 Int) (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_12_1_115_abs i2 acker1 i vacker_0 l i) (while_12_1_115_abs i2 acker1 i1 vacker_1 l i) (not (= 0 vacker_0))) (assert_13_12_89_abs i2 acker1 i1 vacker_1 l i))))
(assert (forall ( (acker1 Int) (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_12_1_115_abs i2 acker1 i vacker_0 l i) (while_12_1_115_abs i2 acker1 i1 vacker_1 l i) (not (not (= 0 vacker_0)))) (assert_17_8_145_abs i2 acker1 i1 vacker_1 l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(dest[k]==source[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_13_12_89_abs k acker k acker1 l i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_13_12_89_abs i2 acker i1 acker1 l i) (arrayassign_14_5_103_abs i2 acker i1 acker1 l i))))
;
;(aassign) dest[i] := source[i]
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_14_5_103_abs i2 acker i vacker_0 l i) (arrayassign_14_5_103_abs i2 acker i1 vacker_1 l i)) (assign_15_5_112_abs i2 (ite (= i i2) vacker_0 acker) i1 vacker_1 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_15_5_112_abs i2 acker i1 acker1 l i) (while_12_1_115_abs i2 acker i1 acker1 l (+ i 1)))))
;
;(assert)  (((0<=k)&&(k<i))=>(source[k]==dest[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_17_8_145_abs k acker k acker1 l i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_17_8_145_abs i2 acker i1 acker1 l i) (assign_18_1_151_abs i2 acker i1 acker1 l i))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_18_1_151_abs i2 acker i1 acker1 l i) (assert_19_8_181_abs i2 acker i1 acker1 i i))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_19_8_181_abs k acker k acker1 l i) (<= 0 k) (< k l)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_19_8_181_abs i2 acker i1 acker1 l i) (assign_20_8_187_abs i2 acker i1 acker1 l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_20_8_187_abs i2 acker i1 acker1 l i) (assert_21_8_217_abs i2 acker i1 acker1 l 0))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_21_8_217_abs k acker k acker1 l i) (<= 0 k) (< k l)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_21_8_217_abs i2 acker i1 acker1 l i) (while_22_8_285_abs i2 acker i1 acker1 l i))))
;
;(while)   while((i<l))
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_22_8_285_abs i2 acker1 i1 acker l i) (< i l)) (assert_24_10_255_abs i2 acker1 i1 acker l i))))
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_22_8_285_abs i2 acker1 i1 acker l i) (not (< i l))) (end_abs i2 acker1 i1 acker l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_24_10_255_abs k acker k acker1 l i) (<= 0 k) (< k l)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_24_10_255_abs i2 acker i1 acker1 l i) (assert_25_3_273_abs i2 acker i1 acker1 l i))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int)) (=> (assert_25_3_273_abs i acker i acker1 l i) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_25_3_273_abs i2 acker i1 acker1 l i) (assign_26_10_282_abs i2 acker i1 acker1 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_26_10_282_abs i2 acker i1 acker1 l i) (while_22_8_285_abs i2 acker i1 acker1 l (+ i 1)))))
(check-sat)
