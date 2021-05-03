;Number of predicates (nodes) = 12
;Number of variables = 6
;Number of clauses = 15
;
(set-logic HORN)
(declare-fun assign_20_5_123 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_19_5_114 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_18_5_100 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_17_1_126 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_16_1_82 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_13_4_73 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_12_4_64 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_11_1_76 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_10_1_46 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_9_1_40 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (start a_ind a_val u c tmp size i)))
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (start a_ind a_val u c tmp size i) (assign_9_1_40 a_ind a_val u c tmp size i))))
;
;(assign)  size := Support.random()
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (rnd Int) (size Int) (tmp Int) (u Int)) (=> (assign_9_1_40 a_ind a_val u c tmp size i) (assign_10_1_46 a_ind a_val u c tmp rnd i))))
;
;(assign)  i := 0
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (assign_10_1_46 a_ind a_val u c tmp size i) (while_11_1_76 a_ind a_val u c tmp size 0))))
;
;(while)   while((i<size))
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (while_11_1_76 a_ind a_val u c tmp size i) (< i size)) (arrayassign_12_4_64 a_ind a_val u c tmp size i))))
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (while_11_1_76 a_ind a_val u c tmp size i) (not (< i size))) (assign_16_1_82 a_ind a_val u c tmp size i))))
;
;(aassign) a[i] := 1
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (u Int)) (=> (and (arrayassign_12_4_64 a_ind a_val u c tmp size i) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val 1)) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_13_4_73 tmp_store_a_ind tmp_store_a_val u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (assign_13_4_73 a_ind a_val u c tmp size i) (while_11_1_76 a_ind a_val u c tmp size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (assign_16_1_82 a_ind a_val u c tmp size i) (while_17_1_126 a_ind a_val u c tmp size 1))))
;
;(while)   while((i<size))
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (while_17_1_126 a_ind a_val u c tmp size i) (< i size)) (assign_18_5_100 a_ind a_val u c tmp size i))))
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (and (while_17_1_126 a_ind a_val u c tmp size i) (not (< i size))) (end a_ind a_val u c tmp size i))))
;
;(assign)  u := a[i]
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (tmp_select_a Int) (u Int)) (=> (and (assign_18_5_100 a_ind a_val u c tmp size i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assign_18_5_100 i tmp_select_a u c tmp size i)) (and (< a_ind i) (assign_18_5_100 i tmp_select_a u c tmp size i)))) (assert_19_5_114 a_ind a_val tmp_select_a c tmp size i))))
;
;(assert)  (a[i]==1)
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (tmp_select_a Int) (u Int)) (=> (and (assert_19_5_114 a_ind a_val u c tmp size i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_19_5_114 i tmp_select_a u c tmp size i)) (and (< a_ind i) (assert_19_5_114 i tmp_select_a u c tmp size i)))) (= tmp_select_a 1))))
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (assert_19_5_114 a_ind a_val u c tmp size i) (assign_20_5_123 a_ind a_val u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ((a_ind Int) (a_val Int) (c Int) (i Int) (size Int) (tmp Int) (u Int)) (=> (assign_20_5_123 a_ind a_val u c tmp size i) (while_17_1_126 a_ind a_val u c tmp size (+ i 2)))))
(check-sat)
