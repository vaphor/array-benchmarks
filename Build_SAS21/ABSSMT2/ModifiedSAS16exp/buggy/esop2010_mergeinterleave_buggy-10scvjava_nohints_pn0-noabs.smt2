;Number of predicates (nodes) = 20
;Number of variables = 6
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_38_5_234 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_37_5_225 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_32_2_191 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_35_2_213 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun if_31_5_216 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_30_1_237 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_29_1_157 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_28_1_151 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_26_1_145 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_23_5_127 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_22_5_118 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_21_1_130 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_20_1_96 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_17_5_87 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_16_5_78 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_15_1_90 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_14_1_56 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_12_1_50 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => true (start res  b  a  modul  size  i ))))
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (start res  b  a  modul  size  i ) (assign_12_1_50 res  b  a  modul  size  i ))))
;
;(assign)  size := Support.random()
(assert (forall ((rnd Int) (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_12_1_50 res  b  a  modul  size  i ) (assign_14_1_56 res  b  a  modul  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_14_1_56 res  b  a  modul  size  i ) (while_15_1_90 res  b  a  modul  size  0))))
;
;(while)   while((i<size))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_15_1_90 res  b  a  modul  size  i ) (< i  size )) (arrayassign_16_5_78 res  b  a  modul  size  i ))))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_15_1_90 res  b  a  modul  size  i ) (not (< i  size ))) (assign_20_1_96 res  b  a  modul  size  i ))))
;
;(aassign) res[i] := a[i]
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (arrayassign_16_5_78 res  b  a  modul  size  i ) (assign_17_5_87 (store res  i  (select a  i )) b  a  modul  size  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_17_5_87 res  b  a  modul  size  i ) (while_15_1_90 res  b  a  modul  size  (+ i  2)))))
;
;(assign)  i := 1
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_20_1_96 res  b  a  modul  size  i ) (while_21_1_130 res  b  a  modul  size  1))))
;
;(while)   while((i<size))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_21_1_130 res  b  a  modul  size  i ) (< i  size )) (arrayassign_22_5_118 res  b  a  modul  size  i ))))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_21_1_130 res  b  a  modul  size  i ) (not (< i  size ))) (assign_26_1_145 res  b  a  modul  size  i ))))
;
;(aassign) res[i] := b[i]
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (arrayassign_22_5_118 res  b  a  modul  size  i ) (assign_23_5_127 (store res  i  (select b  i )) b  a  modul  size  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_23_5_127 res  b  a  modul  size  i ) (while_21_1_130 res  b  a  modul  size  (+ i  2)))))
;
;(assign)  k := Support.random(0, size)
(assert (forall ((rnd Int) (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (assign_26_1_145 res  b  a  modul  size  i ) (>= rnd 0) (< rnd size )) (assign_28_1_151 res  b  a  modul  size  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_28_1_151 res  b  a  modul  size  i ) (assign_29_1_157 res  b  a  modul  size  0))))
;
;(assign)  modul := 1
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_29_1_157 res  b  a  modul  size  i ) (while_30_1_237 res  b  a  1 size  i ))))
;
;(while)   while((i<size))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_30_1_237 res  b  a  modul  size  i ) (< i  size )) (if_31_5_216 res  b  a  modul  size  i ))))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_30_1_237 res  b  a  modul  size  i ) (not (< i  size ))) (end res  b  a  modul  size  i ))))
;
;(if)      if((modul==0))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (if_31_5_216 res  b  a  modul  size  i ) (= modul  0)) (assert_32_2_191 res  b  a  modul  size  i ))))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (if_31_5_216 res  b  a  modul  size  i ) (not (= modul  0))) (assert_35_2_213 res  b  a  modul  size  i ))))
;
;(assert)  (res[i]==a[i])
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assert_32_2_191 res  b  a  modul  size  i ) (= (select res  i ) (select a  i )))))
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assert_32_2_191 res  b  a  modul  size  i ) (assign_37_5_225 res  b  a  modul  size  i ))))
;
;(assert)  (res[i]==b[i])
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assert_35_2_213 res  b  a  modul  size  i ) (= (select res  i ) (select b  i )))))
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assert_35_2_213 res  b  a  modul  size  i ) (assign_37_5_225 res  b  a  modul  size  i ))))
;
;(assign)  modul := (1-modul)
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_37_5_225 res  b  a  modul  size  i ) (assign_38_5_234 res  b  a  (- 1 modul ) size  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_38_5_234 res  b  a  modul  size  i ) (while_30_1_237 res  b  a  modul  size  (+ i  1)))))
(check-sat)
