;Number of predicates (nodes) = 20
;Number of variables = 6
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_234_38_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_225_37_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_191_32_2 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_213_35_2 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun if_216_31_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_237_30_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_157_29_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_151_28_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_145_26_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_127_23_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_118_22_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_130_21_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_96_20_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_87_17_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_78_16_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_90_15_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_56_14_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_50_12_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (start res_ind res_val b_ind b_val a_ind a_val modul size i)))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (start res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_50_12_1 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  size := Support.random()
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (rnd Int) (size Int)) (=> (assign_50_12_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_56_14_1 res_ind res_val b_ind b_val a_ind a_val modul rnd i))))
;
;(assign)  i := 0
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_56_14_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_90_15_1 res_ind res_val b_ind b_val a_ind a_val modul size 0))))
;
;(while)   while((i<size))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_90_15_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (< i size)) (arrayassign_78_16_5 res_ind res_val b_ind b_val a_ind a_val modul size i))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_90_15_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (not (< i size))) (assign_96_20_1 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(aassign) res[i] := a[i]
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int) (tmp_select_a Int) (tmp_store_res_ind Int) (tmp_store_res_val Int)) (=> (and (arrayassign_78_16_5 res_ind res_val b_ind b_val a_ind a_val modul size i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_78_16_5 res_ind res_val b_ind b_val i tmp_select_a modul size i)) (and (< a_ind i) (arrayassign_78_16_5 res_ind res_val b_ind b_val i tmp_select_a modul size i))) (= tmp_store_res_ind res_ind) (or (and (= res_ind i) (= tmp_store_res_val tmp_select_a)) (and (not (= res_ind i)) (= tmp_store_res_val res_val)))) (assign_87_17_5 tmp_store_res_ind tmp_store_res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_87_17_5 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_90_15_1 res_ind res_val b_ind b_val a_ind a_val modul size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_96_20_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_130_21_1 res_ind res_val b_ind b_val a_ind a_val modul size 1))))
;
;(while)   while((i<size))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_130_21_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (< i size)) (arrayassign_118_22_5 res_ind res_val b_ind b_val a_ind a_val modul size i))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_130_21_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (not (< i size))) (assign_145_26_1 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(aassign) res[i] := b[i]
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int) (tmp_select_b Int) (tmp_store_res_ind Int) (tmp_store_res_val Int)) (=> (and (arrayassign_118_22_5 res_ind res_val b_ind b_val a_ind a_val modul size i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (arrayassign_118_22_5 res_ind res_val i tmp_select_b a_ind a_val modul size i)) (and (< b_ind i) (arrayassign_118_22_5 res_ind res_val i tmp_select_b a_ind a_val modul size i))) (= tmp_store_res_ind res_ind) (or (and (= res_ind i) (= tmp_store_res_val tmp_select_b)) (and (not (= res_ind i)) (= tmp_store_res_val res_val)))) (assign_127_23_5 tmp_store_res_ind tmp_store_res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_127_23_5 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_130_21_1 res_ind res_val b_ind b_val a_ind a_val modul size (+ i 2)))))
;
;(assign)  k := Support.random(0, size)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (rnd Int) (size Int)) (=> (and (assign_145_26_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (>= rnd 0) (< rnd size)) (assign_151_28_1 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  i := 0
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_151_28_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_157_29_1 res_ind res_val b_ind b_val a_ind a_val modul size 0))))
;
;(assign)  modul := 1
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_157_29_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_237_30_1 res_ind res_val b_ind b_val a_ind a_val 1 size i))))
;
;(while)   while((i<size))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_237_30_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (< i size)) (if_216_31_5 res_ind res_val b_ind b_val a_ind a_val modul size i))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_237_30_1 res_ind res_val b_ind b_val a_ind a_val modul size i) (not (< i size))) (end res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(if)      if((modul==0))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (if_216_31_5 res_ind res_val b_ind b_val a_ind a_val modul size i) (= modul 0)) (assert_191_32_2 res_ind res_val b_ind b_val a_ind a_val modul size i))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (if_216_31_5 res_ind res_val b_ind b_val a_ind a_val modul size i) (not (= modul 0))) (assert_213_35_2 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assert)  (res[i]==a[i])
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int) (tmp_select_a Int) (tmp_select_res Int)) (=> (and (assert_191_32_2 res_ind res_val b_ind b_val a_ind a_val modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_191_32_2 i tmp_select_res b_ind b_val a_ind a_val modul size i)) (and (< res_ind i) (assert_191_32_2 i tmp_select_res b_ind b_val a_ind a_val modul size i))) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_191_32_2 res_ind res_val b_ind b_val i tmp_select_a modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_191_32_2 i tmp_select_res b_ind b_val i tmp_select_a modul size i)) (and (< res_ind i) (assert_191_32_2 i tmp_select_res b_ind b_val i tmp_select_a modul size i)))) (and (< a_ind i) (assert_191_32_2 res_ind res_val b_ind b_val i tmp_select_a modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_191_32_2 i tmp_select_res b_ind b_val i tmp_select_a modul size i)) (and (< res_ind i) (assert_191_32_2 i tmp_select_res b_ind b_val i tmp_select_a modul size i)))))) (= tmp_select_res tmp_select_a))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assert_191_32_2 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_225_37_5 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assert)  (res[i]==b[i])
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int) (tmp_select_b Int) (tmp_select_res Int)) (=> (and (assert_213_35_2 res_ind res_val b_ind b_val a_ind a_val modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_213_35_2 i tmp_select_res b_ind b_val a_ind a_val modul size i)) (and (< res_ind i) (assert_213_35_2 i tmp_select_res b_ind b_val a_ind a_val modul size i))) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (assert_213_35_2 res_ind res_val i tmp_select_b a_ind a_val modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_213_35_2 i tmp_select_res i tmp_select_b a_ind a_val modul size i)) (and (< res_ind i) (assert_213_35_2 i tmp_select_res i tmp_select_b a_ind a_val modul size i)))) (and (< b_ind i) (assert_213_35_2 res_ind res_val i tmp_select_b a_ind a_val modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_213_35_2 i tmp_select_res i tmp_select_b a_ind a_val modul size i)) (and (< res_ind i) (assert_213_35_2 i tmp_select_res i tmp_select_b a_ind a_val modul size i)))))) (= tmp_select_res tmp_select_b))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assert_213_35_2 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_225_37_5 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  modul := (1-modul)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_225_37_5 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_234_38_5 res_ind res_val b_ind b_val a_ind a_val (- 1 modul) size i))))
;
;(assign)  i := (i+1)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_234_38_5 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_237_30_1 res_ind res_val b_ind b_val a_ind a_val modul size (+ i 1)))))
(check-sat)
