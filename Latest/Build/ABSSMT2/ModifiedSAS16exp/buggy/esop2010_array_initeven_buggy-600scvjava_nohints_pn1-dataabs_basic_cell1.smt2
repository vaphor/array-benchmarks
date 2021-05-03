
(set-logic HORN)
(declare-rel assign_123_20_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_114_19_5_abs (Int Int Int Int Int Int Int))
(declare-rel assign_100_18_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_126_17_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_82_16_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_73_13_4_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_64_12_4_abs (Int Int Int Int Int Int Int))
(declare-rel while_76_11_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_46_10_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_40_9_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 6
;Number of clauses = 15
;
(assert (forall ( (a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (start_abs i1 (select a i1) u c tmp size i)))
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (start_abs i1 (select a i1) u c tmp size i) (assign_40_9_1_abs i1 (select a i1) u c tmp size i))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (assign_40_9_1_abs i1 (select a i1) u c tmp size i) (assign_46_10_1_abs i1 (select a i1) u c tmp rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (assign_46_10_1_abs i1 (select a i1) u c tmp size i) (while_76_11_1_abs i1 (select a i1) u c tmp size 0))))
;
;(while)   while((i<size))
(assert (forall ( (a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (=> (and (while_76_11_1_abs i1 (select a i1) u c tmp size i) (< i size)) (arrayassign_64_12_4_abs i1 (select a i1) u c tmp size i))))
(assert (forall ( (a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (=> (and (while_76_11_1_abs i1 (select a i1) u c tmp size i) (not (< i size))) (assign_82_16_1_abs i1 (select a i1) u c tmp size i))))
;
;(aassign) a[i] := 1
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (arrayassign_64_12_4_abs i1 (select a i1) u c tmp size i) (assign_73_13_4_abs i1 (ite (= i i1) 1 (select a i1)) u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (assign_73_13_4_abs i1 (select a i1) u c tmp size i) (while_76_11_1_abs i1 (select a i1) u c tmp size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (assign_82_16_1_abs i1 (select a i1) u c tmp size i) (while_126_17_1_abs i1 (select a i1) u c tmp size 1))))
;
;(while)   while((i<size))
(assert (forall ( (a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (=> (and (while_126_17_1_abs i1 (select a i1) u c tmp size i) (< i size)) (assign_100_18_5_abs i1 (select a i1) u c tmp size i))))
(assert (forall ( (a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (=> (and (while_126_17_1_abs i1 (select a i1) u c tmp size i) (not (< i size))) (end_abs i1 (select a i1) u c tmp size i))))
;
;(assign)  u := a[i]
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (and (assign_100_18_5_abs i (select a i) u c tmp size i) (assign_100_18_5_abs i1 (select a i1) u c tmp size i)) (assert_114_19_5_abs i1 (select a i1) (select a i) c tmp size i))))
;
;(assert)  (a[i]==1)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int))) (=> (assert_114_19_5_abs i (select a i) u c tmp size i) (= 1 (select a i)))))
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (assert_114_19_5_abs i1 (select a i1) u c tmp size i) (assign_123_20_5_abs i1 (select a i1) u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) (i1 Int)) (=> (assign_123_20_5_abs i1 (select a i1) u c tmp size i) (while_126_17_1_abs i1 (select a i1) u c tmp size (+ i 2)))))
(check-sat)
