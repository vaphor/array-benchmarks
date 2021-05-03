
(set-logic HORN)
(declare-rel assign_282_26_10_abs (Int Int Int Int Int Int))
(declare-rel assert_273_25_3_abs (Int Int Int Int Int Int))
(declare-rel assert_255_24_10_abs (Int Int Int Int Int Int))
(declare-rel while_285_22_8_abs (Int Int Int Int Int Int))
(declare-rel assert_217_21_8_abs (Int Int Int Int Int Int))
(declare-rel assign_187_20_8_abs (Int Int Int Int Int Int))
(declare-rel assert_181_19_8_abs (Int Int Int Int Int Int))
(declare-rel assign_151_18_1_abs (Int Int Int Int Int Int))
(declare-rel assert_145_17_8_abs (Int Int Int Int Int Int))
(declare-rel assign_112_15_5_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_103_14_5_abs (Int Int Int Int Int Int))
(declare-rel assert_89_13_12_abs (Int Int Int Int Int Int))
(declare-rel while_115_12_1_abs (Int Int Int Int Int Int))
(declare-rel assign_46_11_1_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 24
;
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker l i)))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 l i) (assign_46_11_1_abs i2 acker i1 acker1 l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_46_11_1_abs i2 acker i1 acker1 l i) (while_115_12_1_abs i2 acker i1 acker1 l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (acker1 Int) (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_115_12_1_abs i2 acker1 i vacker_0 l i) (while_115_12_1_abs i2 acker1 i1 vacker_1 l i) (not (= 0 vacker_0))) (assert_89_13_12_abs i2 acker1 i1 vacker_1 l i))))
(assert (forall ( (acker1 Int) (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_115_12_1_abs i2 acker1 i vacker_0 l i) (while_115_12_1_abs i2 acker1 i1 vacker_1 l i) (not (not (= 0 vacker_0)))) (assert_145_17_8_abs i2 acker1 i1 vacker_1 l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(dest[k]==source[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_89_13_12_abs k acker k acker1 l i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_89_13_12_abs i2 acker i1 acker1 l i) (arrayassign_103_14_5_abs i2 acker i1 acker1 l i))))
;
;(aassign) dest[i] := source[i]
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_103_14_5_abs i2 acker i vacker_0 l i) (arrayassign_103_14_5_abs i2 acker i1 vacker_1 l i)) (assign_112_15_5_abs i2 (ite (= i i2) vacker_0 acker) i1 vacker_1 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_112_15_5_abs i2 acker i1 acker1 l i) (while_115_12_1_abs i2 acker i1 acker1 l (+ i 1)))))
;
;(assert)  (((0<=k)&&(k<i))=>(source[k]==dest[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_145_17_8_abs k acker k acker1 l i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_145_17_8_abs i2 acker i1 acker1 l i) (assign_151_18_1_abs i2 acker i1 acker1 l i))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_151_18_1_abs i2 acker i1 acker1 l i) (assert_181_19_8_abs i2 acker i1 acker1 i i))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_181_19_8_abs k acker k acker1 l i) (<= 0 k) (< k l)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_181_19_8_abs i2 acker i1 acker1 l i) (assign_187_20_8_abs i2 acker i1 acker1 l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_187_20_8_abs i2 acker i1 acker1 l i) (assert_217_21_8_abs i2 acker i1 acker1 l 0))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_217_21_8_abs k acker k acker1 l i) (<= 0 k) (< k l)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_217_21_8_abs i2 acker i1 acker1 l i) (while_285_22_8_abs i2 acker i1 acker1 l i))))
;
;(while)   while((i<l))
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_285_22_8_abs i2 acker1 i1 acker l i) (< i l)) (assert_255_24_10_abs i2 acker1 i1 acker l i))))
(assert (forall ( (acker1 Int) (acker Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_285_22_8_abs i2 acker1 i1 acker l i) (not (< i l))) (end_abs i2 acker1 i1 acker l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ( (k Int) (i Int) (l Int) (acker1 Int) (acker Int)) (=> (and (assert_255_24_10_abs k acker k acker1 l i) (<= 0 k) (< k l)) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_255_24_10_abs i2 acker i1 acker1 l i) (assert_273_25_3_abs i2 acker i1 acker1 l i))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int)) (=> (assert_273_25_3_abs i acker i acker1 l i) (= acker acker1))))
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_273_25_3_abs i2 acker i1 acker1 l i) (assign_282_26_10_abs i2 acker i1 acker1 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_282_26_10_abs i2 acker i1 acker1 l i) (while_285_22_8_abs i2 acker i1 acker1 l (+ i 1)))))
(check-sat)
