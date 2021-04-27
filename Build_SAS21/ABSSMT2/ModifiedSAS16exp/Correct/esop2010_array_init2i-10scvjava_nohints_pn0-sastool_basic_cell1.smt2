
(set-logic HORN)
(declare-rel assign_23_5_214_abs (Int Int Int Int Int))
(declare-rel assert_22_5_205_abs (Int Int Int Int Int))
(declare-rel while_20_1_217_abs (Int Int Int Int Int))
(declare-rel assign_19_1_142_abs (Int Int Int Int Int))
(declare-rel assign_16_5_133_abs (Int Int Int Int Int))
(declare-rel arrayassign_15_5_124_abs (Int Int Int Int Int))
(declare-rel while_13_1_136_abs (Int Int Int Int Int))
(declare-rel assign_12_1_65_abs (Int Int Int Int Int))
(declare-rel assign_10_8_59_abs (Int Int Int Int Int))
(declare-rel assign_9_1_47_abs (Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 4
;Number of clauses = 15
;
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (start_abs i1 (select a i1) c N i)))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (start_abs i1 (select a i1) c N i) (assign_9_1_47_abs i1 (select a i1) c N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_9_1_47_abs i1 (select a i1) c N i) (assign_10_8_59_abs i1 (select a i1) c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_10_8_59_abs i1 (select a i1) c N i) (assign_12_1_65_abs i1 (select a i1) rnd N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_12_1_65_abs i1 (select a i1) c N i) (while_13_1_136_abs i1 (select a i1) c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (=> (and (while_13_1_136_abs i1 (select a i1) c N i) (< i N)) (arrayassign_15_5_124_abs i1 (select a i1) c N i))))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (=> (and (while_13_1_136_abs i1 (select a i1) c N i) (not (< i N))) (assign_19_1_142_abs i1 (select a i1) c N i))))
;
;(aassign) a[i] := ((2*i)+c)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (arrayassign_15_5_124_abs i1 (select a i1) c N i) (assign_16_5_133_abs i1 (ite (= i i1) (+ (* 2 i) c) (select a i1)) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_16_5_133_abs i1 (select a i1) c N i) (while_13_1_136_abs i1 (select a i1) c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_19_1_142_abs i1 (select a i1) c N i) (while_20_1_217_abs i1 (select a i1) c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (=> (and (while_20_1_217_abs i1 (select a i1) c N i) (< i N)) (assert_22_5_205_abs i1 (select a i1) c N i))))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (=> (and (while_20_1_217_abs i1 (select a i1) c N i) (not (< i N))) (end_abs i1 (select a i1) c N i))))
;
;(assert)  (a[i]==((2*i)+c))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (assert_22_5_205_abs i (select a i) c N i) (= (+ (* 2 i) c) (select a i)))))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assert_22_5_205_abs i1 (select a i1) c N i) (assign_23_5_214_abs i1 (select a i1) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_23_5_214_abs i1 (select a i1) c N i) (while_20_1_217_abs i1 (select a i1) c N (+ i 1)))))
(check-sat)
