;Number of predicates (nodes) = 20
;Number of variables = 6
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_38_5_234 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_37_5_225 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_32_2_191 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_35_2_213 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun if_31_5_216 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_30_1_237 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_29_1_157 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_28_1_151 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_26_1_145 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_23_5_127 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_22_5_118 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_21_1_130 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_20_1_96 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_17_5_87 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_16_5_78 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_15_1_90 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_14_1_56 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_50 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind)) (start res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (start res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (assign_12_1_50 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(assign)  size := Support.random()
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (rnd Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_12_1_50 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (assign_14_1_56 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul rnd i))))
;
;(assign)  i := 0
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_14_1_56 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (while_15_1_90 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size 0))))
;
;(while)   while((i<size))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (while_15_1_90 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< i size)) (arrayassign_16_5_78 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (while_15_1_90 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (not (< i size))) (assign_20_1_96 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(aassign) res[i] := a[i]
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int) (tmp_select_a Int) (tmp_store_res0_ind Int) (tmp_store_res0_val Int) (tmp_store_res1_ind Int) (tmp_store_res1_val Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (arrayassign_16_5_78 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (arrayassign_16_5_78 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (< i a0_ind) (arrayassign_16_5_78 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a0_ind a0_val modul size i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (arrayassign_16_5_78 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (< a0_ind i) (arrayassign_16_5_78 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i)) (and (< a1_ind i) (< a1_ind i) (arrayassign_16_5_78 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a1_ind a1_val i tmp_select_a modul size i) (< a0_ind i) (arrayassign_16_5_78 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i))) (= tmp_store_res0_ind res0_ind) (= tmp_store_res1_ind res1_ind) (or (and (= res0_ind i) (= tmp_store_res1_val res1_val) (= tmp_store_res0_val tmp_select_a)) (and (= res1_ind i) (= tmp_store_res0_val res0_val) (= tmp_store_res1_val tmp_select_a)) (and (not (= res0_ind i)) (not (= res1_ind i)) (= tmp_store_res0_val res0_val) (= tmp_store_res1_val res1_val)))) (assign_17_5_87 tmp_store_res0_ind tmp_store_res0_val tmp_store_res1_ind tmp_store_res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_17_5_87 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (while_15_1_90 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_20_1_96 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (while_21_1_130 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size 1))))
;
;(while)   while((i<size))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (while_21_1_130 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< i size)) (arrayassign_22_5_118 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (while_21_1_130 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (not (< i size))) (assign_26_1_145 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(aassign) res[i] := b[i]
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int) (tmp_select_b Int) (tmp_store_res0_ind Int) (tmp_store_res0_val Int) (tmp_store_res1_ind Int) (tmp_store_res1_val Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (arrayassign_22_5_118 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (or (and (= b0_ind i) (= tmp_select_b b0_val)) (and (= b1_ind i) (= tmp_select_b b1_val)) (and (< i b0_ind) (< i b1_ind) (arrayassign_22_5_118 res0_ind res0_val res1_ind res1_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< i b0_ind) (arrayassign_22_5_118 res0_ind res0_val res1_ind res1_val i tmp_select_b b0_ind b0_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< b0_ind i) (< i b1_ind) (< i b1_ind) (arrayassign_22_5_118 res0_ind res0_val res1_ind res1_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< b0_ind i) (arrayassign_22_5_118 res0_ind res0_val res1_ind res1_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)) (and (< b1_ind i) (< b1_ind i) (arrayassign_22_5_118 res0_ind res0_val res1_ind res1_val b1_ind b1_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< b0_ind i) (arrayassign_22_5_118 res0_ind res0_val res1_ind res1_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i))) (= tmp_store_res0_ind res0_ind) (= tmp_store_res1_ind res1_ind) (or (and (= res0_ind i) (= tmp_store_res1_val res1_val) (= tmp_store_res0_val tmp_select_b)) (and (= res1_ind i) (= tmp_store_res0_val res0_val) (= tmp_store_res1_val tmp_select_b)) (and (not (= res0_ind i)) (not (= res1_ind i)) (= tmp_store_res0_val res0_val) (= tmp_store_res1_val res1_val)))) (assign_23_5_127 tmp_store_res0_ind tmp_store_res0_val tmp_store_res1_ind tmp_store_res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_23_5_127 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (while_21_1_130 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size (+ i 2)))))
;
;(assign)  k := Support.random(0, size)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (rnd Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_26_1_145 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (>= rnd 0) (< rnd size)) (assign_28_1_151 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(assign)  i := 0
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_28_1_151 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (assign_29_1_157 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size 0))))
;
;(assign)  modul := 1
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_29_1_157 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (while_30_1_237 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val 1 size i))))
;
;(while)   while((i<size))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (while_30_1_237 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< i size)) (if_31_5_216 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (while_30_1_237 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (not (< i size))) (end res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(if)      if((modul==0))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (if_31_5_216 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (= modul 0)) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (if_31_5_216 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (not (= modul 0))) (assert_35_2_213 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(assert)  (res[i]==a[i])
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int) (tmp_select_a Int) (tmp_select_res Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< i res0_ind) (assert_32_2_191 i tmp_select_res res0_ind res0_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_32_2_191 res1_ind res1_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (< i res0_ind) (assert_32_2_191 i tmp_select_res res0_ind res0_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_32_2_191 res1_ind res1_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i))) (< i a0_ind) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a0_ind a0_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a0_ind a0_val modul size i) (< i res0_ind) (assert_32_2_191 i tmp_select_res res0_ind res0_val b0_ind b0_val b1_ind b1_val i tmp_select_a a0_ind a0_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a0_ind a0_val modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a0_ind a0_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_32_2_191 res1_ind res1_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a0_ind a0_val modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a0_ind a0_val modul size i)))) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (< i res0_ind) (assert_32_2_191 i tmp_select_res res0_ind res0_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_32_2_191 res1_ind res1_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val i tmp_select_a a1_ind a1_val modul size i))) (< a0_ind i) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i) (< i res0_ind) (assert_32_2_191 i tmp_select_res res0_ind res0_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_32_2_191 res1_ind res1_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i)))) (and (< a1_ind i) (< a1_ind i) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a1_ind a1_val i tmp_select_a modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a1_ind a1_val i tmp_select_a modul size i) (< i res0_ind) (assert_32_2_191 i tmp_select_res res0_ind res0_val b0_ind b0_val b1_ind b1_val a1_ind a1_val i tmp_select_a modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a1_ind a1_val i tmp_select_a modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a1_ind a1_val i tmp_select_a modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_32_2_191 res1_ind res1_val i tmp_select_res b0_ind b0_val b1_ind b1_val a1_ind a1_val i tmp_select_a modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a1_ind a1_val i tmp_select_a modul size i))) (< a0_ind i) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i) (< i res0_ind) (assert_32_2_191 i tmp_select_res res0_ind res0_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_32_2_191 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_32_2_191 res1_ind res1_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i) (< res0_ind i) (assert_32_2_191 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val i tmp_select_a modul size i)))))) (= tmp_select_res tmp_select_a))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assert_32_2_191 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (assign_37_5_225 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(assert)  (res[i]==b[i])
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int) (tmp_select_b Int) (tmp_select_res Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assert_35_2_213 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< i res0_ind) (assert_35_2_213 i tmp_select_res res0_ind res0_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_35_2_213 res1_ind res1_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))) (or (and (= b0_ind i) (= tmp_select_b b0_val)) (and (= b1_ind i) (= tmp_select_b b1_val)) (and (< i b0_ind) (< i b1_ind) (assert_35_2_213 res0_ind res0_val res1_ind res1_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< i res0_ind) (assert_35_2_213 i tmp_select_res res0_ind res0_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_35_2_213 res1_ind res1_val i tmp_select_res i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))) (< i b0_ind) (assert_35_2_213 res0_ind res0_val res1_ind res1_val i tmp_select_b b0_ind b0_val a0_ind a0_val a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val i tmp_select_b b0_ind b0_val a0_ind a0_val a1_ind a1_val modul size i) (< i res0_ind) (assert_35_2_213 i tmp_select_res res0_ind res0_val i tmp_select_b b0_ind b0_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val i tmp_select_b b0_ind b0_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res i tmp_select_b b0_ind b0_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_35_2_213 res1_ind res1_val i tmp_select_res i tmp_select_b b0_ind b0_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res i tmp_select_b b0_ind b0_val a0_ind a0_val a1_ind a1_val modul size i)))) (and (< b0_ind i) (< i b1_ind) (< i b1_ind) (assert_35_2_213 res0_ind res0_val res1_ind res1_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< i res0_ind) (assert_35_2_213 i tmp_select_res res0_ind res0_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_35_2_213 res1_ind res1_val i tmp_select_res i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res i tmp_select_b b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))) (< b0_ind i) (assert_35_2_213 res0_ind res0_val res1_ind res1_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< i res0_ind) (assert_35_2_213 i tmp_select_res res0_ind res0_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_35_2_213 res1_ind res1_val i tmp_select_res b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)))) (and (< b1_ind i) (< b1_ind i) (assert_35_2_213 res0_ind res0_val res1_ind res1_val b1_ind b1_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val b1_ind b1_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< i res0_ind) (assert_35_2_213 i tmp_select_res res0_ind res0_val b1_ind b1_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val b1_ind b1_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res b1_ind b1_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_35_2_213 res1_ind res1_val i tmp_select_res b1_ind b1_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res b1_ind b1_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i))) (< b0_ind i) (assert_35_2_213 res0_ind res0_val res1_ind res1_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (or (and (= res0_ind i) (= tmp_select_res res0_val)) (and (= res1_ind i) (= tmp_select_res res1_val)) (and (< i res0_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< i res0_ind) (assert_35_2_213 i tmp_select_res res0_ind res0_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)) (and (< res0_ind i) (< i res1_ind) (< i res1_ind) (assert_35_2_213 i tmp_select_res res1_ind res1_val b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)) (and (< res1_ind i) (< res1_ind i) (assert_35_2_213 res1_ind res1_val i tmp_select_res b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i) (< res0_ind i) (assert_35_2_213 res0_ind res0_val i tmp_select_res b0_ind b0_val i tmp_select_b a0_ind a0_val a1_ind a1_val modul size i)))))) (= tmp_select_res tmp_select_b))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assert_35_2_213 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (assign_37_5_225 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i))))
;
;(assign)  modul := (1-modul)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_37_5_225 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (assign_38_5_234 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val (- 1 modul) size i))))
;
;(assign)  i := (i+1)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (b0_ind Int) (b0_val Int) (b1_ind Int) (b1_val Int) (i Int) (modul Int) (res0_ind Int) (res0_val Int) (res1_ind Int) (res1_val Int) (size Int)) (=> (and (< a0_ind a1_ind) (< b0_ind b1_ind) (< res0_ind res1_ind) (assign_38_5_234 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size i)) (while_30_1_237 res0_ind res0_val res1_ind res1_val b0_ind b0_val b1_ind b1_val a0_ind a0_val a1_ind a1_val modul size (+ i 1)))))
(check-sat)
