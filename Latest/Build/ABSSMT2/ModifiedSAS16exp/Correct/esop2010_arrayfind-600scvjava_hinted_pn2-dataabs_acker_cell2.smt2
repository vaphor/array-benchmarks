
(set-logic HORN)
(declare-rel assert_239_33_8_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_213_31_10_abs (Int Int Int Int Int Int Int Int))
(declare-rel assert_204_30_10_abs (Int Int Int Int Int Int Int Int))
(declare-rel assert_189_29_10_abs (Int Int Int Int Int Int Int Int))
(declare-rel while_216_27_8_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_151_26_8_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_142_23_5_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_130_21_2_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_121_20_2_abs (Int Int Int Int Int Int Int Int))
(declare-rel if_134_19_5_abs (Int Int Int Int Int Int Int Int))
(declare-rel assert_103_18_12_abs (Int Int Int Int Int Int Int Int))
(declare-rel while_145_17_1_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_65_15_1_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_56_14_1_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_44_13_1_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_32_12_1_abs (Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 18
;Number of variables = 5
;Number of clauses = 25
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i1 vacker_0 i1 vacker_0 elem pos N i) (start_abs i1 vacker_0 i2 vacker_1 elem pos N i) (start_abs i2 vacker_1 i1 vacker_0 elem pos N i) (start_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_32_12_1_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_32_12_1_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_32_12_1_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_32_12_1_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_32_12_1_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_44_13_1_abs i2 vacker_1 i1 vacker_0 elem pos N 0))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_44_13_1_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_44_13_1_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_44_13_1_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_44_13_1_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_56_14_1_abs i2 vacker_1 i1 vacker_0 elem pos rnd i))))
;
;(assign)  elem := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_56_14_1_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_56_14_1_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_56_14_1_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_56_14_1_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_65_15_1_abs i2 vacker_1 i1 vacker_0 rnd pos N i))))
;
;(assign)  pos := (0-1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_65_15_1_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_65_15_1_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_65_15_1_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_65_15_1_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (while_145_17_1_abs i2 vacker_1 i1 vacker_0 elem (- 0 1) N i))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_145_17_1_abs i1 vacker_0 i1 vacker_0 elem pos N i) (while_145_17_1_abs i1 vacker_0 i2 vacker_1 elem pos N i) (while_145_17_1_abs i2 vacker_1 i1 vacker_0 elem pos N i) (while_145_17_1_abs i2 vacker_1 i2 vacker_1 elem pos N i) (< i N)) (assert_103_18_12_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_145_17_1_abs i1 vacker_0 i1 vacker_0 elem pos N i) (while_145_17_1_abs i1 vacker_0 i2 vacker_1 elem pos N i) (while_145_17_1_abs i2 vacker_1 i1 vacker_0 elem pos N i) (while_145_17_1_abs i2 vacker_1 i2 vacker_1 elem pos N i) (not (< i N))) (assign_151_26_8_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(assert)  (((k>=0)&&(k<i))=>(!(a[k]==elem)))
(assert (forall ( (k Int) (i Int) (N Int) (pos Int) (elem Int) (acker Int)) (=> (and (assert_103_18_12_abs k acker k acker elem pos N i) (>= k 0) (< k i)) (not (= acker elem)))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_103_18_12_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assert_103_18_12_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assert_103_18_12_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assert_103_18_12_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (if_134_19_5_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(if)      if((a[i]==elem))
(assert (forall ( (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (if_134_19_5_abs i vacker_0 i vacker_0 vacker_0 pos N i) (if_134_19_5_abs i vacker_0 i1 vacker_1 vacker_0 pos N i) (if_134_19_5_abs i vacker_0 i2 vacker_2 vacker_0 pos N i) (if_134_19_5_abs i1 vacker_1 i vacker_0 vacker_0 pos N i) (if_134_19_5_abs i1 vacker_1 i1 vacker_1 vacker_0 pos N i) (if_134_19_5_abs i1 vacker_1 i2 vacker_2 vacker_0 pos N i) (if_134_19_5_abs i2 vacker_2 i vacker_0 vacker_0 pos N i) (if_134_19_5_abs i2 vacker_2 i1 vacker_1 vacker_0 pos N i) (if_134_19_5_abs i2 vacker_2 i2 vacker_2 vacker_0 pos N i)) (assign_121_20_2_abs i2 vacker_2 i1 vacker_1 vacker_0 pos N i))))
(assert (forall ( (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (if_134_19_5_abs i vacker_0 i vacker_0 elem pos N i) (if_134_19_5_abs i vacker_0 i1 vacker_1 elem pos N i) (if_134_19_5_abs i vacker_0 i2 vacker_2 elem pos N i) (if_134_19_5_abs i1 vacker_1 i vacker_0 elem pos N i) (if_134_19_5_abs i1 vacker_1 i1 vacker_1 elem pos N i) (if_134_19_5_abs i1 vacker_1 i2 vacker_2 elem pos N i) (if_134_19_5_abs i2 vacker_2 i vacker_0 elem pos N i) (if_134_19_5_abs i2 vacker_2 i1 vacker_1 elem pos N i) (if_134_19_5_abs i2 vacker_2 i2 vacker_2 elem pos N i) (not (= elem vacker_0))) (assign_142_23_5_abs i2 vacker_2 i1 vacker_1 elem pos N i))))
;
;(assign)  pos := i
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_121_20_2_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_121_20_2_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_121_20_2_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_121_20_2_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_130_21_2_abs i2 vacker_1 i1 vacker_0 elem i N i))))
;
;(assign)  i := (N+2)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_130_21_2_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_130_21_2_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_130_21_2_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_130_21_2_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_142_23_5_abs i2 vacker_1 i1 vacker_0 elem pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_142_23_5_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_142_23_5_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_142_23_5_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_142_23_5_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (while_145_17_1_abs i2 vacker_1 i1 vacker_0 elem pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_151_26_8_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_151_26_8_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_151_26_8_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_151_26_8_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (while_216_27_8_abs i2 vacker_1 i1 vacker_0 elem pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_216_27_8_abs i1 vacker_0 i1 vacker_0 elem pos N i) (while_216_27_8_abs i1 vacker_0 i2 vacker_1 elem pos N i) (while_216_27_8_abs i2 vacker_1 i1 vacker_0 elem pos N i) (while_216_27_8_abs i2 vacker_1 i2 vacker_1 elem pos N i) (< i pos)) (assert_189_29_10_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_216_27_8_abs i1 vacker_0 i1 vacker_0 elem pos N i) (while_216_27_8_abs i1 vacker_0 i2 vacker_1 elem pos N i) (while_216_27_8_abs i2 vacker_1 i1 vacker_0 elem pos N i) (while_216_27_8_abs i2 vacker_1 i2 vacker_1 elem pos N i) (not (< i pos))) (assert_239_33_8_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(assert)  (((k>=0)&&(k<pos))=>(!(a[k]==elem)))
(assert (forall ( (k Int) (i Int) (N Int) (pos Int) (elem Int) (acker Int)) (=> (and (assert_189_29_10_abs k acker k acker elem pos N i) (>= k 0) (< k pos)) (not (= acker elem)))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_189_29_10_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assert_189_29_10_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assert_189_29_10_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assert_189_29_10_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assert_204_30_10_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (acker Int)) (=> (assert_204_30_10_abs i acker i acker elem pos N i) (not (= acker elem)))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_204_30_10_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assert_204_30_10_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assert_204_30_10_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assert_204_30_10_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (assign_213_31_10_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_213_31_10_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assign_213_31_10_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assign_213_31_10_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assign_213_31_10_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (while_216_27_8_abs i2 vacker_1 i1 vacker_0 elem pos N (+ i 1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (acker Int)) (=> (assert_239_33_8_abs pos acker pos acker elem pos N i) (or (= acker elem) (= (- 0 1) pos)))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_239_33_8_abs i1 vacker_0 i1 vacker_0 elem pos N i) (assert_239_33_8_abs i1 vacker_0 i2 vacker_1 elem pos N i) (assert_239_33_8_abs i2 vacker_1 i1 vacker_0 elem pos N i) (assert_239_33_8_abs i2 vacker_1 i2 vacker_1 elem pos N i)) (end_abs i2 vacker_1 i1 vacker_0 elem pos N i))))
(check-sat)
