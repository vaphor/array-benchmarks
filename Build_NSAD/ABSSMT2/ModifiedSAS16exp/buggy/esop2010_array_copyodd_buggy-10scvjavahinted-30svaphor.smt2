;Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(set-logic HORN)
(declare-fun assign_22_5_139 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_21_5_130 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_20_1_142 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_19_1_104 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_16_5_95 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_15_5_86 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_14_5_77 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_13_1_98 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_11_1_55 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_10_1_43 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_9_1_37 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (start a_copy_ind a_copy_val a_ind a_val size j i)))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (start a_copy_ind a_copy_val a_ind a_val size j i) (assign_9_1_37 a_copy_ind a_copy_val a_ind a_val size j i))))
;
;(assign)  i := 1
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_9_1_37 a_copy_ind a_copy_val a_ind a_val size j i) (assign_10_1_43 a_copy_ind a_copy_val a_ind a_val size j 1))))
;
;(assign)  j := 0
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_10_1_43 a_copy_ind a_copy_val a_ind a_val size j i) (assign_11_1_55 a_copy_ind a_copy_val a_ind a_val size 0 i))))
;
;(assign)  size := Support.random()
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (rnd Int) (size Int)) (=> (assign_11_1_55 a_copy_ind a_copy_val a_ind a_val size j i) (while_13_1_98 a_copy_ind a_copy_val a_ind a_val rnd j i))))
;
;(while)   while((i<size))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (and (while_13_1_98 a_copy_ind a_copy_val a_ind a_val size j i) (< i size)) (arrayassign_14_5_77 a_copy_ind a_copy_val a_ind a_val size j i))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (and (while_13_1_98 a_copy_ind a_copy_val a_ind a_val size j i) (not (< i size))) (assign_19_1_104 a_copy_ind a_copy_val a_ind a_val size j i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_14_5_77 a_copy_ind a_copy_val a_ind a_val size j i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_14_5_77 a_copy_ind a_copy_val i tmp_select_a size j i)) (and (< a_ind i) (arrayassign_14_5_77 a_copy_ind a_copy_val i tmp_select_a size j i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (assign_15_5_86 tmp_store_a_copy_ind tmp_store_a_copy_val a_ind a_val size j i))))
;
;(assign)  i := (i+2)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_15_5_86 a_copy_ind a_copy_val a_ind a_val size j i) (assign_16_5_95 a_copy_ind a_copy_val a_ind a_val size j (+ i 2)))))
;
;(assign)  j := (j+1)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_16_5_95 a_copy_ind a_copy_val a_ind a_val size j i) (while_13_1_98 a_copy_ind a_copy_val a_ind a_val size (+ j 1) i))))
;
;(assign)  i := 0
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_19_1_104 a_copy_ind a_copy_val a_ind a_val size j i) (while_20_1_142 a_copy_ind a_copy_val a_ind a_val size j 0))))
;
;(while)   while((i<size))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (and (while_20_1_142 a_copy_ind a_copy_val a_ind a_val size j i) (< i size)) (assert_21_5_130 a_copy_ind a_copy_val a_ind a_val size j i))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (and (while_20_1_142 a_copy_ind a_copy_val a_ind a_val size j i) (not (< i size))) (end a_copy_ind a_copy_val a_ind a_val size j i))))
;
;(assert)  (a_copy[i]==a[j])
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_21_5_130 a_copy_ind a_copy_val a_ind a_val size j i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_21_5_130 i tmp_select_a_copy a_ind a_val size j i)) (and (< a_copy_ind i) (assert_21_5_130 i tmp_select_a_copy a_ind a_val size j i))) (or (and (= a_ind j) (= tmp_select_a a_val)) (and (< j a_ind) (assert_21_5_130 a_copy_ind a_copy_val j tmp_select_a size j i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_21_5_130 i tmp_select_a_copy j tmp_select_a size j i)) (and (< a_copy_ind i) (assert_21_5_130 i tmp_select_a_copy j tmp_select_a size j i)))) (and (< a_ind j) (assert_21_5_130 a_copy_ind a_copy_val j tmp_select_a size j i) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_21_5_130 i tmp_select_a_copy j tmp_select_a size j i)) (and (< a_copy_ind i) (assert_21_5_130 i tmp_select_a_copy j tmp_select_a size j i)))))) (= tmp_select_a_copy tmp_select_a))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assert_21_5_130 a_copy_ind a_copy_val a_ind a_val size j i) (assign_22_5_139 a_copy_ind a_copy_val a_ind a_val size j i))))
;
;(assign)  i := (i+1)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (j Int) (size Int)) (=> (assign_22_5_139 a_copy_ind a_copy_val a_ind a_val size j i) (while_20_1_142 a_copy_ind a_copy_val a_ind a_val size j (+ i 1)))))
(check-sat)
