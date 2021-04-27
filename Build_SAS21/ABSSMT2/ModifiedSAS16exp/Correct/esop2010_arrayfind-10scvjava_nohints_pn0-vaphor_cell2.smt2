;Number of predicates (nodes) = 16
;Number of variables = 5
;Number of clauses = 21
;
(set-logic HORN)
(declare-fun assert_33_8_239 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_31_10_213 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_30_10_204 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_27_8_216 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_26_8_151 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_23_5_142 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_21_2_130 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_20_2_121 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun if_19_5_134 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_17_1_145 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_15_1_65 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_14_1_56 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_13_1_44 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_32 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val elem pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_12_1_32 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_12_1_32 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_13_1_44 a0_ind a0_val a1_ind a1_val elem pos N 0))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (rnd Int)) (=> (and (< a0_ind a1_ind) (assign_13_1_44 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_14_1_56 a0_ind a0_val a1_ind a1_val elem pos rnd i))))
;
;(assign)  elem := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (rnd Int)) (=> (and (< a0_ind a1_ind) (assign_14_1_56 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_15_1_65 a0_ind a0_val a1_ind a1_val rnd pos N i))))
;
;(assign)  pos := (0-1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_15_1_65 a0_ind a0_val a1_ind a1_val elem pos N i)) (while_17_1_145 a0_ind a0_val a1_ind a1_val elem (- 0 1) N i))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_17_1_145 a0_ind a0_val a1_ind a1_val elem pos N i) (< i N)) (if_19_5_134 a0_ind a0_val a1_ind a1_val elem pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_17_1_145 a0_ind a0_val a1_ind a1_val elem pos N i) (not (< i N))) (assign_26_8_151 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(if)      if((a[i]==elem))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (if_19_5_134 a0_ind a0_val a1_ind a1_val elem pos N i) (= tmp_select_a elem) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (if_19_5_134 i tmp_select_a a1_ind a1_val elem pos N i) (< i a0_ind) (if_19_5_134 i tmp_select_a a0_ind a0_val elem pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (if_19_5_134 i tmp_select_a a1_ind a1_val elem pos N i) (< a0_ind i) (if_19_5_134 a0_ind a0_val i tmp_select_a elem pos N i)) (and (< a1_ind i) (< a1_ind i) (if_19_5_134 a1_ind a1_val i tmp_select_a elem pos N i) (< a0_ind i) (if_19_5_134 a0_ind a0_val i tmp_select_a elem pos N i)))) (assign_20_2_121 a0_ind a0_val a1_ind a1_val elem pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (if_19_5_134 a0_ind a0_val a1_ind a1_val elem pos N i) (not (= tmp_select_a elem)) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (if_19_5_134 i tmp_select_a a1_ind a1_val elem pos N i) (< i a0_ind) (if_19_5_134 i tmp_select_a a0_ind a0_val elem pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (if_19_5_134 i tmp_select_a a1_ind a1_val elem pos N i) (< a0_ind i) (if_19_5_134 a0_ind a0_val i tmp_select_a elem pos N i)) (and (< a1_ind i) (< a1_ind i) (if_19_5_134 a1_ind a1_val i tmp_select_a elem pos N i) (< a0_ind i) (if_19_5_134 a0_ind a0_val i tmp_select_a elem pos N i)))) (assign_23_5_142 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(assign)  pos := i
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_20_2_121 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_21_2_130 a0_ind a0_val a1_ind a1_val elem i N i))))
;
;(assign)  i := (N+2)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_21_2_130 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_23_5_142 a0_ind a0_val a1_ind a1_val elem pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_23_5_142 a0_ind a0_val a1_ind a1_val elem pos N i)) (while_17_1_145 a0_ind a0_val a1_ind a1_val elem pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_26_8_151 a0_ind a0_val a1_ind a1_val elem pos N i)) (while_27_8_216 a0_ind a0_val a1_ind a1_val elem pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_27_8_216 a0_ind a0_val a1_ind a1_val elem pos N i) (< i pos)) (assert_30_10_204 a0_ind a0_val a1_ind a1_val elem pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_27_8_216 a0_ind a0_val a1_ind a1_val elem pos N i) (not (< i pos))) (assert_33_8_239 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (assert_30_10_204 a0_ind a0_val a1_ind a1_val elem pos N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_30_10_204 i tmp_select_a a1_ind a1_val elem pos N i) (< i a0_ind) (assert_30_10_204 i tmp_select_a a0_ind a0_val elem pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_30_10_204 i tmp_select_a a1_ind a1_val elem pos N i) (< a0_ind i) (assert_30_10_204 a0_ind a0_val i tmp_select_a elem pos N i)) (and (< a1_ind i) (< a1_ind i) (assert_30_10_204 a1_ind a1_val i tmp_select_a elem pos N i) (< a0_ind i) (assert_30_10_204 a0_ind a0_val i tmp_select_a elem pos N i)))) (not (= tmp_select_a elem)))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assert_30_10_204 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_31_10_213 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_31_10_213 a0_ind a0_val a1_ind a1_val elem pos N i)) (while_27_8_216 a0_ind a0_val a1_ind a1_val elem pos N (+ i 1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (assert_33_8_239 a0_ind a0_val a1_ind a1_val elem pos N i) (or (and (= a0_ind pos) (= tmp_select_a a0_val)) (and (= a1_ind pos) (= tmp_select_a a1_val)) (and (< pos a0_ind) (< pos a1_ind) (assert_33_8_239 pos tmp_select_a a1_ind a1_val elem pos N i) (< pos a0_ind) (assert_33_8_239 pos tmp_select_a a0_ind a0_val elem pos N i)) (and (< a0_ind pos) (< pos a1_ind) (< pos a1_ind) (assert_33_8_239 pos tmp_select_a a1_ind a1_val elem pos N i) (< a0_ind pos) (assert_33_8_239 a0_ind a0_val pos tmp_select_a elem pos N i)) (and (< a1_ind pos) (< a1_ind pos) (assert_33_8_239 a1_ind a1_val pos tmp_select_a elem pos N i) (< a0_ind pos) (assert_33_8_239 a0_ind a0_val pos tmp_select_a elem pos N i)))) (or (= tmp_select_a elem) (= pos (- 0 1))))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assert_33_8_239 a0_ind a0_val a1_ind a1_val elem pos N i)) (end a0_ind a0_val a1_ind a1_val elem pos N i))))
(check-sat)
