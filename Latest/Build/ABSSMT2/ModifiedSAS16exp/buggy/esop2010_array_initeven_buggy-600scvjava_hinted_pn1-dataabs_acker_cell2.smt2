
(set-logic HORN)
(declare-rel assign_123_20_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assert_114_19_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_100_18_5_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel while_126_17_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_82_16_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_73_13_4_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel arrayassign_64_12_4_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel while_76_11_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_46_10_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel assign_40_9_1_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 6
;Number of clauses = 15
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int) (i2 Int)) (=> (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i2 vacker_1 i1 vacker_0 u c tmp size i))))
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (start_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (start_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (start_abs i2 vacker_1 i2 vacker_1 u c tmp size i)) (assign_40_9_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_40_9_1_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (assign_40_9_1_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (assign_40_9_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (assign_40_9_1_abs i2 vacker_1 i2 vacker_1 u c tmp size i)) (assign_46_10_1_abs i2 vacker_1 i1 vacker_0 u c tmp rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_46_10_1_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (assign_46_10_1_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (assign_46_10_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (assign_46_10_1_abs i2 vacker_1 i2 vacker_1 u c tmp size i)) (while_76_11_1_abs i2 vacker_1 i1 vacker_0 u c tmp size 0))))
;
;(while)   while((i<size))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_76_11_1_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (while_76_11_1_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (while_76_11_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (while_76_11_1_abs i2 vacker_1 i2 vacker_1 u c tmp size i) (< i size)) (arrayassign_64_12_4_abs i2 vacker_1 i1 vacker_0 u c tmp size i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_76_11_1_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (while_76_11_1_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (while_76_11_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (while_76_11_1_abs i2 vacker_1 i2 vacker_1 u c tmp size i) (not (< i size))) (assign_82_16_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i))))
;
;(aassign) a[i] := 1
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (arrayassign_64_12_4_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (arrayassign_64_12_4_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (arrayassign_64_12_4_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (arrayassign_64_12_4_abs i2 vacker_1 i2 vacker_1 u c tmp size i)) (assign_73_13_4_abs i2 (ite (= i i2) 1 vacker_1) i1 (ite (= i i1) 1 vacker_0) u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_73_13_4_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (assign_73_13_4_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (assign_73_13_4_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (assign_73_13_4_abs i2 vacker_1 i2 vacker_1 u c tmp size i)) (while_76_11_1_abs i2 vacker_1 i1 vacker_0 u c tmp size (+ i 2)))))
;
;(assign)  i := 1
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_82_16_1_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (assign_82_16_1_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (assign_82_16_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (assign_82_16_1_abs i2 vacker_1 i2 vacker_1 u c tmp size i)) (while_126_17_1_abs i2 vacker_1 i1 vacker_0 u c tmp size 1))))
;
;(while)   while((i<size))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_126_17_1_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (while_126_17_1_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (while_126_17_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (while_126_17_1_abs i2 vacker_1 i2 vacker_1 u c tmp size i) (< i size)) (assign_100_18_5_abs i2 vacker_1 i1 vacker_0 u c tmp size i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (u Int) (c Int) (tmp Int) (size Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_126_17_1_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (while_126_17_1_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (while_126_17_1_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (while_126_17_1_abs i2 vacker_1 i2 vacker_1 u c tmp size i) (not (< i size))) (end_abs i2 vacker_1 i1 vacker_0 u c tmp size i))))
;
;(assign)  u := a[i]
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (assign_100_18_5_abs i vacker_0 i vacker_0 u c tmp size i) (assign_100_18_5_abs i vacker_0 i1 vacker_1 u c tmp size i) (assign_100_18_5_abs i vacker_0 i2 vacker_2 u c tmp size i) (assign_100_18_5_abs i1 vacker_1 i vacker_0 u c tmp size i) (assign_100_18_5_abs i1 vacker_1 i1 vacker_1 u c tmp size i) (assign_100_18_5_abs i1 vacker_1 i2 vacker_2 u c tmp size i) (assign_100_18_5_abs i2 vacker_2 i vacker_0 u c tmp size i) (assign_100_18_5_abs i2 vacker_2 i1 vacker_1 u c tmp size i) (assign_100_18_5_abs i2 vacker_2 i2 vacker_2 u c tmp size i)) (assert_114_19_5_abs i2 vacker_2 i1 vacker_1 vacker_0 c tmp size i))))
;
;(assert)  (a[i]==1)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (acker Int)) (=> (assert_114_19_5_abs i acker i acker u c tmp size i) (= 1 acker))))
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_114_19_5_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (assert_114_19_5_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (assert_114_19_5_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (assert_114_19_5_abs i2 vacker_1 i2 vacker_1 u c tmp size i)) (assign_123_20_5_abs i2 vacker_1 i1 vacker_0 u c tmp size i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (size Int) (tmp Int) (c Int) (u Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_123_20_5_abs i1 vacker_0 i1 vacker_0 u c tmp size i) (assign_123_20_5_abs i1 vacker_0 i2 vacker_1 u c tmp size i) (assign_123_20_5_abs i2 vacker_1 i1 vacker_0 u c tmp size i) (assign_123_20_5_abs i2 vacker_1 i2 vacker_1 u c tmp size i)) (while_126_17_1_abs i2 vacker_1 i1 vacker_0 u c tmp size (+ i 2)))))
(check-sat)
