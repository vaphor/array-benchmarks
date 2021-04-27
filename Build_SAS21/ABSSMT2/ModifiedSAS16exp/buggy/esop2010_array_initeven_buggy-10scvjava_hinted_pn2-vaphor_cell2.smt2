;Number of predicates (nodes) = 12
;Number of variables = 6
;Number of clauses = 15
;
(set-logic HORN)
(declare-fun assign_123_20_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_114_19_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_100_18_5 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_126_17_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_82_16_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_73_13_4 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_64_12_4 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_76_11_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_46_10_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_40_9_1 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val u c tmp size i))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val u c tmp size i)) (assign_40_9_1 a0_ind a0_val a1_ind a1_val u c tmp size i))))
;
;(assign)  size := Support.random()
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (rnd Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (assign_40_9_1 a0_ind a0_val a1_ind a1_val u c tmp size i)) (assign_46_10_1 a0_ind a0_val a1_ind a1_val u c tmp rnd i))))
;
;(assign)  i := 0
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (assign_46_10_1 a0_ind a0_val a1_ind a1_val u c tmp size i)) (while_76_11_1 a0_ind a0_val a1_ind a1_val u c tmp size 0))))
;
;(while)   while((i<size))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (while_76_11_1 a0_ind a0_val a1_ind a1_val u c tmp size i) (< i size)) (arrayassign_64_12_4 a0_ind a0_val a1_ind a1_val u c tmp size i))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (while_76_11_1 a0_ind a0_val a1_ind a1_val u c tmp size i) (not (< i size))) (assign_82_16_1 a0_ind a0_val a1_ind a1_val u c tmp size i))))
;
;(aassign) a[i] := 1
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (tmp_store_a0_ind Int) (tmp_store_a0_val Int) (tmp_store_a1_ind Int) (tmp_store_a1_val Int) (u Int)) (=> (and (< a0_ind a1_ind) (arrayassign_64_12_4 a0_ind a0_val a1_ind a1_val u c tmp size i) (= tmp_store_a0_ind a0_ind) (= tmp_store_a1_ind a1_ind) (or (and (= a0_ind i) (= tmp_store_a1_val a1_val) (= tmp_store_a0_val 1)) (and (= a1_ind i) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val 1)) (and (not (= a0_ind i)) (not (= a1_ind i)) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val a1_val)))) (assign_73_13_4 tmp_store_a0_ind tmp_store_a0_val tmp_store_a1_ind tmp_store_a1_val u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (assign_73_13_4 a0_ind a0_val a1_ind a1_val u c tmp size i)) (while_76_11_1 a0_ind a0_val a1_ind a1_val u c tmp size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (assign_82_16_1 a0_ind a0_val a1_ind a1_val u c tmp size i)) (while_126_17_1 a0_ind a0_val a1_ind a1_val u c tmp size 1))))
;
;(while)   while((i<size))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (while_126_17_1 a0_ind a0_val a1_ind a1_val u c tmp size i) (< i size)) (assign_100_18_5 a0_ind a0_val a1_ind a1_val u c tmp size i))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (while_126_17_1 a0_ind a0_val a1_ind a1_val u c tmp size i) (not (< i size))) (end a0_ind a0_val a1_ind a1_val u c tmp size i))))
;
;(assign)  u := a[i]
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (tmp_select_a Int) (u Int)) (=> (and (< a0_ind a1_ind) (assign_100_18_5 a0_ind a0_val a1_ind a1_val u c tmp size i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assign_100_18_5 i tmp_select_a a1_ind a1_val u c tmp size i) (< i a0_ind) (assign_100_18_5 i tmp_select_a a0_ind a0_val u c tmp size i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assign_100_18_5 i tmp_select_a a1_ind a1_val u c tmp size i) (< a0_ind i) (assign_100_18_5 a0_ind a0_val i tmp_select_a u c tmp size i)) (and (< a1_ind i) (< a1_ind i) (assign_100_18_5 a1_ind a1_val i tmp_select_a u c tmp size i) (< a0_ind i) (assign_100_18_5 a0_ind a0_val i tmp_select_a u c tmp size i)))) (assert_114_19_5 a0_ind a0_val a1_ind a1_val tmp_select_a c tmp size i))))
;
;(assert)  (a[i]==1)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (tmp_select_a Int) (u Int)) (=> (and (< a0_ind a1_ind) (assert_114_19_5 a0_ind a0_val a1_ind a1_val u c tmp size i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_114_19_5 i tmp_select_a a1_ind a1_val u c tmp size i) (< i a0_ind) (assert_114_19_5 i tmp_select_a a0_ind a0_val u c tmp size i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_114_19_5 i tmp_select_a a1_ind a1_val u c tmp size i) (< a0_ind i) (assert_114_19_5 a0_ind a0_val i tmp_select_a u c tmp size i)) (and (< a1_ind i) (< a1_ind i) (assert_114_19_5 a1_ind a1_val i tmp_select_a u c tmp size i) (< a0_ind i) (assert_114_19_5 a0_ind a0_val i tmp_select_a u c tmp size i)))) (= tmp_select_a 1))))
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (assert_114_19_5 a0_ind a0_val a1_ind a1_val u c tmp size i)) (assign_123_20_5 a0_ind a0_val a1_ind a1_val u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (< a0_ind a1_ind) (assign_123_20_5 a0_ind a0_val a1_ind a1_val u c tmp size i)) (while_126_17_1 a0_ind a0_val a1_ind a1_val u c tmp size (+ i 2)))))
(check-sat)
