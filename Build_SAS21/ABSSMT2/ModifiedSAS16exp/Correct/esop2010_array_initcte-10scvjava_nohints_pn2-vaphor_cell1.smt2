;Number of predicates (nodes) = 12
;Number of variables = 4
;Number of clauses = 15
;
(set-logic HORN)
(declare-fun assign_184_23_5 (Int Int Int Int Int) Bool)
(declare-fun assert_175_22_5 (Int Int Int Int Int) Bool)
(declare-fun while_187_20_1 (Int Int Int Int Int) Bool)
(declare-fun assign_127_19_1 (Int Int Int Int Int) Bool)
(declare-fun assign_118_16_5 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_109_15_5 (Int Int Int Int Int) Bool)
(declare-fun while_121_13_1 (Int Int Int Int Int) Bool)
(declare-fun assign_65_12_8 (Int Int Int Int Int) Bool)
(declare-fun assign_59_10_1 (Int Int Int Int Int) Bool)
(declare-fun assign_47_9_1 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (start a_ind a_val c N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (start a_ind a_val c N i) (assign_47_9_1 a_ind a_val c N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (rnd Int)) (=> (assign_47_9_1 a_ind a_val c N i) (assign_59_10_1 a_ind a_val c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (rnd Int)) (=> (assign_59_10_1 a_ind a_val c N i) (assign_65_12_8 a_ind a_val rnd N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_65_12_8 a_ind a_val c N i) (while_121_13_1 a_ind a_val c N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_121_13_1 a_ind a_val c N i) (< i N)) (arrayassign_109_15_5 a_ind a_val c N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_121_13_1 a_ind a_val c N i) (not (< i N))) (assign_127_19_1 a_ind a_val c N i))))
;
;(aassign) a[i] := c
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (tmp_store_a_ind Int) (tmp_store_a_val Int)) (=> (and (arrayassign_109_15_5 a_ind a_val c N i) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val c)) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_118_16_5 tmp_store_a_ind tmp_store_a_val c N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_118_16_5 a_ind a_val c N i) (while_121_13_1 a_ind a_val c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_127_19_1 a_ind a_val c N i) (while_187_20_1 a_ind a_val c N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_187_20_1 a_ind a_val c N i) (< i N)) (assert_175_22_5 a_ind a_val c N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_187_20_1 a_ind a_val c N i) (not (< i N))) (end a_ind a_val c N i))))
;
;(assert)  (a[i]==c)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (tmp_select_a Int)) (=> (and (assert_175_22_5 a_ind a_val c N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_175_22_5 i tmp_select_a c N i)) (and (< a_ind i) (assert_175_22_5 i tmp_select_a c N i)))) (= tmp_select_a c))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assert_175_22_5 a_ind a_val c N i) (assign_184_23_5 a_ind a_val c N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_184_23_5 a_ind a_val c N i) (while_187_20_1 a_ind a_val c N (+ i 1)))))
(check-sat)
