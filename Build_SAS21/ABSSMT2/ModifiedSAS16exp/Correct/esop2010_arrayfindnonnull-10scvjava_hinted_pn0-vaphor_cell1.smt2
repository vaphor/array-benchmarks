;Number of predicates (nodes) = 17
;Number of variables = 4
;Number of clauses = 24
;
(set-logic HORN)
(declare-fun assert_29_8_241 (Int Int Int Int Int) Bool)
(declare-fun assign_27_3_214 (Int Int Int Int Int) Bool)
(declare-fun assert_26_10_205 (Int Int Int Int Int) Bool)
(declare-fun assert_25_10_191 (Int Int Int Int Int) Bool)
(declare-fun while_23_1_217 (Int Int Int Int Int) Bool)
(declare-fun assign_22_8_154 (Int Int Int Int Int) Bool)
(declare-fun assign_20_5_145 (Int Int Int Int Int) Bool)
(declare-fun assign_18_2_133 (Int Int Int Int Int) Bool)
(declare-fun assign_17_2_124 (Int Int Int Int Int) Bool)
(declare-fun if_16_5_137 (Int Int Int Int Int) Bool)
(declare-fun assert_15_13_105 (Int Int Int Int Int) Bool)
(declare-fun while_14_1_148 (Int Int Int Int Int) Bool)
(declare-fun assign_13_8_68 (Int Int Int Int Int) Bool)
(declare-fun assign_12_1_62 (Int Int Int Int Int) Bool)
(declare-fun assign_11_1_53 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (start a_ind a_val pos N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (start a_ind a_val pos N i) (assign_11_1_53 a_ind a_val pos N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (rnd Int)) (=> (assign_11_1_53 a_ind a_val pos N i) (assign_12_1_62 a_ind a_val pos rnd i))))
;
;(assign)  pos := (0-1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_12_1_62 a_ind a_val pos N i) (assign_13_8_68 a_ind a_val (- 0 1) N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_13_8_68 a_ind a_val pos N i) (while_14_1_148 a_ind a_val pos N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (and (while_14_1_148 a_ind a_val pos N i) (< i N)) (assert_15_13_105 a_ind a_val pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (and (while_14_1_148 a_ind a_val pos N i) (not (< i N))) (assign_22_8_154 a_ind a_val pos N i))))
;
;(assert)  (((k>=0)&&(k<i))=>(a[k]==0))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_15_13_105 a_ind a_val pos N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_15_13_105 k tmp_select_a pos N i)) (and (< a_ind k) (assert_15_13_105 k tmp_select_a pos N i)))) (=> (and (>= k 0) (< k i)) (= tmp_select_a 0)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assert_15_13_105 a_ind a_val pos N i) (if_16_5_137 a_ind a_val pos N i))))
;
;(if)      if((!(a[i]==0)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (if_16_5_137 a_ind a_val pos N i) (not (= tmp_select_a 0)) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (if_16_5_137 i tmp_select_a pos N i)) (and (< a_ind i) (if_16_5_137 i tmp_select_a pos N i)))) (assign_17_2_124 a_ind a_val pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (if_16_5_137 a_ind a_val pos N i) (not (not (= tmp_select_a 0))) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (if_16_5_137 i tmp_select_a pos N i)) (and (< a_ind i) (if_16_5_137 i tmp_select_a pos N i)))) (assign_20_5_145 a_ind a_val pos N i))))
;
;(assign)  pos := i
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_17_2_124 a_ind a_val pos N i) (assign_18_2_133 a_ind a_val i N i))))
;
;(assign)  i := (N+2)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_18_2_133 a_ind a_val pos N i) (assign_20_5_145 a_ind a_val pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_20_5_145 a_ind a_val pos N i) (while_14_1_148 a_ind a_val pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_22_8_154 a_ind a_val pos N i) (while_23_1_217 a_ind a_val pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (and (while_23_1_217 a_ind a_val pos N i) (< i pos)) (assert_25_10_191 a_ind a_val pos N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (and (while_23_1_217 a_ind a_val pos N i) (not (< i pos))) (assert_29_8_241 a_ind a_val pos N i))))
;
;(assert)  (((k>=0)&&(k<pos))=>(a[k]==0))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_25_10_191 a_ind a_val pos N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_25_10_191 k tmp_select_a pos N i)) (and (< a_ind k) (assert_25_10_191 k tmp_select_a pos N i)))) (=> (and (>= k 0) (< k pos)) (= tmp_select_a 0)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assert_25_10_191 a_ind a_val pos N i) (assert_26_10_205 a_ind a_val pos N i))))
;
;(assert)  (a[i]==0)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_26_10_205 a_ind a_val pos N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_26_10_205 i tmp_select_a pos N i)) (and (< a_ind i) (assert_26_10_205 i tmp_select_a pos N i)))) (= tmp_select_a 0))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assert_26_10_205 a_ind a_val pos N i) (assign_27_3_214 a_ind a_val pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assign_27_3_214 a_ind a_val pos N i) (while_23_1_217 a_ind a_val pos N (+ i 1)))))
;
;(assert)  ((!(a[pos]==0))||(pos==(0-1)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (assert_29_8_241 a_ind a_val pos N i) (or (and (= a_ind pos) (= tmp_select_a a_val)) (and (< pos a_ind) (assert_29_8_241 pos tmp_select_a pos N i)) (and (< a_ind pos) (assert_29_8_241 pos tmp_select_a pos N i)))) (or (not (= tmp_select_a 0)) (= pos (- 0 1))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (pos Int)) (=> (assert_29_8_241 a_ind a_val pos N i) (end a_ind a_val pos N i))))
(check-sat)
