;Number of predicates (nodes) = 12
;Number of variables = 6
;Number of clauses = 15
;
(set-logic HORN)
(declare-fun assign_20_5_123 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assert_19_5_114 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_18_5_100 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun while_17_1_126 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_16_1_82 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_13_4_73 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun arrayassign_12_4_64 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun while_11_1_76 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_10_1_46 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun assign_9_1_40 ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => true (start a  u  c  tmp  size  i ))))
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (start a  u  c  tmp  size  i ) (assign_9_1_40 a  u  c  tmp  size  i ))))
;
;(assign)  size := Support.random()
(assert (forall ((rnd Int) (i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_9_1_40 a  u  c  tmp  size  i ) (assign_10_1_46 a  u  c  tmp  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_10_1_46 a  u  c  tmp  size  i ) (while_11_1_76 a  u  c  tmp  size  0))))
;
;(while)   while((i<size))
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => ( and (while_11_1_76 a  u  c  tmp  size  i ) (< i  size )) (arrayassign_12_4_64 a  u  c  tmp  size  i ))))
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => ( and (while_11_1_76 a  u  c  tmp  size  i ) (not (< i  size ))) (assign_16_1_82 a  u  c  tmp  size  i ))))
;
;(aassign) a[i] := 1
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (arrayassign_12_4_64 a  u  c  tmp  size  i ) (assign_13_4_73 (store a  i  1) u  c  tmp  size  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_13_4_73 a  u  c  tmp  size  i ) (while_11_1_76 a  u  c  tmp  size  (+ i  2)))))
;
;(assign)  i := 1
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_16_1_82 a  u  c  tmp  size  i ) (while_17_1_126 a  u  c  tmp  size  1))))
;
;(while)   while((i<size))
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => ( and (while_17_1_126 a  u  c  tmp  size  i ) (< i  size )) (assign_18_5_100 a  u  c  tmp  size  i ))))
(assert (forall ((a (Array Int Int)) (u Int) (c Int) (tmp Int) (size Int) (i Int) ) ( => ( and (while_17_1_126 a  u  c  tmp  size  i ) (not (< i  size ))) (end a  u  c  tmp  size  i ))))
;
;(assign)  u := a[i]
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_18_5_100 a  u  c  tmp  size  i ) (assert_19_5_114 a  (select a  i ) c  tmp  size  i ))))
;
;(assert)  (a[i]==1)
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assert_19_5_114 a  u  c  tmp  size  i ) (= (select a  i ) 1))))
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assert_19_5_114 a  u  c  tmp  size  i ) (assign_20_5_123 a  u  c  tmp  size  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (size Int) (tmp Int) (c Int) (u Int) (a (Array Int Int)) ) ( => (assign_20_5_123 a  u  c  tmp  size  i ) (while_17_1_126 a  u  c  tmp  size  (+ i  2)))))
(check-sat)
