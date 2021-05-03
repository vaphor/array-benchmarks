
(set-logic HORN)
(declare-rel assert_33_8_239_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_31_10_213_abs (Int Int Int Int Int Int Int Int))
(declare-rel assert_30_10_204_abs (Int Int Int Int Int Int Int Int))
(declare-rel while_27_8_216_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_26_8_151_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_23_5_142_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_21_2_130_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_20_2_121_abs (Int Int Int Int Int Int Int Int))
(declare-rel if_19_5_134_abs (Int Int Int Int Int Int Int Int))
(declare-rel while_17_1_145_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_15_1_65_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_14_1_56_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_13_1_44_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_12_1_32_abs (Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 16
;Number of variables = 5
;Number of clauses = 21
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i1 vacker_0 i1 vacker_0 elem pos N i) (start_abs i1 vacker_0 i2 vacker_1 elem pos N i) (start_abs i2 vacker_1 i1 vacker_0 elem pos N i) (start_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_12_1_32_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_12_1_32_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_12_1_32_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_12_1_32_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_12_1_32_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_13_1_44_abs i2 vacker_1 i1 vacker_0 elem pos N 0))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_13_1_44_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_13_1_44_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_13_1_44_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_13_1_44_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_14_1_56_abs i2 vacker_1 i1 vacker_0 elem pos rnd i))))
;
;(assign)  elem := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_14_1_56_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_14_1_56_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_14_1_56_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_14_1_56_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_15_1_65_abs i2 vacker_1 i1 vacker_0 rnd pos N i))))
;
;(assign)  pos := (0-1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_15_1_65_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_15_1_65_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_15_1_65_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_15_1_65_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (while_17_1_145_abs i2 vacker_1 i1 vacker_0 elem (- 0 1) N i))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_17_1_145_abs i1 vacker_0 i1 vacker_0 elem pos N i) (while_17_1_145_abs i1 vacker_0 i2 vacker_1 elem pos N i) (while_17_1_145_abs i2 vacker_1 i1 vacker_0 elem pos N i) (while_17_1_145_abs i2 vacker_1 i2 vacker_1 elem pos N i) (< i N)) (if_19_5_134_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_17_1_145_abs i1 vacker_0 i1 vacker_0 elem pos N i) (while_17_1_145_abs i1 vacker_0 i2 vacker_1 elem pos N i) (while_17_1_145_abs i2 vacker_1 i1 vacker_0 elem pos N i) (while_17_1_145_abs i2 vacker_1 i2 vacker_1 elem pos N i) (not (< i N))) (assign_26_8_151_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(if)      if((a[i]==elem))
(assert (forall ( (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (if_19_5_134_abs i vacker_0 i vacker_0 vacker_0 pos N i) (if_19_5_134_abs i vacker_0 i1 vacker_1 vacker_0 pos N i) (if_19_5_134_abs i vacker_0 i2 vacker_2 vacker_0 pos N i) (if_19_5_134_abs i1 vacker_1 i vacker_0 vacker_0 pos N i) (if_19_5_134_abs i1 vacker_1 i1 vacker_1 vacker_0 pos N i) (if_19_5_134_abs i1 vacker_1 i2 vacker_2 vacker_0 pos N i) (if_19_5_134_abs i2 vacker_2 i vacker_0 vacker_0 pos N i) (if_19_5_134_abs i2 vacker_2 i1 vacker_1 vacker_0 pos N i) (if_19_5_134_abs i2 vacker_2 i2 vacker_2 vacker_0 pos N i)) (assign_20_2_121_abs i2 vacker_2 i1 vacker_1 vacker_0 pos N i))))
(assert (forall ( (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (if_19_5_134_abs i vacker_0 i vacker_0 elem pos N i) (if_19_5_134_abs i vacker_0 i1 vacker_1 elem pos N i) (if_19_5_134_abs i vacker_0 i2 vacker_2 elem pos N i) (if_19_5_134_abs i1 vacker_1 i vacker_0 elem pos N i) (if_19_5_134_abs i1 vacker_1 i1 vacker_1 elem pos N i) (if_19_5_134_abs i1 vacker_1 i2 vacker_2 elem pos N i) (if_19_5_134_abs i2 vacker_2 i vacker_0 elem pos N i) (if_19_5_134_abs i2 vacker_2 i1 vacker_1 elem pos N i) (if_19_5_134_abs i2 vacker_2 i2 vacker_2 elem pos N i) (not (= elem vacker_0))) (assign_23_5_142_abs i2 vacker_2 i1 vacker_1 elem pos N i))))
;
;(assign)  pos := i
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_20_2_121_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_20_2_121_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_20_2_121_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_20_2_121_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_21_2_130_abs i2 vacker_1 i1 vacker_0 elem i N i))))
;
;(assign)  i := (N+2)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_21_2_130_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_21_2_130_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_21_2_130_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_21_2_130_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_23_5_142_abs i2 vacker_1 i1 vacker_0 elem pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_23_5_142_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_23_5_142_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_23_5_142_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_23_5_142_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (while_17_1_145_abs i2 vacker_1 i1 vacker_0 elem pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_26_8_151_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_26_8_151_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_26_8_151_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_26_8_151_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (while_27_8_216_abs i2 vacker_1 i1 vacker_0 elem pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_27_8_216_abs i1 vacker_0 i1 vacker_0 elem pos N i) (while_27_8_216_abs i1 vacker_0 i2 vacker_1 elem pos N i) (while_27_8_216_abs i2 vacker_1 i1 vacker_0 elem pos N i) (while_27_8_216_abs i2 vacker_1 i2 vacker_1 elem pos N i) (< i pos)) (assert_30_10_204_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_27_8_216_abs i1 vacker_0 i1 vacker_0 elem pos N i) (while_27_8_216_abs i1 vacker_0 i2 vacker_1 elem pos N i) (while_27_8_216_abs i2 vacker_1 i1 vacker_0 elem pos N i) (while_27_8_216_abs i2 vacker_1 i2 vacker_1 elem pos N i) (not (< i pos))) (assert_33_8_239_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (acker Int)) (=> (assert_30_10_204_abs i acker i acker elem pos N i) (not (= acker elem)))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_30_10_204_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assert_30_10_204_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assert_30_10_204_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assert_30_10_204_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_31_10_213_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_31_10_213_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_31_10_213_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_31_10_213_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_31_10_213_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (while_27_8_216_abs i2 vacker_1 i1 vacker_0 elem pos N (+ i 1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (acker Int)) (=> (assert_33_8_239_abs pos acker pos acker elem pos N i) (or (= acker elem) (= (- 0 1) pos)))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_33_8_239_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assert_33_8_239_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assert_33_8_239_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assert_33_8_239_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (end_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
(check-sat)
