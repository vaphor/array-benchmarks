;Number of predicates (nodes) = 20
;Number of variables = 6
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_38_5_234 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_37_5_225 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_32_2_191 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_35_2_213 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun if_31_5_216 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_30_1_237 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_29_1_157 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_28_1_151 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_26_1_145 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_23_5_127 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_22_5_118 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_21_1_130 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_20_1_96 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_17_5_87 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_16_5_78 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_15_1_90 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_14_1_56 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_50 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (start res_ind res_val b_ind b_val a_ind a_val modul size i)))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (start res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_12_1_50 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  size := Support.random()
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (rnd Int) (size Int)) (=> (assign_12_1_50 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_14_1_56 res_ind res_val b_ind b_val a_ind a_val modul rnd i))))
;
;(assign)  i := 0
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_14_1_56 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_15_1_90 res_ind res_val b_ind b_val a_ind a_val modul size 0))))
;
;(while)   while((i<size))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_15_1_90 res_ind res_val b_ind b_val a_ind a_val modul size i) (< i size)) (arrayassign_16_5_78 res_ind res_val b_ind b_val a_ind a_val modul size i))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_15_1_90 res_ind res_val b_ind b_val a_ind a_val modul size i) (not (< i size))) (assign_20_1_96 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(aassign) res[i] := a[i]
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int) (tmp_select_a Int) (tmp_store_res_ind Int) (tmp_store_res_val Int)) (=> (and (arrayassign_16_5_78 res_ind res_val b_ind b_val a_ind a_val modul size i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_16_5_78 res_ind res_val b_ind b_val i tmp_select_a modul size i)) (and (< a_ind i) (arrayassign_16_5_78 res_ind res_val b_ind b_val i tmp_select_a modul size i))) (= tmp_store_res_ind res_ind) (or (and (= res_ind i) (= tmp_store_res_val tmp_select_a)) (and (not (= res_ind i)) (= tmp_store_res_val res_val)))) (assign_17_5_87 tmp_store_res_ind tmp_store_res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_17_5_87 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_15_1_90 res_ind res_val b_ind b_val a_ind a_val modul size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_20_1_96 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_21_1_130 res_ind res_val b_ind b_val a_ind a_val modul size 1))))
;
;(while)   while((i<size))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_21_1_130 res_ind res_val b_ind b_val a_ind a_val modul size i) (< i size)) (arrayassign_22_5_118 res_ind res_val b_ind b_val a_ind a_val modul size i))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_21_1_130 res_ind res_val b_ind b_val a_ind a_val modul size i) (not (< i size))) (assign_26_1_145 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(aassign) res[i] := b[i]
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int) (tmp_select_b Int) (tmp_store_res_ind Int) (tmp_store_res_val Int)) (=> (and (arrayassign_22_5_118 res_ind res_val b_ind b_val a_ind a_val modul size i) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (arrayassign_22_5_118 res_ind res_val i tmp_select_b a_ind a_val modul size i)) (and (< b_ind i) (arrayassign_22_5_118 res_ind res_val i tmp_select_b a_ind a_val modul size i))) (= tmp_store_res_ind res_ind) (or (and (= res_ind i) (= tmp_store_res_val tmp_select_b)) (and (not (= res_ind i)) (= tmp_store_res_val res_val)))) (assign_23_5_127 tmp_store_res_ind tmp_store_res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_23_5_127 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_21_1_130 res_ind res_val b_ind b_val a_ind a_val modul size (+ i 2)))))
;
;(assign)  k := Support.random(0, size)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (rnd Int) (size Int)) (=> (and (assign_26_1_145 res_ind res_val b_ind b_val a_ind a_val modul size i) (>= rnd 0) (< rnd size)) (assign_28_1_151 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  i := 0
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_28_1_151 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_29_1_157 res_ind res_val b_ind b_val a_ind a_val modul size 0))))
;
;(assign)  modul := 1
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_29_1_157 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_30_1_237 res_ind res_val b_ind b_val a_ind a_val 1 size i))))
;
;(while)   while((i<size))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_30_1_237 res_ind res_val b_ind b_val a_ind a_val modul size i) (< i size)) (if_31_5_216 res_ind res_val b_ind b_val a_ind a_val modul size i))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (while_30_1_237 res_ind res_val b_ind b_val a_ind a_val modul size i) (not (< i size))) (end res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(if)      if((modul==0))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (if_31_5_216 res_ind res_val b_ind b_val a_ind a_val modul size i) (= modul 0)) (assert_32_2_191 res_ind res_val b_ind b_val a_ind a_val modul size i))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (and (if_31_5_216 res_ind res_val b_ind b_val a_ind a_val modul size i) (not (= modul 0))) (assert_35_2_213 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assert)  (res[i]==a[i])
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int) (tmp_select_a Int) (tmp_select_res Int)) (=> (and (assert_32_2_191 res_ind res_val b_ind b_val a_ind a_val modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_32_2_191 i tmp_select_res b_ind b_val a_ind a_val modul size i)) (and (< res_ind i) (assert_32_2_191 i tmp_select_res b_ind b_val a_ind a_val modul size i))) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_32_2_191 res_ind res_val b_ind b_val i tmp_select_a modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_32_2_191 i tmp_select_res b_ind b_val i tmp_select_a modul size i)) (and (< res_ind i) (assert_32_2_191 i tmp_select_res b_ind b_val i tmp_select_a modul size i)))) (and (< a_ind i) (assert_32_2_191 res_ind res_val b_ind b_val i tmp_select_a modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_32_2_191 i tmp_select_res b_ind b_val i tmp_select_a modul size i)) (and (< res_ind i) (assert_32_2_191 i tmp_select_res b_ind b_val i tmp_select_a modul size i)))))) (= tmp_select_res tmp_select_a))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assert_32_2_191 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_37_5_225 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assert)  (res[i]==b[i])
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int) (tmp_select_b Int) (tmp_select_res Int)) (=> (and (assert_35_2_213 res_ind res_val b_ind b_val a_ind a_val modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_35_2_213 i tmp_select_res b_ind b_val a_ind a_val modul size i)) (and (< res_ind i) (assert_35_2_213 i tmp_select_res b_ind b_val a_ind a_val modul size i))) (or (and (= b_ind i) (= tmp_select_b b_val)) (and (< i b_ind) (assert_35_2_213 res_ind res_val i tmp_select_b a_ind a_val modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_35_2_213 i tmp_select_res i tmp_select_b a_ind a_val modul size i)) (and (< res_ind i) (assert_35_2_213 i tmp_select_res i tmp_select_b a_ind a_val modul size i)))) (and (< b_ind i) (assert_35_2_213 res_ind res_val i tmp_select_b a_ind a_val modul size i) (or (and (= res_ind i) (= tmp_select_res res_val)) (and (< i res_ind) (assert_35_2_213 i tmp_select_res i tmp_select_b a_ind a_val modul size i)) (and (< res_ind i) (assert_35_2_213 i tmp_select_res i tmp_select_b a_ind a_val modul size i)))))) (= tmp_select_res tmp_select_b))))
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assert_35_2_213 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_37_5_225 res_ind res_val b_ind b_val a_ind a_val modul size i))))
;
;(assign)  modul := (1-modul)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_37_5_225 res_ind res_val b_ind b_val a_ind a_val modul size i) (assign_38_5_234 res_ind res_val b_ind b_val a_ind a_val (- 1 modul) size i))))
;
;(assign)  i := (i+1)
(assert (forall ((a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (modul Int) (res_ind Int) (res_val Int) (size Int)) (=> (assign_38_5_234 res_ind res_val b_ind b_val a_ind a_val modul size i) (while_30_1_237 res_ind res_val b_ind b_val a_ind a_val modul size (+ i 1)))))
(check-sat)
