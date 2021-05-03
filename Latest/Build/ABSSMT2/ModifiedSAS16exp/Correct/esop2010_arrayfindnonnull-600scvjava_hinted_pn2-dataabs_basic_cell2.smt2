
(set-logic HORN)
(declare-rel assert_241_29_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_214_27_3_abs (Int Int Int Int Int Int Int))
(declare-rel assert_205_26_10_abs (Int Int Int Int Int Int Int))
(declare-rel assert_191_25_10_abs (Int Int Int Int Int Int Int))
(declare-rel while_217_23_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_154_22_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_145_20_5_abs (Int Int Int Int Int Int Int))
(declare-rel assign_133_18_2_abs (Int Int Int Int Int Int Int))
(declare-rel assign_124_17_2_abs (Int Int Int Int Int Int Int))
(declare-rel if_137_16_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_105_15_13_abs (Int Int Int Int Int Int Int))
(declare-rel while_148_14_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_68_13_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_62_12_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_53_11_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 17
;Number of variables = 4
;Number of clauses = 24
;
(assert (forall ( (a (Array Int Int)) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a i2) i1 (select a i1) pos N i)))
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (start_abs i1 (select a i1) i1 (select a i1) pos N i) (start_abs i1 (select a i1) i2 (select a i2) pos N i) (start_abs i2 (select a i2) i1 (select a i1) pos N i) (start_abs i2 (select a i2) i2 (select a i2) pos N i)) (assign_53_11_1_abs i2 (select a i2) i1 (select a i1) pos N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_53_11_1_abs i1 (select a i1) i1 (select a i1) pos N i) (assign_53_11_1_abs i1 (select a i1) i2 (select a i2) pos N i) (assign_53_11_1_abs i2 (select a i2) i1 (select a i1) pos N i) (assign_53_11_1_abs i2 (select a i2) i2 (select a i2) pos N i)) (assign_62_12_1_abs i2 (select a i2) i1 (select a i1) pos rnd i))))
;
;(assign)  pos := (0-1)
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_62_12_1_abs i1 (select a i1) i1 (select a i1) pos N i) (assign_62_12_1_abs i1 (select a i1) i2 (select a i2) pos N i) (assign_62_12_1_abs i2 (select a i2) i1 (select a i1) pos N i) (assign_62_12_1_abs i2 (select a i2) i2 (select a i2) pos N i)) (assign_68_13_8_abs i2 (select a i2) i1 (select a i1) (- 0 1) N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_68_13_8_abs i1 (select a i1) i1 (select a i1) pos N i) (assign_68_13_8_abs i1 (select a i1) i2 (select a i2) pos N i) (assign_68_13_8_abs i2 (select a i2) i1 (select a i1) pos N i) (assign_68_13_8_abs i2 (select a i2) i2 (select a i2) pos N i)) (while_148_14_1_abs i2 (select a i2) i1 (select a i1) pos N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_148_14_1_abs i1 (select a i1) i1 (select a i1) pos N i) (while_148_14_1_abs i1 (select a i1) i2 (select a i2) pos N i) (while_148_14_1_abs i2 (select a i2) i1 (select a i1) pos N i) (while_148_14_1_abs i2 (select a i2) i2 (select a i2) pos N i) (< i N)) (assert_105_15_13_abs i2 (select a i2) i1 (select a i1) pos N i))))
(assert (forall ( (a (Array Int Int)) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_148_14_1_abs i1 (select a i1) i1 (select a i1) pos N i) (while_148_14_1_abs i1 (select a i1) i2 (select a i2) pos N i) (while_148_14_1_abs i2 (select a i2) i1 (select a i1) pos N i) (while_148_14_1_abs i2 (select a i2) i2 (select a i2) pos N i) (not (< i N))) (assign_154_22_8_abs i2 (select a i2) i1 (select a i1) pos N i))))
;
;(assert)  (((k>=0)&&(k<i))=>(a[k]==0))
(assert (forall ( (k Int) (i Int) (N Int) (pos Int) (a (Array Int Int))) (=> (and (assert_105_15_13_abs k (select a k) k (select a k) pos N i) (>= k 0) (< k i)) (= 0 (select a k)))))
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_105_15_13_abs i1 (select a i1) i1 (select a i1) pos N i) (assert_105_15_13_abs i1 (select a i1) i2 (select a i2) pos N i) (assert_105_15_13_abs i2 (select a i2) i1 (select a i1) pos N i) (assert_105_15_13_abs i2 (select a i2) i2 (select a i2) pos N i)) (if_137_16_5_abs i2 (select a i2) i1 (select a i1) pos N i))))
;
;(if)      if((!(a[i]==0)))
(assert (forall ( (a (Array Int Int)) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (if_137_16_5_abs i (select a i) i (select a i) pos N i) (if_137_16_5_abs i (select a i) i1 (select a i1) pos N i) (if_137_16_5_abs i (select a i) i2 (select a i2) pos N i) (if_137_16_5_abs i1 (select a i1) i (select a i) pos N i) (if_137_16_5_abs i1 (select a i1) i1 (select a i1) pos N i) (if_137_16_5_abs i1 (select a i1) i2 (select a i2) pos N i) (if_137_16_5_abs i2 (select a i2) i (select a i) pos N i) (if_137_16_5_abs i2 (select a i2) i1 (select a i1) pos N i) (if_137_16_5_abs i2 (select a i2) i2 (select a i2) pos N i) (not (= 0 (select a i)))) (assign_124_17_2_abs i2 (select a i2) i1 (select a i1) pos N i))))
(assert (forall ( (a (Array Int Int)) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (if_137_16_5_abs i (select a i) i (select a i) pos N i) (if_137_16_5_abs i (select a i) i1 (select a i1) pos N i) (if_137_16_5_abs i (select a i) i2 (select a i2) pos N i) (if_137_16_5_abs i1 (select a i1) i (select a i) pos N i) (if_137_16_5_abs i1 (select a i1) i1 (select a i1) pos N i) (if_137_16_5_abs i1 (select a i1) i2 (select a i2) pos N i) (if_137_16_5_abs i2 (select a i2) i (select a i) pos N i) (if_137_16_5_abs i2 (select a i2) i1 (select a i1) pos N i) (if_137_16_5_abs i2 (select a i2) i2 (select a i2) pos N i) (not (not (= 0 (select a i))))) (assign_145_20_5_abs i2 (select a i2) i1 (select a i1) pos N i))))
;
;(assign)  pos := i
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_124_17_2_abs i1 (select a i1) i1 (select a i1) pos N i) (assign_124_17_2_abs i1 (select a i1) i2 (select a i2) pos N i) (assign_124_17_2_abs i2 (select a i2) i1 (select a i1) pos N i) (assign_124_17_2_abs i2 (select a i2) i2 (select a i2) pos N i)) (assign_133_18_2_abs i2 (select a i2) i1 (select a i1) i N i))))
;
;(assign)  i := (N+2)
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_133_18_2_abs i1 (select a i1) i1 (select a i1) pos N i) (assign_133_18_2_abs i1 (select a i1) i2 (select a i2) pos N i) (assign_133_18_2_abs i2 (select a i2) i1 (select a i1) pos N i) (assign_133_18_2_abs i2 (select a i2) i2 (select a i2) pos N i)) (assign_145_20_5_abs i2 (select a i2) i1 (select a i1) pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_145_20_5_abs i1 (select a i1) i1 (select a i1) pos N i) (assign_145_20_5_abs i1 (select a i1) i2 (select a i2) pos N i) (assign_145_20_5_abs i2 (select a i2) i1 (select a i1) pos N i) (assign_145_20_5_abs i2 (select a i2) i2 (select a i2) pos N i)) (while_148_14_1_abs i2 (select a i2) i1 (select a i1) pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_154_22_8_abs i1 (select a i1) i1 (select a i1) pos N i) (assign_154_22_8_abs i1 (select a i1) i2 (select a i2) pos N i) (assign_154_22_8_abs i2 (select a i2) i1 (select a i1) pos N i) (assign_154_22_8_abs i2 (select a i2) i2 (select a i2) pos N i)) (while_217_23_1_abs i2 (select a i2) i1 (select a i1) pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ( (a (Array Int Int)) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_217_23_1_abs i1 (select a i1) i1 (select a i1) pos N i) (while_217_23_1_abs i1 (select a i1) i2 (select a i2) pos N i) (while_217_23_1_abs i2 (select a i2) i1 (select a i1) pos N i) (while_217_23_1_abs i2 (select a i2) i2 (select a i2) pos N i) (< i pos)) (assert_191_25_10_abs i2 (select a i2) i1 (select a i1) pos N i))))
(assert (forall ( (a (Array Int Int)) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_217_23_1_abs i1 (select a i1) i1 (select a i1) pos N i) (while_217_23_1_abs i1 (select a i1) i2 (select a i2) pos N i) (while_217_23_1_abs i2 (select a i2) i1 (select a i1) pos N i) (while_217_23_1_abs i2 (select a i2) i2 (select a i2) pos N i) (not (< i pos))) (assert_241_29_8_abs i2 (select a i2) i1 (select a i1) pos N i))))
;
;(assert)  (((k>=0)&&(k<pos))=>(a[k]==0))
(assert (forall ( (k Int) (i Int) (N Int) (pos Int) (a (Array Int Int))) (=> (and (assert_191_25_10_abs k (select a k) k (select a k) pos N i) (>= k 0) (< k pos)) (= 0 (select a k)))))
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_191_25_10_abs i1 (select a i1) i1 (select a i1) pos N i) (assert_191_25_10_abs i1 (select a i1) i2 (select a i2) pos N i) (assert_191_25_10_abs i2 (select a i2) i1 (select a i1) pos N i) (assert_191_25_10_abs i2 (select a i2) i2 (select a i2) pos N i)) (assert_205_26_10_abs i2 (select a i2) i1 (select a i1) pos N i))))
;
;(assert)  (a[i]==0)
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int))) (=> (assert_205_26_10_abs i (select a i) i (select a i) pos N i) (= 0 (select a i)))))
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_205_26_10_abs i1 (select a i1) i1 (select a i1) pos N i) (assert_205_26_10_abs i1 (select a i1) i2 (select a i2) pos N i) (assert_205_26_10_abs i2 (select a i2) i1 (select a i1) pos N i) (assert_205_26_10_abs i2 (select a i2) i2 (select a i2) pos N i)) (assign_214_27_3_abs i2 (select a i2) i1 (select a i1) pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_214_27_3_abs i1 (select a i1) i1 (select a i1) pos N i) (assign_214_27_3_abs i1 (select a i1) i2 (select a i2) pos N i) (assign_214_27_3_abs i2 (select a i2) i1 (select a i1) pos N i) (assign_214_27_3_abs i2 (select a i2) i2 (select a i2) pos N i)) (while_217_23_1_abs i2 (select a i2) i1 (select a i1) pos N (+ i 1)))))
;
;(assert)  ((!(a[pos]==0))||(pos==(0-1)))
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int))) (=> (assert_241_29_8_abs pos (select a pos) pos (select a pos) pos N i) (or (not (= 0 (select a pos))) (= (- 0 1) pos)))))
(assert (forall ( (i Int) (N Int) (pos Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_241_29_8_abs i1 (select a i1) i1 (select a i1) pos N i) (assert_241_29_8_abs i1 (select a i1) i2 (select a i2) pos N i) (assert_241_29_8_abs i2 (select a i2) i1 (select a i1) pos N i) (assert_241_29_8_abs i2 (select a i2) i2 (select a i2) pos N i)) (end_abs i2 (select a i2) i1 (select a i1) pos N i))))
(check-sat)