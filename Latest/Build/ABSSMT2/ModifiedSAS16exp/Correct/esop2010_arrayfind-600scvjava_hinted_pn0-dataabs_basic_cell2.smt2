
(set-logic HORN)
(declare-rel assert_33_8_239_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_31_10_213_abs (Int Int Int Int Int Int Int Int))
(declare-rel assert_30_10_204_abs (Int Int Int Int Int Int Int Int))
(declare-rel assert_29_10_189_abs (Int Int Int Int Int Int Int Int))
(declare-rel while_27_8_216_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_26_8_151_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_23_5_142_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_21_2_130_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_20_2_121_abs (Int Int Int Int Int Int Int Int))
(declare-rel if_19_5_134_abs (Int Int Int Int Int Int Int Int))
(declare-rel assert_18_12_103_abs (Int Int Int Int Int Int Int Int))
(declare-rel while_17_1_145_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_15_1_65_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_14_1_56_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_13_1_44_abs (Int Int Int Int Int Int Int Int))
(declare-rel assign_12_1_32_abs (Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 18
;Number of variables = 5
;Number of clauses = 25
;
(assert (forall ( (a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a i2) i1 (select a i1) elem pos N i)))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (start_abs i1 (select a i1) i1 (select a i1) elem pos N i) (start_abs i1 (select a i1) i2 (select a i2) elem pos N i) (start_abs i2 (select a i2) i1 (select a i1) elem pos N i) (start_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (assign_12_1_32_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_12_1_32_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_12_1_32_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_12_1_32_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_12_1_32_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (assign_13_1_44_abs i2 (select a i2) i1 (select a i1) elem pos N 0))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_13_1_44_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_13_1_44_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_13_1_44_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_13_1_44_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (assign_14_1_56_abs i2 (select a i2) i1 (select a i1) elem pos rnd i))))
;
;(assign)  elem := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_14_1_56_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_14_1_56_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_14_1_56_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_14_1_56_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (assign_15_1_65_abs i2 (select a i2) i1 (select a i1) rnd pos N i))))
;
;(assign)  pos := (0-1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_15_1_65_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_15_1_65_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_15_1_65_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_15_1_65_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (while_17_1_145_abs i2 (select a i2) i1 (select a i1) elem (- 0 1) N i))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_17_1_145_abs i1 (select a i1) i1 (select a i1) elem pos N i) (while_17_1_145_abs i1 (select a i1) i2 (select a i2) elem pos N i) (while_17_1_145_abs i2 (select a i2) i1 (select a i1) elem pos N i) (while_17_1_145_abs i2 (select a i2) i2 (select a i2) elem pos N i) (< i N)) (assert_18_12_103_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
(assert (forall ( (a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_17_1_145_abs i1 (select a i1) i1 (select a i1) elem pos N i) (while_17_1_145_abs i1 (select a i1) i2 (select a i2) elem pos N i) (while_17_1_145_abs i2 (select a i2) i1 (select a i1) elem pos N i) (while_17_1_145_abs i2 (select a i2) i2 (select a i2) elem pos N i) (not (< i N))) (assign_26_8_151_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
;
;(assert)  (((k>=0)&&(k<i))=>(!(a[k]==elem)))
(assert (forall ( (k Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int))) (=> (and (assert_18_12_103_abs k (select a k) k (select a k) elem pos N i) (>= k 0) (< k i)) (not (= elem (select a k))))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_18_12_103_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assert_18_12_103_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assert_18_12_103_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assert_18_12_103_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (if_19_5_134_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
;
;(if)      if((a[i]==elem))
(assert (forall ( (a (Array Int Int)) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (if_19_5_134_abs i (select a i) i (select a i) (select a i) pos N i) (if_19_5_134_abs i (select a i) i1 (select a i1) (select a i) pos N i) (if_19_5_134_abs i (select a i) i2 (select a i2) (select a i) pos N i) (if_19_5_134_abs i1 (select a i1) i (select a i) (select a i) pos N i) (if_19_5_134_abs i1 (select a i1) i1 (select a i1) (select a i) pos N i) (if_19_5_134_abs i1 (select a i1) i2 (select a i2) (select a i) pos N i) (if_19_5_134_abs i2 (select a i2) i (select a i) (select a i) pos N i) (if_19_5_134_abs i2 (select a i2) i1 (select a i1) (select a i) pos N i) (if_19_5_134_abs i2 (select a i2) i2 (select a i2) (select a i) pos N i)) (assign_20_2_121_abs i2 (select a i2) i1 (select a i1) (select a i) pos N i))))
(assert (forall ( (a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (if_19_5_134_abs i (select a i) i (select a i) elem pos N i) (if_19_5_134_abs i (select a i) i1 (select a i1) elem pos N i) (if_19_5_134_abs i (select a i) i2 (select a i2) elem pos N i) (if_19_5_134_abs i1 (select a i1) i (select a i) elem pos N i) (if_19_5_134_abs i1 (select a i1) i1 (select a i1) elem pos N i) (if_19_5_134_abs i1 (select a i1) i2 (select a i2) elem pos N i) (if_19_5_134_abs i2 (select a i2) i (select a i) elem pos N i) (if_19_5_134_abs i2 (select a i2) i1 (select a i1) elem pos N i) (if_19_5_134_abs i2 (select a i2) i2 (select a i2) elem pos N i) (not (= elem (select a i)))) (assign_23_5_142_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
;
;(assign)  pos := i
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_20_2_121_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_20_2_121_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_20_2_121_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_20_2_121_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (assign_21_2_130_abs i2 (select a i2) i1 (select a i1) elem i N i))))
;
;(assign)  i := (N+2)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_21_2_130_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_21_2_130_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_21_2_130_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_21_2_130_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (assign_23_5_142_abs i2 (select a i2) i1 (select a i1) elem pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_23_5_142_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_23_5_142_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_23_5_142_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_23_5_142_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (while_17_1_145_abs i2 (select a i2) i1 (select a i1) elem pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_26_8_151_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_26_8_151_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_26_8_151_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_26_8_151_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (while_27_8_216_abs i2 (select a i2) i1 (select a i1) elem pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ( (a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_27_8_216_abs i1 (select a i1) i1 (select a i1) elem pos N i) (while_27_8_216_abs i1 (select a i1) i2 (select a i2) elem pos N i) (while_27_8_216_abs i2 (select a i2) i1 (select a i1) elem pos N i) (while_27_8_216_abs i2 (select a i2) i2 (select a i2) elem pos N i) (< i pos)) (assert_29_10_189_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
(assert (forall ( (a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_27_8_216_abs i1 (select a i1) i1 (select a i1) elem pos N i) (while_27_8_216_abs i1 (select a i1) i2 (select a i2) elem pos N i) (while_27_8_216_abs i2 (select a i2) i1 (select a i1) elem pos N i) (while_27_8_216_abs i2 (select a i2) i2 (select a i2) elem pos N i) (not (< i pos))) (assert_33_8_239_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
;
;(assert)  (((k>=0)&&(k<pos))=>(!(a[k]==elem)))
(assert (forall ( (k Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int))) (=> (and (assert_29_10_189_abs k (select a k) k (select a k) elem pos N i) (>= k 0) (< k pos)) (not (= elem (select a k))))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_29_10_189_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assert_29_10_189_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assert_29_10_189_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assert_29_10_189_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (assert_30_10_204_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int))) (=> (assert_30_10_204_abs i (select a i) i (select a i) elem pos N i) (not (= elem (select a i))))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_30_10_204_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assert_30_10_204_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assert_30_10_204_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assert_30_10_204_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (assign_31_10_213_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_31_10_213_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assign_31_10_213_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assign_31_10_213_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assign_31_10_213_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (while_27_8_216_abs i2 (select a i2) i1 (select a i1) elem pos N (+ i 1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int))) (=> (assert_33_8_239_abs pos (select a pos) pos (select a pos) elem pos N i) (or (= elem (select a pos)) (= (- 0 1) pos)))))
(assert (forall ( (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_33_8_239_abs i1 (select a i1) i1 (select a i1) elem pos N i) (assert_33_8_239_abs i1 (select a i1) i2 (select a i2) elem pos N i) (assert_33_8_239_abs i2 (select a i2) i1 (select a i1) elem pos N i) (assert_33_8_239_abs i2 (select a i2) i2 (select a i2) elem pos N i)) (end_abs i2 (select a i2) i1 (select a i1) elem pos N i))))
(check-sat)
