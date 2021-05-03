;Number of predicates (nodes) = 12
;Number of variables = 4
;Number of clauses = 15
;
(set-logic HORN)
(declare-fun assign_23_5_214 (Int Int Int Int Int) Bool)
(declare-fun assert_22_5_205 (Int Int Int Int Int) Bool)
(declare-fun while_20_1_217 (Int Int Int Int Int) Bool)
(declare-fun assign_19_1_142 (Int Int Int Int Int) Bool)
(declare-fun assign_16_5_133 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_15_5_124 (Int Int Int Int Int) Bool)
(declare-fun while_13_1_136 (Int Int Int Int Int) Bool)
(declare-fun assign_12_1_65 (Int Int Int Int Int) Bool)
(declare-fun assign_10_8_59 (Int Int Int Int Int) Bool)
(declare-fun assign_9_1_47 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (start a_ind a_val c N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (start a_ind a_val c N i) (assign_9_1_47 a_ind a_val c N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (rnd Int)) (=> (assign_9_1_47 a_ind a_val c N i) (assign_10_8_59 a_ind a_val c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (rnd Int)) (=> (assign_10_8_59 a_ind a_val c N i) (assign_12_1_65 a_ind a_val rnd N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_12_1_65 a_ind a_val c N i) (while_13_1_136 a_ind a_val c N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_13_1_136 a_ind a_val c N i) (< i N)) (arrayassign_15_5_124 a_ind a_val c N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_13_1_136 a_ind a_val c N i) (not (< i N))) (assign_19_1_142 a_ind a_val c N i))))
;
;(aassign) a[i] := ((2*i)+c)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (tmp_store_a_ind Int) (tmp_store_a_val Int)) (=> (and (arrayassign_15_5_124 a_ind a_val c N i) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (+ (* 2 i) c))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_16_5_133 tmp_store_a_ind tmp_store_a_val c N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_16_5_133 a_ind a_val c N i) (while_13_1_136 a_ind a_val c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_19_1_142 a_ind a_val c N i) (while_20_1_217 a_ind a_val c N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_20_1_217 a_ind a_val c N i) (< i N)) (assert_22_5_205 a_ind a_val c N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_20_1_217 a_ind a_val c N i) (not (< i N))) (end a_ind a_val c N i))))
;
;(assert)  (a[i]==((2*i)+c))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (tmp_select_a Int)) (=> (and (assert_22_5_205 a_ind a_val c N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_22_5_205 i tmp_select_a c N i)) (and (< a_ind i) (assert_22_5_205 i tmp_select_a c N i)))) (= tmp_select_a (+ (* 2 i) c)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assert_22_5_205 a_ind a_val c N i) (assign_23_5_214 a_ind a_val c N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_23_5_214 a_ind a_val c N i) (while_20_1_217 a_ind a_val c N (+ i 1)))))
(check-sat)
