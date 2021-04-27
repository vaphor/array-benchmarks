;Number of predicates (nodes) = 15
;Number of variables = 4
;Number of clauses = 20
;
(set-logic HORN)
(declare-fun assert_29_8_241 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_27_3_214 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_26_10_205 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_23_1_217 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_22_8_154 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_20_5_145 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_18_2_133 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_17_2_124 (Int Int Int Int Int Int Int) Bool)
(declare-fun if_16_5_137 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_14_1_148 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_13_8_68 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_62 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_11_1_53 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val pos N i)) (assign_11_1_53 a0_ind a0_val a1_ind a1_val pos N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int) (rnd Int)) (=> (and (< a0_ind a1_ind) (assign_11_1_53 a0_ind a0_val a1_ind a1_val pos N i)) (assign_12_1_62 a0_ind a0_val a1_ind a1_val pos rnd i))))
;
;(assign)  pos := (0-1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_12_1_62 a0_ind a0_val a1_ind a1_val pos N i)) (assign_13_8_68 a0_ind a0_val a1_ind a1_val (- 0 1) N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_13_8_68 a0_ind a0_val a1_ind a1_val pos N i)) (while_14_1_148 a0_ind a0_val a1_ind a1_val pos N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_14_1_148 a0_ind a0_val a1_ind a1_val pos N i) (< i N)) (if_16_5_137 a0_ind a0_val a1_ind a1_val pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_14_1_148 a0_ind a0_val a1_ind a1_val pos N i) (not (< i N))) (assign_22_8_154 a0_ind a0_val a1_ind a1_val pos N i))))
;
;(if)      if((!(a[i]==0)))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (if_16_5_137 a0_ind a0_val a1_ind a1_val pos N i) (not (= tmp_select_a 0)) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (if_16_5_137 i tmp_select_a a1_ind a1_val pos N i) (< i a0_ind) (if_16_5_137 i tmp_select_a a0_ind a0_val pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (if_16_5_137 i tmp_select_a a1_ind a1_val pos N i) (< a0_ind i) (if_16_5_137 a0_ind a0_val i tmp_select_a pos N i)) (and (< a1_ind i) (< a1_ind i) (if_16_5_137 a1_ind a1_val i tmp_select_a pos N i) (< a0_ind i) (if_16_5_137 a0_ind a0_val i tmp_select_a pos N i)))) (assign_17_2_124 a0_ind a0_val a1_ind a1_val pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (if_16_5_137 a0_ind a0_val a1_ind a1_val pos N i) (not (not (= tmp_select_a 0))) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (if_16_5_137 i tmp_select_a a1_ind a1_val pos N i) (< i a0_ind) (if_16_5_137 i tmp_select_a a0_ind a0_val pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (if_16_5_137 i tmp_select_a a1_ind a1_val pos N i) (< a0_ind i) (if_16_5_137 a0_ind a0_val i tmp_select_a pos N i)) (and (< a1_ind i) (< a1_ind i) (if_16_5_137 a1_ind a1_val i tmp_select_a pos N i) (< a0_ind i) (if_16_5_137 a0_ind a0_val i tmp_select_a pos N i)))) (assign_20_5_145 a0_ind a0_val a1_ind a1_val pos N i))))
;
;(assign)  pos := i
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_17_2_124 a0_ind a0_val a1_ind a1_val pos N i)) (assign_18_2_133 a0_ind a0_val a1_ind a1_val i N i))))
;
;(assign)  i := (N+2)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_18_2_133 a0_ind a0_val a1_ind a1_val pos N i)) (assign_20_5_145 a0_ind a0_val a1_ind a1_val pos N (+ N 2)))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_20_5_145 a0_ind a0_val a1_ind a1_val pos N i)) (while_14_1_148 a0_ind a0_val a1_ind a1_val pos N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_22_8_154 a0_ind a0_val a1_ind a1_val pos N i)) (while_23_1_217 a0_ind a0_val a1_ind a1_val pos N 0))))
;
;(while)   while((i<pos))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_23_1_217 a0_ind a0_val a1_ind a1_val pos N i) (< i pos)) (assert_26_10_205 a0_ind a0_val a1_ind a1_val pos N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (while_23_1_217 a0_ind a0_val a1_ind a1_val pos N i) (not (< i pos))) (assert_29_8_241 a0_ind a0_val a1_ind a1_val pos N i))))
;
;(assert)  (a[i]==0)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (assert_26_10_205 a0_ind a0_val a1_ind a1_val pos N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_26_10_205 i tmp_select_a a1_ind a1_val pos N i) (< i a0_ind) (assert_26_10_205 i tmp_select_a a0_ind a0_val pos N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_26_10_205 i tmp_select_a a1_ind a1_val pos N i) (< a0_ind i) (assert_26_10_205 a0_ind a0_val i tmp_select_a pos N i)) (and (< a1_ind i) (< a1_ind i) (assert_26_10_205 a1_ind a1_val i tmp_select_a pos N i) (< a0_ind i) (assert_26_10_205 a0_ind a0_val i tmp_select_a pos N i)))) (= tmp_select_a 0))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assert_26_10_205 a0_ind a0_val a1_ind a1_val pos N i)) (assign_27_3_214 a0_ind a0_val a1_ind a1_val pos N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assign_27_3_214 a0_ind a0_val a1_ind a1_val pos N i)) (while_23_1_217 a0_ind a0_val a1_ind a1_val pos N (+ i 1)))))
;
;(assert)  ((!(a[pos]==0))||(pos==(0-1)))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (assert_29_8_241 a0_ind a0_val a1_ind a1_val pos N i) (or (and (= a0_ind pos) (= tmp_select_a a0_val)) (and (= a1_ind pos) (= tmp_select_a a1_val)) (and (< pos a0_ind) (< pos a1_ind) (assert_29_8_241 pos tmp_select_a a1_ind a1_val pos N i) (< pos a0_ind) (assert_29_8_241 pos tmp_select_a a0_ind a0_val pos N i)) (and (< a0_ind pos) (< pos a1_ind) (< pos a1_ind) (assert_29_8_241 pos tmp_select_a a1_ind a1_val pos N i) (< a0_ind pos) (assert_29_8_241 a0_ind a0_val pos tmp_select_a pos N i)) (and (< a1_ind pos) (< a1_ind pos) (assert_29_8_241 a1_ind a1_val pos tmp_select_a pos N i) (< a0_ind pos) (assert_29_8_241 a0_ind a0_val pos tmp_select_a pos N i)))) (or (not (= tmp_select_a 0)) (= pos (- 0 1))))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (pos Int)) (=> (and (< a0_ind a1_ind) (assert_29_8_241 a0_ind a0_val a1_ind a1_val pos N i)) (end a0_ind a0_val a1_ind a1_val pos N i))))
(check-sat)
