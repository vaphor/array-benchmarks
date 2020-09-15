;Number of predicates (nodes) = 14
;Number of variables = 4
;Number of clauses = 19
;
(set-logic HORN)
(declare-fun assign_214_23_5 (Int Int Int Int Int) Bool)
(declare-fun assert_205_22_5 (Int Int Int Int Int) Bool)
(declare-fun assert_185_21_12 (Int Int Int Int Int) Bool)
(declare-fun while_217_20_1 (Int Int Int Int Int) Bool)
(declare-fun assign_142_19_1 (Int Int Int Int Int) Bool)
(declare-fun assign_133_16_5 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_124_15_5 (Int Int Int Int Int) Bool)
(declare-fun assert_108_14_12 (Int Int Int Int Int) Bool)
(declare-fun while_136_13_1 (Int Int Int Int Int) Bool)
(declare-fun assign_65_12_1 (Int Int Int Int Int) Bool)
(declare-fun assign_59_10_8 (Int Int Int Int Int) Bool)
(declare-fun assign_47_9_1 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (start a_ind a_val c N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (start a_ind a_val c N i) (assign_47_9_1 a_ind a_val c N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (rnd Int)) (=> (assign_47_9_1 a_ind a_val c N i) (assign_59_10_8 a_ind a_val c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (rnd Int)) (=> (assign_59_10_8 a_ind a_val c N i) (assign_65_12_1 a_ind a_val rnd N i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_65_12_1 a_ind a_val c N i) (while_136_13_1 a_ind a_val c N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_136_13_1 a_ind a_val c N i) (< i N)) (assert_108_14_12 a_ind a_val c N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_136_13_1 a_ind a_val c N i) (not (< i N))) (assign_142_19_1 a_ind a_val c N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==((2*k)+c)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (k Int) (tmp_select_a Int)) (=> (and (assert_108_14_12 a_ind a_val c N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_108_14_12 k tmp_select_a c N i)) (and (< a_ind k) (assert_108_14_12 k tmp_select_a c N i)))) (=> (and (<= 0 k) (< k i)) (= tmp_select_a (+ (* 2 k) c))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assert_108_14_12 a_ind a_val c N i) (arrayassign_124_15_5 a_ind a_val c N i))))
;
;(aassign) a[i] := ((2*i)+c)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (tmp_store_a_ind Int) (tmp_store_a_val Int)) (=> (and (arrayassign_124_15_5 a_ind a_val c N i) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (+ (* 2 i) c))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_133_16_5 tmp_store_a_ind tmp_store_a_val c N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_133_16_5 a_ind a_val c N i) (while_136_13_1 a_ind a_val c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_142_19_1 a_ind a_val c N i) (while_217_20_1 a_ind a_val c N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_217_20_1 a_ind a_val c N i) (< i N)) (assert_185_21_12 a_ind a_val c N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (and (while_217_20_1 a_ind a_val c N i) (not (< i N))) (end a_ind a_val c N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==((2*k)+c)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (k Int) (tmp_select_a Int)) (=> (and (assert_185_21_12 a_ind a_val c N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_185_21_12 k tmp_select_a c N i)) (and (< a_ind k) (assert_185_21_12 k tmp_select_a c N i)))) (=> (and (<= 0 k) (< k N)) (= tmp_select_a (+ (* 2 k) c))))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assert_185_21_12 a_ind a_val c N i) (assert_205_22_5 a_ind a_val c N i))))
;
;(assert)  (a[i]==((2*i)+c))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int) (tmp_select_a Int)) (=> (and (assert_205_22_5 a_ind a_val c N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_205_22_5 i tmp_select_a c N i)) (and (< a_ind i) (assert_205_22_5 i tmp_select_a c N i)))) (= tmp_select_a (+ (* 2 i) c)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assert_205_22_5 a_ind a_val c N i) (assign_214_23_5 a_ind a_val c N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (c Int) (i Int)) (=> (assign_214_23_5 a_ind a_val c N i) (while_217_20_1 a_ind a_val c N (+ i 1)))))
(check-sat)
