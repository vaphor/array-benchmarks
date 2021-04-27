
(set-logic HORN)
(declare-rel assign_214_23_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_205_22_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_217_20_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_142_19_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_133_16_5_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_124_15_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_136_13_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_65_12_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_59_10_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_47_9_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 4
;Number of clauses = 15
;
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a i2) i1 (select a i1) c N i)))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (start_abs i1 (select a i1) i1 (select a i1) c N i) (start_abs i1 (select a i1) i2 (select a i2) c N i) (start_abs i2 (select a i2) i1 (select a i1) c N i) (start_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_47_9_1_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_47_9_1_abs i1 (select a i1) i1 (select a i1) c N i) (assign_47_9_1_abs i1 (select a i1) i2 (select a i2) c N i) (assign_47_9_1_abs i2 (select a i2) i1 (select a i1) c N i) (assign_47_9_1_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_59_10_8_abs i2 (select a i2) i1 (select a i1) c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_59_10_8_abs i1 (select a i1) i1 (select a i1) c N i) (assign_59_10_8_abs i1 (select a i1) i2 (select a i2) c N i) (assign_59_10_8_abs i2 (select a i2) i1 (select a i1) c N i) (assign_59_10_8_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_65_12_1_abs i2 (select a i2) i1 (select a i1) rnd N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_65_12_1_abs i1 (select a i1) i1 (select a i1) c N i) (assign_65_12_1_abs i1 (select a i1) i2 (select a i2) c N i) (assign_65_12_1_abs i2 (select a i2) i1 (select a i1) c N i) (assign_65_12_1_abs i2 (select a i2) i2 (select a i2) c N i)) (while_136_13_1_abs i2 (select a i2) i1 (select a i1) c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_136_13_1_abs i1 (select a i1) i1 (select a i1) c N i) (while_136_13_1_abs i1 (select a i1) i2 (select a i2) c N i) (while_136_13_1_abs i2 (select a i2) i1 (select a i1) c N i) (while_136_13_1_abs i2 (select a i2) i2 (select a i2) c N i) (< i N)) (arrayassign_124_15_5_abs i2 (select a i2) i1 (select a i1) c N i))))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_136_13_1_abs i1 (select a i1) i1 (select a i1) c N i) (while_136_13_1_abs i1 (select a i1) i2 (select a i2) c N i) (while_136_13_1_abs i2 (select a i2) i1 (select a i1) c N i) (while_136_13_1_abs i2 (select a i2) i2 (select a i2) c N i) (not (< i N))) (assign_142_19_1_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(aassign) a[i] := ((2*i)+c)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_124_15_5_abs i1 (select a i1) i1 (select a i1) c N i) (arrayassign_124_15_5_abs i1 (select a i1) i2 (select a i2) c N i) (arrayassign_124_15_5_abs i2 (select a i2) i1 (select a i1) c N i) (arrayassign_124_15_5_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_133_16_5_abs i2 (ite (= i i2) (+ (* 2 i) c) (select a i2)) i1 (ite (= i i1) (+ (* 2 i) c) (select a i1)) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_133_16_5_abs i1 (select a i1) i1 (select a i1) c N i) (assign_133_16_5_abs i1 (select a i1) i2 (select a i2) c N i) (assign_133_16_5_abs i2 (select a i2) i1 (select a i1) c N i) (assign_133_16_5_abs i2 (select a i2) i2 (select a i2) c N i)) (while_136_13_1_abs i2 (select a i2) i1 (select a i1) c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_142_19_1_abs i1 (select a i1) i1 (select a i1) c N i) (assign_142_19_1_abs i1 (select a i1) i2 (select a i2) c N i) (assign_142_19_1_abs i2 (select a i2) i1 (select a i1) c N i) (assign_142_19_1_abs i2 (select a i2) i2 (select a i2) c N i)) (while_217_20_1_abs i2 (select a i2) i1 (select a i1) c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_217_20_1_abs i1 (select a i1) i1 (select a i1) c N i) (while_217_20_1_abs i1 (select a i1) i2 (select a i2) c N i) (while_217_20_1_abs i2 (select a i2) i1 (select a i1) c N i) (while_217_20_1_abs i2 (select a i2) i2 (select a i2) c N i) (< i N)) (assert_205_22_5_abs i2 (select a i2) i1 (select a i1) c N i))))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_217_20_1_abs i1 (select a i1) i1 (select a i1) c N i) (while_217_20_1_abs i1 (select a i1) i2 (select a i2) c N i) (while_217_20_1_abs i2 (select a i2) i1 (select a i1) c N i) (while_217_20_1_abs i2 (select a i2) i2 (select a i2) c N i) (not (< i N))) (end_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(assert)  (a[i]==((2*i)+c))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (assert_205_22_5_abs i (select a i) i (select a i) c N i) (= (+ (* 2 i) c) (select a i)))))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_205_22_5_abs i1 (select a i1) i1 (select a i1) c N i) (assert_205_22_5_abs i1 (select a i1) i2 (select a i2) c N i) (assert_205_22_5_abs i2 (select a i2) i1 (select a i1) c N i) (assert_205_22_5_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_214_23_5_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_214_23_5_abs i1 (select a i1) i1 (select a i1) c N i) (assign_214_23_5_abs i1 (select a i1) i2 (select a i2) c N i) (assign_214_23_5_abs i2 (select a i2) i1 (select a i1) c N i) (assign_214_23_5_abs i2 (select a i2) i2 (select a i2) c N i)) (while_217_20_1_abs i2 (select a i2) i1 (select a i1) c N (+ i 1)))))
(check-sat)
