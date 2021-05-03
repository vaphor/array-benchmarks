
(set-logic HORN)
(declare-rel assert_29_8_241_abs (Int Int Int Int Int Int Int))
(declare-rel assign_27_3_214_abs (Int Int Int Int Int Int Int))
(declare-rel assert_26_10_205_abs (Int Int Int Int Int Int Int))
(declare-rel while_23_1_217_abs (Int Int Int Int Int Int Int))
(declare-rel assign_22_8_154_abs (Int Int Int Int Int Int Int))
(declare-rel assign_20_5_145_abs (Int Int Int Int Int Int Int))
(declare-rel assign_18_2_133_abs (Int Int Int Int Int Int Int))
(declare-rel assign_17_2_124_abs (Int Int Int Int Int Int Int))
(declare-rel if_16_5_137_abs (Int Int Int Int Int Int Int))
(declare-rel while_14_1_148_abs (Int Int Int Int Int Int Int))
(declare-rel assign_13_8_68_abs (Int Int Int Int Int Int Int))
(declare-rel assign_12_1_62_abs (Int Int Int Int Int Int Int))
(declare-rel assign_11_1_53_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 15
;Number of variables = 4
;Number of clauses = 20
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i2 vacker_1 i1 vacker_0 pos N i))))
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i1 vacker_0 i1 vacker_0 pos N i) (start_abs i1 vacker_0 i2 vacker_1 pos N i) (start_abs i2 vacker_1 i1 vacker_0 pos N i) (start_abs i2 vacker_1 i2 vacker_1 pos N i)) (assign_11_1_53_abs i2 vacker_1 i1 vacker_0 pos N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_11_1_53_abs i1 vacker_0 i1 vacker_0 pos N i) (assign_11_1_53_abs i1 vacker_0 i2 vacker_1 pos N i) (assign_11_1_53_abs i2 vacker_1 i1 vacker_0 pos N i) (assign_11_1_53_abs i2 vacker_1 i2 vacker_1 pos N i)) (assign_12_1_62_abs i2 vacker_1 i1 vacker_0 pos rnd i))))
;
;(assign)  pos := (0-1)
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_12_1_62_abs i1 vacker_0 i1 vacker_0 pos N i) (assign_12_1_62_abs i1 vacker_0 i2 vacker_1 pos N i) (assign_12_1_62_abs i2 vacker_1 i1 vacker_0 pos N i) (assign_12_1_62_abs i2 vacker_1 i2 vacker_1 pos N i)) (assign_13_8_68_abs i2 vacker_1 i1 vacker_0 (- 0 1) N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_13_8_68_abs i1 vacker_0 i1 vacker_0 pos N i) (assign_13_8_68_abs i1 vacker_0 i2 vacker_1 pos N i) (assign_13_8_68_abs i2 vacker_1 i1 vacker_0 pos N i) (assign_13_8_68_abs i2 vacker_1 i2 vacker_1 pos N i)) (while_14_1_148_abs i2 vacker_1 i1 vacker_0 pos N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_14_1_148_abs i1 vacker_0 i1 vacker_0 pos N i) (while_14_1_148_abs i1 vacker_0 i2 vacker_1 pos N i) (while_14_1_148_abs i2 vacker_1 i1 vacker_0 pos N i) (while_14_1_148_abs i2 vacker_1 i2 vacker_1 pos N i) (< i N)) (if_16_5_137_abs i2 vacker_1 i1 vacker_0 pos N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_14_1_148_abs i1 vacker_0 i1 vacker_0 pos N i) (while_14_1_148_abs i1 vacker_0 i2 vacker_1 pos N i) (while_14_1_148_abs i2 vacker_1 i1 vacker_0 pos N i) (while_14_1_148_abs i2 vacker_1 i2 vacker_1 pos N i) (not (< i N))) (assign_22_8_154_abs i2 vacker_1 i1 vacker_0 pos N i))))
;
;(if)      if((!(a[i]==0)))
(assert (forall ( (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (if_16_5_137_abs i vacker_0 i vacker_0 pos N i) (if_16_5_137_abs i vacker_0 i1 vacker_1 pos N i) (if_16_5_137_abs i vacker_0 i2 vacker_2 pos N i) (if_16_5_137_abs i1 vacker_1 i vacker_0 pos N i) (if_16_5_137_abs i1 vacker_1 i1 vacker_1 pos N i) (if_16_5_137_abs i1 vacker_1 i2 vacker_2 pos N i) (if_16_5_137_abs i2 vacker_2 i vacker_0 pos N i) (if_16_5_137_abs i2 vacker_2 i1 vacker_1 pos N i) (if_16_5_137_abs i2 vacker_2 i2 vacker_2 pos N i) (not (= 0 vacker_0))) (assign_17_2_124_abs i2 vacker_2 i1 vacker_1 pos N i))))
(assert (forall ( (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (if_16_5_137_abs i vacker_0 i vacker_0 pos N i) (if_16_5_137_abs i vacker_0 i1 vacker_1 pos N i) (if_16_5_137_abs i vacker_0 i2 vacker_2 pos N i) (if_16_5_137_abs i1 vacker_1 i vacker_0 pos N i) (if_16_5_137_abs i1 vacker_1 i1 vacker_1 pos N i) (if_16_5_137_abs i1 vacker_1 i2 vacker_2 pos N i) (if_16_5_137_abs i2 vacker_2 i vacker_0 pos N i) (if_16_5_137_abs i2 vacker_2 i1 vacker_1 pos N i) (if_16_5_137_abs i2 vacker_2 i2 vacker_2 pos N i) (not (not (= 0 vacker_0)))) (assign_20_5_145_abs i2 vacker_2 i1 vacker_1 pos N i))))
;
;(assign)  pos := i
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_17_2_124_abs i1 vacker_0 i1 vacker_0 pos N i) (assign_17_2_124_abs i1 vacker_0 i2 vacker_1 pos N i) (assign_17_2_124_abs i2 vacker_1 i1 vacker_0 pos N i) (assign_17_2_124_abs i2 vacker_1 i2 vacker_1 pos N i)) (assign_18_2_133_abs i2 vacker_1 i1 vacker_0 i N i))))
;
;(assign)  i := (N+2)
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_18_2_133_abs i1 vacker_0 i1 vacker_0 pos N i) (assign_18_2_133_abs i1 vacker_0 i2 vacker_1 pos N i) (assign_18_2_133_abs i2 vacker_1 i1 vacker_0 pos N i) (assign_18_2_133_abs i2 vacker_1 i2 vacker_1 pos N i)) (assign_20_5_145_abs i2 vacker_1 i1 vacker_0 pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_20_5_145_abs i1 vacker_0 i1 vacker_0 pos N i) (assign_20_5_145_abs i1 vacker_0 i2 vacker_1 pos N i) (assign_20_5_145_abs i2 vacker_1 i1 vacker_0 pos N i) (assign_20_5_145_abs i2 vacker_1 i2 vacker_1 pos N i)) (while_14_1_148_abs i2 vacker_1 i1 vacker_0 pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_22_8_154_abs i1 vacker_0 i1 vacker_0 pos N i) (assign_22_8_154_abs i1 vacker_0 i2 vacker_1 pos N i) (assign_22_8_154_abs i2 vacker_1 i1 vacker_0 pos N i) (assign_22_8_154_abs i2 vacker_1 i2 vacker_1 pos N i)) (while_23_1_217_abs i2 vacker_1 i1 vacker_0 pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_23_1_217_abs i1 vacker_0 i1 vacker_0 pos N i) (while_23_1_217_abs i1 vacker_0 i2 vacker_1 pos N i) (while_23_1_217_abs i2 vacker_1 i1 vacker_0 pos N i) (while_23_1_217_abs i2 vacker_1 i2 vacker_1 pos N i) (< i pos)) (assert_26_10_205_abs i2 vacker_1 i1 vacker_0 pos N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_23_1_217_abs i1 vacker_0 i1 vacker_0 pos N i) (while_23_1_217_abs i1 vacker_0 i2 vacker_1 pos N i) (while_23_1_217_abs i2 vacker_1 i1 vacker_0 pos N i) (while_23_1_217_abs i2 vacker_1 i2 vacker_1 pos N i) (not (< i pos))) (assert_29_8_241_abs i2 vacker_1 i1 vacker_0 pos N i))))
;
;(assert)  (a[i]==0)
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int)) (=> (assert_26_10_205_abs i acker i acker pos N i) (= 0 acker))))
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_26_10_205_abs i1 vacker_0 i1 vacker_0 pos N i) (assert_26_10_205_abs i1 vacker_0 i2 vacker_1 pos N i) (assert_26_10_205_abs i2 vacker_1 i1 vacker_0 pos N i) (assert_26_10_205_abs i2 vacker_1 i2 vacker_1 pos N i)) (assign_27_3_214_abs i2 vacker_1 i1 vacker_0 pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_27_3_214_abs i1 vacker_0 i1 vacker_0 pos N i) (assign_27_3_214_abs i1 vacker_0 i2 vacker_1 pos N i) (assign_27_3_214_abs i2 vacker_1 i1 vacker_0 pos N i) (assign_27_3_214_abs i2 vacker_1 i2 vacker_1 pos N i)) (while_23_1_217_abs i2 vacker_1 i1 vacker_0 pos N (+ i 1)))))
;
;(assert)  ((!(a[pos]==0))||(pos==(0-1)))
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int)) (=> (assert_29_8_241_abs pos acker pos acker pos N i) (or (not (= 0 acker)) (= (- 0 1) pos)))))
(assert (forall ( (i Int) (N Int) (pos Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_29_8_241_abs i1 vacker_0 i1 vacker_0 pos N i) (assert_29_8_241_abs i1 vacker_0 i2 vacker_1 pos N i) (assert_29_8_241_abs i2 vacker_1 i1 vacker_0 pos N i) (assert_29_8_241_abs i2 vacker_1 i2 vacker_1 pos N i)) (end_abs i2 vacker_1 i1 vacker_0 pos N i))))
(check-sat)
