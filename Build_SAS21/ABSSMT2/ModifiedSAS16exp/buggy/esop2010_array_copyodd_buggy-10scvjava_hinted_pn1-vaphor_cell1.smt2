;Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(set-logic HORN)
(declare-fun assign_139_22_5 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_130_21_5 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_142_20_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_104_19_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_95_16_5 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_86_15_5 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_77_14_5 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_98_13_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_55_11_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_43_10_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_37_9_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (start a_copy_ind a_copy_val a_ind a_val size j i)))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (start a_copy_ind a_copy_val a_ind a_val size j i) (assign_37_9_1 a_copy_ind a_copy_val a_ind a_val size j i))))
;
;(assign)  i := 1
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_37_9_1 a_copy_ind a_copy_val a_ind a_val size j i) (assign_43_10_1 a_copy_ind a_copy_val a_ind a_val size j 1))))
;
;(assign)  j := 0
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_43_10_1 a_copy_ind a_copy_val a_ind a_val size j i) (assign_55_11_1 a_copy_ind a_copy_val a_ind a_val size 0 i))))
;
;(assign)  size := Support.random()
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (rnd Int) (size Int)) (=> (assign_55_11_1 a_copy_ind a_copy_val a_ind a_val size j i) (while_98_13_1 a_copy_ind a_copy_val a_ind a_val rnd j i))))
;
;(while)   while((i<size))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (and (while_98_13_1 a_copy_ind a_copy_val a_ind a_val size j i) (< i size)) (arrayassign_77_14_5 a_copy_ind a_copy_val a_ind a_val size j i))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (and (while_98_13_1 a_copy_ind a_copy_val a_ind a_val size j i) (not (< i size))) (assign_104_19_1 a_copy_ind a_copy_val a_ind a_val size j i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_77_14_5 a_copy_ind a_copy_val a_ind a_val size j i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_77_14_5 a_copy_ind a_copy_val i tmp_select_a size j i)) (and (< a_ind i) (arrayassign_77_14_5 a_copy_ind a_copy_val i tmp_select_a size j i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (assign_86_15_5 tmp_store_a_copy_ind tmp_store_a_copy_val a_ind a_val size j i))))
;
;(assign)  i := (i+2)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_86_15_5 a_copy_ind a_copy_val a_ind a_val size j i) (assign_95_16_5 a_copy_ind a_copy_val a_ind a_val size j (+ i 2)))))
;
;(assign)  j := (j+1)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_95_16_5 a_copy_ind a_copy_val a_ind a_val size j i) (while_98_13_1 a_copy_ind a_copy_val a_ind a_val size (+ j 1) i))))
;
;(assign)  i := 0
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_104_19_1 a_copy_ind a_copy_val a_ind a_val size j i) (while_142_20_1 a_copy_ind a_copy_val a_ind a_val size j 0))))
;
;(while)   while((i<size))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (and (while_142_20_1 a_copy_ind a_copy_val a_ind a_val size j i) (< i size)) (assert_130_21_5 a_copy_ind a_copy_val a_ind a_val size j i))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (and (while_142_20_1 a_copy_ind a_copy_val a_ind a_val size j i) (not (< i size))) (end a_copy_ind a_copy_val a_ind a_val size j i))))
;
;(assert)  (a_copy[i]==a[j])
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_130_21_5 a_copy_ind a_copy_val a_ind a_val size j i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_130_21_5 i tmp_select_a_copy a_ind a_val size j i)) (and (< a_copy_ind i) (assert_130_21_5 i tmp_select_a_copy a_ind a_val size j i))) (or (and (= a_ind j) (= tmp_select_a a_val)) (and (< j a_ind) (assert_130_21_5 a_copy_ind a_copy_val j tmp_select_a size j i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_130_21_5 i tmp_select_a_copy j tmp_select_a size j i)) (and (< a_copy_ind i) (assert_130_21_5 i tmp_select_a_copy j tmp_select_a size j i)))) (and (< a_ind j) (assert_130_21_5 a_copy_ind a_copy_val j tmp_select_a size j i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_130_21_5 i tmp_select_a_copy j tmp_select_a size j i)) (and (< a_copy_ind i) (assert_130_21_5 i tmp_select_a_copy j tmp_select_a size j i)))))) (= tmp_select_a_copy tmp_select_a))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assert_130_21_5 a_copy_ind a_copy_val a_ind a_val size j i) (assign_139_22_5 a_copy_ind a_copy_val a_ind a_val size j i))))
;
;(assign)  i := (i+1)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_139_22_5 a_copy_ind a_copy_val a_ind a_val size j i) (while_142_20_1 a_copy_ind a_copy_val a_ind a_val size j (+ i 1)))))
(check-sat)
