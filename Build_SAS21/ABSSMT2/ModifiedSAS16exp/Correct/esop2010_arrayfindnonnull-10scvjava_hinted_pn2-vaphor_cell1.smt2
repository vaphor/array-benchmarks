;Number of predicates (nodes) = 17
;Number of variables = 4
;Number of clauses = 24
;
(set-logic HORN)
(declare-fun assert_241_29_8 (Int Int Int Int Int) Bool)
(declare-fun assign_214_27_3 (Int Int Int Int Int) Bool)
(declare-fun assert_205_26_10 (Int Int Int Int Int) Bool)
(declare-fun assert_191_25_10 (Int Int Int Int Int) Bool)
(declare-fun while_217_23_1 (Int Int Int Int Int) Bool)
(declare-fun assign_154_22_8 (Int Int Int Int Int) Bool)
(declare-fun assign_145_20_5 (Int Int Int Int Int) Bool)
(declare-fun assign_133_18_2 (Int Int Int Int Int) Bool)
(declare-fun assign_124_17_2 (Int Int Int Int Int) Bool)
(declare-fun if_137_16_5 (Int Int Int Int Int) Bool)
(declare-fun assert_105_15_13 (Int Int Int Int Int) Bool)
(declare-fun while_148_14_1 (Int Int Int Int Int) Bool)
(declare-fun assign_68_13_8 (Int Int Int Int Int) Bool)
(declare-fun assign_62_12_1 (Int Int Int Int Int) Bool)
(declare-fun assign_53_11_1 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (start a_ind a_val pos N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (start a_ind a_val pos N i) (assign_53_11_1 a_ind a_val pos N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (rnd Int)) (=> (assign_53_11_1 a_ind a_val pos N i) (assign_62_12_1 a_ind a_val pos rnd i))))
;
;(assign)  pos := (0-1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_62_12_1 a_ind a_val pos N i) (assign_68_13_8 a_ind a_val (- 0 1) N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_68_13_8 a_ind a_val pos N i) (while_148_14_1 a_ind a_val pos N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (and (while_148_14_1 a_ind a_val pos N i) (< i N)) (assert_105_15_13 a_ind a_val pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (and (while_148_14_1 a_ind a_val pos N i) (not (< i N))) (assign_154_22_8 a_ind a_val pos N i))))
;
;(assert)  (((k>=0)&&(k<i))=>(a[k]==0))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_105_15_13 a_ind a_val pos N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_105_15_13 k tmp_select_a pos N i)) (and (< a_ind k) (assert_105_15_13 k tmp_select_a pos N i)))) (=> (and (>= k 0) (< k i)) (= tmp_select_a 0)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assert_105_15_13 a_ind a_val pos N i) (if_137_16_5 a_ind a_val pos N i))))
;
;(if)      if((!(a[i]==0)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (if_137_16_5 a_ind a_val pos N i) (not (= tmp_select_a 0)) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (if_137_16_5 i tmp_select_a pos N i)) (and (< a_ind i) (if_137_16_5 i tmp_select_a pos N i)))) (assign_124_17_2 a_ind a_val pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (if_137_16_5 a_ind a_val pos N i) (not (not (= tmp_select_a 0))) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (if_137_16_5 i tmp_select_a pos N i)) (and (< a_ind i) (if_137_16_5 i tmp_select_a pos N i)))) (assign_145_20_5 a_ind a_val pos N i))))
;
;(assign)  pos := i
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_124_17_2 a_ind a_val pos N i) (assign_133_18_2 a_ind a_val i N i))))
;
;(assign)  i := (N+2)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_133_18_2 a_ind a_val pos N i) (assign_145_20_5 a_ind a_val pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_145_20_5 a_ind a_val pos N i) (while_148_14_1 a_ind a_val pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_154_22_8 a_ind a_val pos N i) (while_217_23_1 a_ind a_val pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (and (while_217_23_1 a_ind a_val pos N i) (< i pos)) (assert_191_25_10 a_ind a_val pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (and (while_217_23_1 a_ind a_val pos N i) (not (< i pos))) (assert_241_29_8 a_ind a_val pos N i))))
;
;(assert)  (((k>=0)&&(k<pos))=>(a[k]==0))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_191_25_10 a_ind a_val pos N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_191_25_10 k tmp_select_a pos N i)) (and (< a_ind k) (assert_191_25_10 k tmp_select_a pos N i)))) (=> (and (>= k 0) (< k pos)) (= tmp_select_a 0)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assert_191_25_10 a_ind a_val pos N i) (assert_205_26_10 a_ind a_val pos N i))))
;
;(assert)  (a[i]==0)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_205_26_10 a_ind a_val pos N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_205_26_10 i tmp_select_a pos N i)) (and (< a_ind i) (assert_205_26_10 i tmp_select_a pos N i)))) (= tmp_select_a 0))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assert_205_26_10 a_ind a_val pos N i) (assign_214_27_3 a_ind a_val pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_214_27_3 a_ind a_val pos N i) (while_217_23_1 a_ind a_val pos N (+ i 1)))))
;
;(assert)  ((!(a[pos]==0))||(pos==(0-1)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_241_29_8 a_ind a_val pos N i) (or (and (= a_ind pos) (= tmp_select_a a_val)) (and (< pos a_ind) (assert_241_29_8 pos tmp_select_a pos N i)) (and (< a_ind pos) (assert_241_29_8 pos tmp_select_a pos N i)))) (or (not (= tmp_select_a 0)) (= pos (- 0 1))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assert_241_29_8 a_ind a_val pos N i) (end a_ind a_val pos N i))))
(check-sat)
