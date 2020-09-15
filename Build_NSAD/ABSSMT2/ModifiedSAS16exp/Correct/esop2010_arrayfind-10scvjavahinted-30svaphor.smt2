;Number of predicates (nodes) = 18
;Number of variables = 5
;Number of clauses = 25
;
(set-logic HORN)
(declare-fun assert_33_8_239 (Int Int Int Int Int Int) Bool)
(declare-fun assign_31_10_213 (Int Int Int Int Int Int) Bool)
(declare-fun assert_30_10_204 (Int Int Int Int Int Int) Bool)
(declare-fun assert_29_10_189 (Int Int Int Int Int Int) Bool)
(declare-fun while_27_8_216 (Int Int Int Int Int Int) Bool)
(declare-fun assign_26_8_151 (Int Int Int Int Int Int) Bool)
(declare-fun assign_23_5_142 (Int Int Int Int Int Int) Bool)
(declare-fun assign_21_2_130 (Int Int Int Int Int Int) Bool)
(declare-fun assign_20_2_121 (Int Int Int Int Int Int) Bool)
(declare-fun if_19_5_134 (Int Int Int Int Int Int) Bool)
(declare-fun assert_18_12_103 (Int Int Int Int Int Int) Bool)
(declare-fun while_17_1_145 (Int Int Int Int Int Int) Bool)
(declare-fun assign_15_1_65 (Int Int Int Int Int Int) Bool)
(declare-fun assign_14_1_56 (Int Int Int Int Int Int) Bool)
(declare-fun assign_13_1_44 (Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_32 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (start a_ind a_val elem pos N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (start a_ind a_val elem pos N i) (assign_12_1_32 a_ind a_val elem pos N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_12_1_32 a_ind a_val elem pos N i) (assign_13_1_44 a_ind a_val elem pos N 0))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (rnd Int)) (=> (assign_13_1_44 a_ind a_val elem pos N i) (assign_14_1_56 a_ind a_val elem pos rnd i))))
;
;(assign)  elem := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (rnd Int)) (=> (assign_14_1_56 a_ind a_val elem pos N i) (assign_15_1_65 a_ind a_val rnd pos N i))))
;
;(assign)  pos := (0-1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_15_1_65 a_ind a_val elem pos N i) (while_17_1_145 a_ind a_val elem (- 0 1) N i))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (and (while_17_1_145 a_ind a_val elem pos N i) (< i N)) (assert_18_12_103 a_ind a_val elem pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (and (while_17_1_145 a_ind a_val elem pos N i) (not (< i N))) (assign_26_8_151 a_ind a_val elem pos N i))))
;
;(assert)  (((k>=0)&&(k<i))=>(!(a[k]==elem)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (k Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_18_12_103 a_ind a_val elem pos N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_18_12_103 k tmp_select_a elem pos N i)) (and (< a_ind k) (assert_18_12_103 k tmp_select_a elem pos N i)))) (=> (and (>= k 0) (< k i)) (not (= tmp_select_a elem))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assert_18_12_103 a_ind a_val elem pos N i) (if_19_5_134 a_ind a_val elem pos N i))))
;
;(if)      if((a[i]==elem))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (if_19_5_134 a_ind a_val elem pos N i) (= tmp_select_a elem) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (if_19_5_134 i tmp_select_a elem pos N i)) (and (< a_ind i) (if_19_5_134 i tmp_select_a elem pos N i)))) (assign_20_2_121 a_ind a_val elem pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (if_19_5_134 a_ind a_val elem pos N i) (not (= tmp_select_a elem)) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (if_19_5_134 i tmp_select_a elem pos N i)) (and (< a_ind i) (if_19_5_134 i tmp_select_a elem pos N i)))) (assign_23_5_142 a_ind a_val elem pos N i))))
;
;(assign)  pos := i
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_20_2_121 a_ind a_val elem pos N i) (assign_21_2_130 a_ind a_val elem i N i))))
;
;(assign)  i := (N+2)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_21_2_130 a_ind a_val elem pos N i) (assign_23_5_142 a_ind a_val elem pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_23_5_142 a_ind a_val elem pos N i) (while_17_1_145 a_ind a_val elem pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_26_8_151 a_ind a_val elem pos N i) (while_27_8_216 a_ind a_val elem pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (and (while_27_8_216 a_ind a_val elem pos N i) (< i pos)) (assert_29_10_189 a_ind a_val elem pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (and (while_27_8_216 a_ind a_val elem pos N i) (not (< i pos))) (assert_33_8_239 a_ind a_val elem pos N i))))
;
;(assert)  (((k>=0)&&(k<pos))=>(!(a[k]==elem)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (k Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_29_10_189 a_ind a_val elem pos N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_29_10_189 k tmp_select_a elem pos N i)) (and (< a_ind k) (assert_29_10_189 k tmp_select_a elem pos N i)))) (=> (and (>= k 0) (< k pos)) (not (= tmp_select_a elem))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assert_29_10_189 a_ind a_val elem pos N i) (assert_30_10_204 a_ind a_val elem pos N i))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_30_10_204 a_ind a_val elem pos N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_30_10_204 i tmp_select_a elem pos N i)) (and (< a_ind i) (assert_30_10_204 i tmp_select_a elem pos N i)))) (not (= tmp_select_a elem)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assert_30_10_204 a_ind a_val elem pos N i) (assign_31_10_213 a_ind a_val elem pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_31_10_213 a_ind a_val elem pos N i) (while_27_8_216 a_ind a_val elem pos N (+ i 1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_33_8_239 a_ind a_val elem pos N i) (or (and (= a_ind pos) (= tmp_select_a a_val)) (and (< pos a_ind) (assert_33_8_239 pos tmp_select_a elem pos N i)) (and (< a_ind pos) (assert_33_8_239 pos tmp_select_a elem pos N i)))) (or (= tmp_select_a elem) (= pos (- 0 1))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assert_33_8_239 a_ind a_val elem pos N i) (end a_ind a_val elem pos N i))))
(check-sat)
