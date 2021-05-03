;Number of predicates (nodes) = 12
;Number of variables = 4
;Number of clauses = 15
;
(set-logic HORN)
(declare-fun assign_23_5_184 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_22_5_175 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_20_1_187 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_19_1_127 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_16_5_118 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_15_5_109 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_13_1_121 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_12_8_65 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_10_1_59 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_9_1_47 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val c N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val c N i)) (assign_9_1_47 a0_ind a0_val a1_ind a1_val c N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (rnd Int)) (=> (and (< a0_ind a1_ind) (assign_9_1_47 a0_ind a0_val a1_ind a1_val c N i)) (assign_10_1_59 a0_ind a0_val a1_ind a1_val c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (rnd Int)) (=> (and (< a0_ind a1_ind) (assign_10_1_59 a0_ind a0_val a1_ind a1_val c N i)) (assign_12_8_65 a0_ind a0_val a1_ind a1_val rnd N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (assign_12_8_65 a0_ind a0_val a1_ind a1_val c N i)) (while_13_1_121 a0_ind a0_val a1_ind a1_val c N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (while_13_1_121 a0_ind a0_val a1_ind a1_val c N i) (< i N)) (arrayassign_15_5_109 a0_ind a0_val a1_ind a1_val c N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (while_13_1_121 a0_ind a0_val a1_ind a1_val c N i) (not (< i N))) (assign_19_1_127 a0_ind a0_val a1_ind a1_val c N i))))
;
;(aassign) a[i] := c
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (tmp_store_a0_ind Int) (tmp_store_a0_val Int) (tmp_store_a1_ind Int) (tmp_store_a1_val Int)) (=> (and (< a0_ind a1_ind) (arrayassign_15_5_109 a0_ind a0_val a1_ind a1_val c N i) (= tmp_store_a0_ind a0_ind) (= tmp_store_a1_ind a1_ind) (or (and (= a0_ind i) (= tmp_store_a1_val a1_val) (= tmp_store_a0_val c)) (and (= a1_ind i) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val c)) (and (not (= a0_ind i)) (not (= a1_ind i)) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val a1_val)))) (assign_16_5_118 tmp_store_a0_ind tmp_store_a0_val tmp_store_a1_ind tmp_store_a1_val c N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (assign_16_5_118 a0_ind a0_val a1_ind a1_val c N i)) (while_13_1_121 a0_ind a0_val a1_ind a1_val c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (assign_19_1_127 a0_ind a0_val a1_ind a1_val c N i)) (while_20_1_187 a0_ind a0_val a1_ind a1_val c N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (while_20_1_187 a0_ind a0_val a1_ind a1_val c N i) (< i N)) (assert_22_5_175 a0_ind a0_val a1_ind a1_val c N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (while_20_1_187 a0_ind a0_val a1_ind a1_val c N i) (not (< i N))) (end a0_ind a0_val a1_ind a1_val c N i))))
;
;(assert)  (a[i]==c)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (tmp_select_a Int)) (=> (and (< a0_ind a1_ind) (assert_22_5_175 a0_ind a0_val a1_ind a1_val c N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_22_5_175 i tmp_select_a a1_ind a1_val c N i) (< i a0_ind) (assert_22_5_175 i tmp_select_a a0_ind a0_val c N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_22_5_175 i tmp_select_a a1_ind a1_val c N i) (< a0_ind i) (assert_22_5_175 a0_ind a0_val i tmp_select_a c N i)) (and (< a1_ind i) (< a1_ind i) (assert_22_5_175 a1_ind a1_val i tmp_select_a c N i) (< a0_ind i) (assert_22_5_175 a0_ind a0_val i tmp_select_a c N i)))) (= tmp_select_a c))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (assert_22_5_175 a0_ind a0_val a1_ind a1_val c N i)) (assign_23_5_184 a0_ind a0_val a1_ind a1_val c N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int)) (=> (and (< a0_ind a1_ind) (assign_23_5_184 a0_ind a0_val a1_ind a1_val c N i)) (while_20_1_187 a0_ind a0_val a1_ind a1_val c N (+ i 1)))))
(check-sat)
