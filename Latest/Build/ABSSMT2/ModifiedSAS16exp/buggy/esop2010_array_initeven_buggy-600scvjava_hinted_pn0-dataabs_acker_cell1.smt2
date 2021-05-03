
(set-logic HORN)
(declare-rel assign_20_5_123_abs (Int Int Int Int Int Int Int))
(declare-rel assert_19_5_114_abs (Int Int Int Int Int Int Int))
(declare-rel assign_18_5_100_abs (Int Int Int Int Int Int Int))
(declare-rel while_17_1_126_abs (Int Int Int Int Int Int Int))
(declare-rel assign_16_1_82_abs (Int Int Int Int Int Int Int))
(declare-rel assign_13_4_73_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_12_4_64_abs (Int Int Int Int Int Int Int))
(declare-rel while_11_1_76_abs (Int Int Int Int Int Int Int))
(declare-rel assign_10_1_46_abs (Int Int Int Int Int Int Int))
(declare-rel assign_9_1_40_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 6
;Number of clauses = 15
;
(assert (forall ( (acker Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (start_abs i1 acker u c tmp size i)))
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int) (i1 Int)) (=> (start_abs i1 acker u c tmp size i) (assign_9_1_40_abs i1 acker u c tmp size i))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int) (i1 Int)) (=> (assign_9_1_40_abs i1 acker u c tmp size i) (assign_10_1_46_abs i1 acker u c tmp rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int) (i1 Int)) (=> (assign_10_1_46_abs i1 acker u c tmp size i) (while_11_1_76_abs i1 acker u c tmp size 0))))
;
;(while)   while((i<size))
(assert (forall ( (acker Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (=> (and (while_11_1_76_abs i1 acker u c tmp size i) (< i size)) (arrayassign_12_4_64_abs i1 acker u c tmp size i))))
(assert (forall ( (acker Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (=> (and (while_11_1_76_abs i1 acker u c tmp size i) (not (< i size))) (assign_16_1_82_abs i1 acker u c tmp size i))))
;
;(aassign) a[i] := 1
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int) (i1 Int)) (=> (arrayassign_12_4_64_abs i1 acker u c tmp size i) (assign_13_4_73_abs i1 (ite (= i i1) 1 acker) u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int) (i1 Int)) (=> (assign_13_4_73_abs i1 acker u c tmp size i) (while_11_1_76_abs i1 acker u c tmp size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int) (i1 Int)) (=> (assign_16_1_82_abs i1 acker u c tmp size i) (while_17_1_126_abs i1 acker u c tmp size 1))))
;
;(while)   while((i<size))
(assert (forall ( (acker Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (=> (and (while_17_1_126_abs i1 acker u c tmp size i) (< i size)) (assign_18_5_100_abs i1 acker u c tmp size i))))
(assert (forall ( (acker Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int)) (=> (and (while_17_1_126_abs i1 acker u c tmp size i) (not (< i size))) (end_abs i1 acker u c tmp size i))))
;
;(assign)  u := a[i]
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (assign_18_5_100_abs i vacker_0 u c tmp size i) (assign_18_5_100_abs i1 vacker_1 u c tmp size i)) (assert_19_5_114_abs i1 vacker_1 vacker_0 c tmp size i))))
;
;(assert)  (a[i]==1)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int)) (=> (assert_19_5_114_abs i acker u c tmp size i) (= 1 acker))))
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int) (i1 Int)) (=> (assert_19_5_114_abs i1 acker u c tmp size i) (assign_20_5_123_abs i1 acker u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int) (i1 Int)) (=> (assign_20_5_123_abs i1 acker u c tmp size i) (while_17_1_126_abs i1 acker u c tmp size (+ i 2)))))
(check-sat)