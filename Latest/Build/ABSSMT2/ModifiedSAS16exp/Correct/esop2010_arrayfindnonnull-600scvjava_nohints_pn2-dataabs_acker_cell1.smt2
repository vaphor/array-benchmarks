
(set-logic HORN)
(declare-rel assert_241_29_8_abs (Int Int Int Int Int))
(declare-rel assign_214_27_3_abs (Int Int Int Int Int))
(declare-rel assert_205_26_10_abs (Int Int Int Int Int))
(declare-rel while_217_23_1_abs (Int Int Int Int Int))
(declare-rel assign_154_22_8_abs (Int Int Int Int Int))
(declare-rel assign_145_20_5_abs (Int Int Int Int Int))
(declare-rel assign_133_18_2_abs (Int Int Int Int Int))
(declare-rel assign_124_17_2_abs (Int Int Int Int Int))
(declare-rel if_137_16_5_abs (Int Int Int Int Int))
(declare-rel while_148_14_1_abs (Int Int Int Int Int))
(declare-rel assign_68_13_8_abs (Int Int Int Int Int))
(declare-rel assign_62_12_1_abs (Int Int Int Int Int))
(declare-rel assign_53_11_1_abs (Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int));Number of predicates (nodes) = 15
;Number of variables = 4
;Number of clauses = 20
;
(assert (forall ( (acker Int) (pos Int) (N Int) (i Int) (i1 Int)) (start_abs i1 acker pos N i)))
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (start_abs i1 acker pos N i) (assign_53_11_1_abs i1 acker pos N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assign_53_11_1_abs i1 acker pos N i) (assign_62_12_1_abs i1 acker pos rnd i))))
;
;(assign)  pos := (0-1)
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assign_62_12_1_abs i1 acker pos N i) (assign_68_13_8_abs i1 acker (- 0 1) N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assign_68_13_8_abs i1 acker pos N i) (while_148_14_1_abs i1 acker pos N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker Int) (pos Int) (N Int) (i Int) (i1 Int)) (=> (and (while_148_14_1_abs i1 acker pos N i) (< i N)) (if_137_16_5_abs i1 acker pos N i))))
(assert (forall ( (acker Int) (pos Int) (N Int) (i Int) (i1 Int)) (=> (and (while_148_14_1_abs i1 acker pos N i) (not (< i N))) (assign_154_22_8_abs i1 acker pos N i))))
;
;(if)      if((!(a[i]==0)))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (if_137_16_5_abs i vacker_0 pos N i) (if_137_16_5_abs i1 vacker_1 pos N i) (not (= 0 vacker_0))) (assign_124_17_2_abs i1 vacker_1 pos N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (if_137_16_5_abs i vacker_0 pos N i) (if_137_16_5_abs i1 vacker_1 pos N i) (not (not (= 0 vacker_0)))) (assign_145_20_5_abs i1 vacker_1 pos N i))))
;
;(assign)  pos := i
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assign_124_17_2_abs i1 acker pos N i) (assign_133_18_2_abs i1 acker i N i))))
;
;(assign)  i := (N+2)
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assign_133_18_2_abs i1 acker pos N i) (assign_145_20_5_abs i1 acker pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assign_145_20_5_abs i1 acker pos N i) (while_148_14_1_abs i1 acker pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assign_154_22_8_abs i1 acker pos N i) (while_217_23_1_abs i1 acker pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ( (acker Int) (pos Int) (N Int) (i Int) (i1 Int)) (=> (and (while_217_23_1_abs i1 acker pos N i) (< i pos)) (assert_205_26_10_abs i1 acker pos N i))))
(assert (forall ( (acker Int) (pos Int) (N Int) (i Int) (i1 Int)) (=> (and (while_217_23_1_abs i1 acker pos N i) (not (< i pos))) (assert_241_29_8_abs i1 acker pos N i))))
;
;(assert)  (a[i]==0)
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int)) (=> (assert_205_26_10_abs i acker pos N i) (= 0 acker))))
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assert_205_26_10_abs i1 acker pos N i) (assign_214_27_3_abs i1 acker pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assign_214_27_3_abs i1 acker pos N i) (while_217_23_1_abs i1 acker pos N (+ i 1)))))
;
;(assert)  ((!(a[pos]==0))||(pos==(0-1)))
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int)) (=> (assert_241_29_8_abs pos acker pos N i) (or (not (= 0 acker)) (= (- 0 1) pos)))))
(assert (forall ( (i Int) (N Int) (pos Int) (acker Int) (i1 Int)) (=> (assert_241_29_8_abs i1 acker pos N i) (end_abs i1 acker pos N i))))
(check-sat)
