;Number of predicates (nodes) = 20
;Number of variables = 6
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_234_38_5 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_225_37_5 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_191_32_2 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_213_35_2 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun if_216_31_5 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_237_30_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_157_29_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_151_28_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_145_26_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_127_23_5 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_118_22_5 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_130_21_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_96_20_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_87_17_5 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_78_16_5 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_90_15_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_56_14_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_50_12_1 ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) (Array Int Int) Int Int Int ) Bool)
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => true (start res  b  a  modul  size  i ))))
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (start res  b  a  modul  size  i ) (assign_50_12_1 res  b  a  modul  size  i ))))
;
;(assign)  size := Support.random()
(assert (forall ((rnd Int) (i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_50_12_1 res  b  a  modul  size  i ) (assign_56_14_1 res  b  a  modul  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_56_14_1 res  b  a  modul  size  i ) (while_90_15_1 res  b  a  modul  size  0))))
;
;(while)   while((i<size))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_90_15_1 res  b  a  modul  size  i ) (< i  size )) (arrayassign_78_16_5 res  b  a  modul  size  i ))))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_90_15_1 res  b  a  modul  size  i ) (not (< i  size ))) (assign_96_20_1 res  b  a  modul  size  i ))))
;
;(aassign) res[i] := a[i]
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (arrayassign_78_16_5 res  b  a  modul  size  i ) (assign_87_17_5 (store res  i  (select a  i )) b  a  modul  size  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_87_17_5 res  b  a  modul  size  i ) (while_90_15_1 res  b  a  modul  size  (+ i  2)))))
;
;(assign)  i := 1
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_96_20_1 res  b  a  modul  size  i ) (while_130_21_1 res  b  a  modul  size  1))))
;
;(while)   while((i<size))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_130_21_1 res  b  a  modul  size  i ) (< i  size )) (arrayassign_118_22_5 res  b  a  modul  size  i ))))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_130_21_1 res  b  a  modul  size  i ) (not (< i  size ))) (assign_145_26_1 res  b  a  modul  size  i ))))
;
;(aassign) res[i] := b[i]
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (arrayassign_118_22_5 res  b  a  modul  size  i ) (assign_127_23_5 (store res  i  (select b  i )) b  a  modul  size  i ))))
;
;(assign)  i := (i+2)
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_127_23_5 res  b  a  modul  size  i ) (while_130_21_1 res  b  a  modul  size  (+ i  2)))))
;
;(assign)  k := Support.random(0, size)
(assert (forall ((rnd Int) (res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (assign_145_26_1 res  b  a  modul  size  i ) (>= rnd 0) (< rnd size )) (assign_151_28_1 res  b  a  modul  size  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_151_28_1 res  b  a  modul  size  i ) (assign_157_29_1 res  b  a  modul  size  0))))
;
;(assign)  modul := 1
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_157_29_1 res  b  a  modul  size  i ) (while_237_30_1 res  b  a  1 size  i ))))
;
;(while)   while((i<size))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_237_30_1 res  b  a  modul  size  i ) (< i  size )) (if_216_31_5 res  b  a  modul  size  i ))))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (while_237_30_1 res  b  a  modul  size  i ) (not (< i  size ))) (end res  b  a  modul  size  i ))))
;
;(if)      if((modul==0))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (if_216_31_5 res  b  a  modul  size  i ) (= modul  0)) (assert_191_32_2 res  b  a  modul  size  i ))))
(assert (forall ((res (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (modul Int) (size Int) (i Int) ) ( => ( and (if_216_31_5 res  b  a  modul  size  i ) (not (= modul  0))) (assert_213_35_2 res  b  a  modul  size  i ))))
;
;(assert)  (res[i]==a[i])
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assert_191_32_2 res  b  a  modul  size  i ) (= (select res  i ) (select a  i )))))
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assert_191_32_2 res  b  a  modul  size  i ) (assign_225_37_5 res  b  a  modul  size  i ))))
;
;(assert)  (res[i]==b[i])
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assert_213_35_2 res  b  a  modul  size  i ) (= (select res  i ) (select b  i )))))
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assert_213_35_2 res  b  a  modul  size  i ) (assign_225_37_5 res  b  a  modul  size  i ))))
;
;(assign)  modul := (1-modul)
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_225_37_5 res  b  a  modul  size  i ) (assign_234_38_5 res  b  a  (- 1 modul ) size  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (size Int) (modul Int) (a (Array Int Int)) (b (Array Int Int)) (res (Array Int Int)) ) ( => (assign_234_38_5 res  b  a  modul  size  i ) (while_237_30_1 res  b  a  modul  size  (+ i  1)))))
(check-sat)
