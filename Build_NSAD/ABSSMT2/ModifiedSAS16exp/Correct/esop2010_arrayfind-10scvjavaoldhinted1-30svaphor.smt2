;Number of predicates (nodes) = 18
;Number of variables = 5
;Number of clauses = 25
;
(set-logic HORN)
(declare-fun assert_245_33_8 (Int Int Int Int Int Int) Bool)
(declare-fun assign_219_31_10 (Int Int Int Int Int Int) Bool)
(declare-fun assert_210_30_10 (Int Int Int Int Int Int) Bool)
(declare-fun assert_195_29_10 (Int Int Int Int Int Int) Bool)
(declare-fun while_222_27_8 (Int Int Int Int Int Int) Bool)
(declare-fun assign_154_26_8 (Int Int Int Int Int Int) Bool)
(declare-fun assign_145_23_5 (Int Int Int Int Int Int) Bool)
(declare-fun assign_133_21_2 (Int Int Int Int Int Int) Bool)
(declare-fun assign_124_20_2 (Int Int Int Int Int Int) Bool)
(declare-fun if_137_19_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_106_18_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_148_17_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_65_15_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_56_14_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_44_13_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_32_12_1 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (start a_ind a_val elem pos N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (start a_ind a_val elem pos N i) (assign_32_12_1 a_ind a_val elem pos N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_32_12_1 a_ind a_val elem pos N i) (assign_44_13_1 a_ind a_val elem pos N 0))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (rnd Int)) (=> (assign_44_13_1 a_ind a_val elem pos N i) (assign_56_14_1 a_ind a_val elem pos rnd i))))
;
;(assign)  elem := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (rnd Int)) (=> (assign_56_14_1 a_ind a_val elem pos N i) (assign_65_15_1 a_ind a_val rnd pos N i))))
;
;(assign)  pos := (0-1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_65_15_1 a_ind a_val elem pos N i) (while_148_17_1 a_ind a_val elem (- 0 1) N i))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (and (while_148_17_1 a_ind a_val elem pos N i) (< i N)) (assert_106_18_12 a_ind a_val elem pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (and (while_148_17_1 a_ind a_val elem pos N i) (not (< i N))) (assign_154_26_8 a_ind a_val elem pos N i))))
;
;(assert)  (((k>=0)&&(k<i))=>(!(a[k]==elem)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (k Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_106_18_12 a_ind a_val elem pos N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_106_18_12 k tmp_select_a elem pos N i)) (and (< a_ind k) (assert_106_18_12 k tmp_select_a elem pos N i)))) (=> (and (>= k 0) (< k i)) (not (= tmp_select_a elem))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assert_106_18_12 a_ind a_val elem pos N i) (if_137_19_5 a_ind a_val elem pos N i))))
;
;(if)      if((a[i]==elem))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (if_137_19_5 a_ind a_val elem pos N i) (= tmp_select_a elem) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (if_137_19_5 i tmp_select_a elem pos N i)) (and (< a_ind i) (if_137_19_5 i tmp_select_a elem pos N i)))) (assign_124_20_2 a_ind a_val elem pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (if_137_19_5 a_ind a_val elem pos N i) (not (= tmp_select_a elem)) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (if_137_19_5 i tmp_select_a elem pos N i)) (and (< a_ind i) (if_137_19_5 i tmp_select_a elem pos N i)))) (assign_145_23_5 a_ind a_val elem pos N i))))
;
;(assign)  pos := i
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_124_20_2 a_ind a_val elem pos N i) (assign_133_21_2 a_ind a_val elem i N i))))
;
;(assign)  i := (N+2)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_133_21_2 a_ind a_val elem pos N i) (assign_145_23_5 a_ind a_val elem pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_145_23_5 a_ind a_val elem pos N i) (while_148_17_1 a_ind a_val elem pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_154_26_8 a_ind a_val elem pos N i) (while_222_27_8 a_ind a_val elem pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (and (while_222_27_8 a_ind a_val elem pos N i) (< i pos)) (assert_195_29_10 a_ind a_val elem pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (and (while_222_27_8 a_ind a_val elem pos N i) (not (< i pos))) (assert_245_33_8 a_ind a_val elem pos N i))))
;
;(assert)  (((k>=0)&&(k<pos))=>(!(a[k]==elem)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (k Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_195_29_10 a_ind a_val elem pos N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_195_29_10 k tmp_select_a elem pos N i)) (and (< a_ind k) (assert_195_29_10 k tmp_select_a elem pos N i)))) (=> (and (>= k 0) (< k pos)) (not (= tmp_select_a elem))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assert_195_29_10 a_ind a_val elem pos N i) (assert_210_30_10 a_ind a_val elem pos N i))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_210_30_10 a_ind a_val elem pos N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_210_30_10 i tmp_select_a elem pos N i)) (and (< a_ind i) (assert_210_30_10 i tmp_select_a elem pos N i)))) (not (= tmp_select_a elem)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assert_210_30_10 a_ind a_val elem pos N i) (assign_219_31_10 a_ind a_val elem pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assign_219_31_10 a_ind a_val elem pos N i) (while_222_27_8 a_ind a_val elem pos N (+ i 1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_245_33_8 a_ind a_val elem pos N i) (or (and (= a_ind pos) (= tmp_select_a a_val)) (and (< pos a_ind) (assert_245_33_8 pos tmp_select_a elem pos N i)) (and (< a_ind pos) (assert_245_33_8 pos tmp_select_a elem pos N i)))) (or (= tmp_select_a elem) (= pos (- 0 1))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (elem Int) (i Int) (pos Int)) (=> (assert_245_33_8 a_ind a_val elem pos N i) (end a_ind a_val elem pos N i))))
(check-sat)
