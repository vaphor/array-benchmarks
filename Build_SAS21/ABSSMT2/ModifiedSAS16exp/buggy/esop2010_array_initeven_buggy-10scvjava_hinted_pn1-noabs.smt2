;Number of predicates (nodes) = 12
;Number of variables = 6
;Number of clauses = 15
;
(set-logic HORN)
(declare-fun assign_123_20_5 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assert_114_19_5 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_100_18_5 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun while_126_17_1 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_82_16_1 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_73_13_4 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun arrayassign_64_12_4 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun while_76_11_1 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_46_10_1 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_40_9_1 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => true (start a  u  c  tmp  size  i ))))
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (start a  u  c  tmp  size  i ) (assign_40_9_1 a  u  c  tmp  size  i ))))
;
;(assign)  size := Support.random()
(assert (forall ((rnd Int) (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_40_9_1 a  u  c  tmp  size  i ) (assign_46_10_1 a  u  c  tmp  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_46_10_1 a  u  c  tmp  size  i ) (while_76_11_1 a  u  c  tmp  size  0))))
;
;(while)   while((i<size))
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => ( and (while_76_11_1 a  u  c  tmp  size  i ) (< i  size )) (arrayassign_64_12_4 a  u  c  tmp  size  i ))))
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => ( and (while_76_11_1 a  u  c  tmp  size  i ) (not (< i  size ))) (assign_82_16_1 a  u  c  tmp  size  i ))))
;
;(aassign) a[i] := 1
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (arrayassign_64_12_4 a  u  c  tmp  size  i ) (assign_73_13_4 (store a  i  1) u  c  tmp  size  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_73_13_4 a  u  c  tmp  size  i ) (while_76_11_1 a  u  c  tmp  size  (+ i  2)))))
;
;(assign)  i := 1
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_82_16_1 a  u  c  tmp  size  i ) (while_126_17_1 a  u  c  tmp  size  1))))
;
;(while)   while((i<size))
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => ( and (while_126_17_1 a  u  c  tmp  size  i ) (< i  size )) (assign_100_18_5 a  u  c  tmp  size  i ))))
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => ( and (while_126_17_1 a  u  c  tmp  size  i ) (not (< i  size ))) (end a  u  c  tmp  size  i ))))
;
;(assign)  u := a[i]
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_100_18_5 a  u  c  tmp  size  i ) (assert_114_19_5 a  (select a  i ) c  tmp  size  i ))))
;
;(assert)  (a[i]==1)
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assert_114_19_5 a  u  c  tmp  size  i ) (= (select a  i ) 1))))
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assert_114_19_5 a  u  c  tmp  size  i ) (assign_123_20_5 a  u  c  tmp  size  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_123_20_5 a  u  c  tmp  size  i ) (while_126_17_1 a  u  c  tmp  size  (+ i  2)))))
(check-sat)
