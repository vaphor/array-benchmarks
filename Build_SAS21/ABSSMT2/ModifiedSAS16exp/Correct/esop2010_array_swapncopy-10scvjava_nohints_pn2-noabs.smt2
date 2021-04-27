;Number of predicates (nodes) = 18
;Number of variables = 6
;Number of clauses = 23
;
(set-logic HORN)
(declare-fun assign_364_34_10 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_355_33_10 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_337_32_3 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_367_29_8 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_251_28_1 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_242_25_5 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_233_24_5 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_219_23_5 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_245_20_1 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_137_19_1 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_128_17_5 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_119_16_12 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_105_15_5 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_131_13_1 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_83_12_8 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_77_11_1 ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) (Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => true (start b_copy  a_copy  b  a  N  i ))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (start b_copy  a_copy  b  a  N  i ) (assign_77_11_1 b_copy  a_copy  b  a  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_77_11_1 b_copy  a_copy  b  a  N  i ) (assign_83_12_8 b_copy  a_copy  b  a  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_83_12_8 b_copy  a_copy  b  a  N  i ) (while_131_13_1 b_copy  a_copy  b  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_131_13_1 b_copy  a_copy  b  a  N  i ) (< i  N )) (arrayassign_105_15_5 b_copy  a_copy  b  a  N  i ))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_131_13_1 b_copy  a_copy  b  a  N  i ) (not (< i  N ))) (assign_137_19_1 b_copy  a_copy  b  a  N  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (arrayassign_105_15_5 b_copy  a_copy  b  a  N  i ) (arrayassign_119_16_12 b_copy  (store a_copy  i  (select a  i )) b  a  N  i ))))
;
;(aassign) b_copy[i] := b[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (arrayassign_119_16_12 b_copy  a_copy  b  a  N  i ) (assign_128_17_5 (store b_copy  i  (select b  i )) a_copy  b  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_128_17_5 b_copy  a_copy  b  a  N  i ) (while_131_13_1 b_copy  a_copy  b  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_137_19_1 b_copy  a_copy  b  a  N  i ) (while_245_20_1 b_copy  a_copy  b  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_245_20_1 b_copy  a_copy  b  a  N  i ) (< i  N )) (arrayassign_219_23_5 b_copy  a_copy  b  a  N  i ))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_245_20_1 b_copy  a_copy  b  a  N  i ) (not (< i  N ))) (assign_251_28_1 b_copy  a_copy  b  a  N  i ))))
;
;(aassign) a_copy[i] := b[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (arrayassign_219_23_5 b_copy  a_copy  b  a  N  i ) (arrayassign_233_24_5 b_copy  (store a_copy  i  (select b  i )) b  a  N  i ))))
;
;(aassign) b_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (arrayassign_233_24_5 b_copy  a_copy  b  a  N  i ) (assign_242_25_5 (store b_copy  i  (select a  i )) a_copy  b  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_242_25_5 b_copy  a_copy  b  a  N  i ) (while_245_20_1 b_copy  a_copy  b  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_251_28_1 b_copy  a_copy  b  a  N  i ) (while_367_29_8 b_copy  a_copy  b  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_367_29_8 b_copy  a_copy  b  a  N  i ) (< i  N )) (assert_337_32_3 b_copy  a_copy  b  a  N  i ))))
(assert (forall ((b_copy (Array Int Int)) (a_copy (Array Int Int)) (b (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_367_29_8 b_copy  a_copy  b  a  N  i ) (not (< i  N ))) (end b_copy  a_copy  b  a  N  i ))))
;
;(assert)  (a[i]==b_copy[i])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_337_32_3 b_copy  a_copy  b  a  N  i ) (= (select a  i ) (select b_copy  i )))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_337_32_3 b_copy  a_copy  b  a  N  i ) (assert_355_33_10 b_copy  a_copy  b  a  N  i ))))
;
;(assert)  (b[i]==a_copy[i])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_355_33_10 b_copy  a_copy  b  a  N  i ) (= (select b  i ) (select a_copy  i )))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assert_355_33_10 b_copy  a_copy  b  a  N  i ) (assign_364_34_10 b_copy  a_copy  b  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (b (Array Int Int)) (a_copy (Array Int Int)) (b_copy (Array Int Int)) ) ( => (assign_364_34_10 b_copy  a_copy  b  a  N  i ) (while_367_29_8 b_copy  a_copy  b  a  N  (+ i  1)))))
(check-sat)
