;Number of predicates (nodes) = 16
;Number of variables = 5
;Number of clauses = 21
;
(set-logic HORN)
(declare-fun assert_239_33_8 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_213_31_10 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_204_30_10 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_216_27_8 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_151_26_8 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_142_23_5 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_130_21_2 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_121_20_2 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun if_134_19_5 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_145_17_1 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_65_15_1 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_56_14_1 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_44_13_1 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_32_12_1 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val elem pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_32_12_1 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_32_12_1 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_44_13_1 a0_ind a0_val a1_ind a1_val elem pos N 0))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (rnd Int)) (=> (and (< a0_ind a1_ind) (assign_44_13_1 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_56_14_1 a0_ind a0_val a1_ind a1_val elem pos rnd i))))
;
;(assign)  elem := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (rnd Int)) (=> (and (< a0_ind a1_ind) (assign_56_14_1 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_65_15_1 a0_ind a0_val a1_ind a1_val rnd pos N i))))
;
;(assign)  pos := (0-1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_65_15_1 a0_ind a0_val a1_ind a1_val elem pos N i)) (while_145_17_1 a0_ind a0_val a1_ind a1_val elem (- 0 1) N i))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_145_17_1 a0_ind a0_val a1_ind a1_val elem pos N i) (< i N)) (if_134_19_5 a0_ind a0_val a1_ind a1_val elem pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_145_17_1 a0_ind a0_val a1_ind a1_val elem pos N i) (not (< i N))) (assign_151_26_8 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(if)      if((a[i]==elem))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (if_134_19_5 a0_ind a0_val a1_ind a1_val elem pos N i) (= tmp_select_a elem) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (if_134_19_5 i tmp_select_a a1_ind a1_val elem pos N i) (< i a0_ind) (if_134_19_5 i tmp_select_a a0_ind a0_val elem pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (if_134_19_5 i tmp_select_a a1_ind a1_val elem pos N i) (< a0_ind i) (if_134_19_5 a0_ind a0_val i tmp_select_a elem pos N i)) (and (< a1_ind i) (< a1_ind i) (if_134_19_5 a1_ind a1_val i tmp_select_a elem pos N i) (< a0_ind i) (if_134_19_5 a0_ind a0_val i tmp_select_a elem pos N i)))) (assign_121_20_2 a0_ind a0_val a1_ind a1_val elem pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (if_134_19_5 a0_ind a0_val a1_ind a1_val elem pos N i) (not (= tmp_select_a elem)) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (if_134_19_5 i tmp_select_a a1_ind a1_val elem pos N i) (< i a0_ind) (if_134_19_5 i tmp_select_a a0_ind a0_val elem pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (if_134_19_5 i tmp_select_a a1_ind a1_val elem pos N i) (< a0_ind i) (if_134_19_5 a0_ind a0_val i tmp_select_a elem pos N i)) (and (< a1_ind i) (< a1_ind i) (if_134_19_5 a1_ind a1_val i tmp_select_a elem pos N i) (< a0_ind i) (if_134_19_5 a0_ind a0_val i tmp_select_a elem pos N i)))) (assign_142_23_5 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(assign)  pos := i
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_121_20_2 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_130_21_2 a0_ind a0_val a1_ind a1_val elem i N i))))
;
;(assign)  i := (N+2)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_130_21_2 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_142_23_5 a0_ind a0_val a1_ind a1_val elem pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_142_23_5 a0_ind a0_val a1_ind a1_val elem pos N i)) (while_145_17_1 a0_ind a0_val a1_ind a1_val elem pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_151_26_8 a0_ind a0_val a1_ind a1_val elem pos N i)) (while_216_27_8 a0_ind a0_val a1_ind a1_val elem pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_216_27_8 a0_ind a0_val a1_ind a1_val elem pos N i) (< i pos)) (assert_204_30_10 a0_ind a0_val a1_ind a1_val elem pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_216_27_8 a0_ind a0_val a1_ind a1_val elem pos N i) (not (< i pos))) (assert_239_33_8 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (assert_204_30_10 a0_ind a0_val a1_ind a1_val elem pos N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_204_30_10 i tmp_select_a a1_ind a1_val elem pos N i) (< i a0_ind) (assert_204_30_10 i tmp_select_a a0_ind a0_val elem pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_204_30_10 i tmp_select_a a1_ind a1_val elem pos N i) (< a0_ind i) (assert_204_30_10 a0_ind a0_val i tmp_select_a elem pos N i)) (and (< a1_ind i) (< a1_ind i) (assert_204_30_10 a1_ind a1_val i tmp_select_a elem pos N i) (< a0_ind i) (assert_204_30_10 a0_ind a0_val i tmp_select_a elem pos N i)))) (not (= tmp_select_a elem)))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assert_204_30_10 a0_ind a0_val a1_ind a1_val elem pos N i)) (assign_213_31_10 a0_ind a0_val a1_ind a1_val elem pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_213_31_10 a0_ind a0_val a1_ind a1_val elem pos N i)) (while_216_27_8 a0_ind a0_val a1_ind a1_val elem pos N (+ i 1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (assert_239_33_8 a0_ind a0_val a1_ind a1_val elem pos N i) (or (and (= a0_ind pos) (= tmp_select_a a0_val)) (and (= a1_ind pos) (= tmp_select_a a1_val)) (and (< pos a0_ind) (< pos a1_ind) (assert_239_33_8 pos tmp_select_a a1_ind a1_val elem pos N i) (< pos a0_ind) (assert_239_33_8 pos tmp_select_a a0_ind a0_val elem pos N i)) (and (< a0_ind pos) (< pos a1_ind) (< pos a1_ind) (assert_239_33_8 pos tmp_select_a a1_ind a1_val elem pos N i) (< a0_ind pos) (assert_239_33_8 a0_ind a0_val pos tmp_select_a elem pos N i)) (and (< a1_ind pos) (< a1_ind pos) (assert_239_33_8 a1_ind a1_val pos tmp_select_a elem pos N i) (< a0_ind pos) (assert_239_33_8 a0_ind a0_val pos tmp_select_a elem pos N i)))) (or (= tmp_select_a elem) (= pos (- 0 1))))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (elem Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assert_239_33_8 a0_ind a0_val a1_ind a1_val elem pos N i)) (end a0_ind a0_val a1_ind a1_val elem pos N i))))
(check-sat)
