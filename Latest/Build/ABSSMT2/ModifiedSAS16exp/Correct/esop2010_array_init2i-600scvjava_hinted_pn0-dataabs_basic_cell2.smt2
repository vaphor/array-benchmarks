
(set-logic HORN)
(declare-rel assign_23_5_214_abs (Int Int Int Int Int Int Int))
(declare-rel assert_22_5_205_abs (Int Int Int Int Int Int Int))
(declare-rel assert_21_12_185_abs (Int Int Int Int Int Int Int))
(declare-rel while_20_1_217_abs (Int Int Int Int Int Int Int))
(declare-rel assign_19_1_142_abs (Int Int Int Int Int Int Int))
(declare-rel assign_16_5_133_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_15_5_124_abs (Int Int Int Int Int Int Int))
(declare-rel assert_14_12_108_abs (Int Int Int Int Int Int Int))
(declare-rel while_13_1_136_abs (Int Int Int Int Int Int Int))
(declare-rel assign_12_1_65_abs (Int Int Int Int Int Int Int))
(declare-rel assign_10_8_59_abs (Int Int Int Int Int Int Int))
(declare-rel assign_9_1_47_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 14
;Number of variables = 4
;Number of clauses = 19
;
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a i2) i1 (select a i1) c N i)))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (start_abs i1 (select a i1) i1 (select a i1) c N i) (start_abs i1 (select a i1) i2 (select a i2) c N i) (start_abs i2 (select a i2) i1 (select a i1) c N i) (start_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_9_1_47_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_9_1_47_abs i1 (select a i1) i1 (select a i1) c N i) (assign_9_1_47_abs i1 (select a i1) i2 (select a i2) c N i) (assign_9_1_47_abs i2 (select a i2) i1 (select a i1) c N i) (assign_9_1_47_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_10_8_59_abs i2 (select a i2) i1 (select a i1) c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_10_8_59_abs i1 (select a i1) i1 (select a i1) c N i) (assign_10_8_59_abs i1 (select a i1) i2 (select a i2) c N i) (assign_10_8_59_abs i2 (select a i2) i1 (select a i1) c N i) (assign_10_8_59_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_12_1_65_abs i2 (select a i2) i1 (select a i1) rnd N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_12_1_65_abs i1 (select a i1) i1 (select a i1) c N i) (assign_12_1_65_abs i1 (select a i1) i2 (select a i2) c N i) (assign_12_1_65_abs i2 (select a i2) i1 (select a i1) c N i) (assign_12_1_65_abs i2 (select a i2) i2 (select a i2) c N i)) (while_13_1_136_abs i2 (select a i2) i1 (select a i1) c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_13_1_136_abs i1 (select a i1) i1 (select a i1) c N i) (while_13_1_136_abs i1 (select a i1) i2 (select a i2) c N i) (while_13_1_136_abs i2 (select a i2) i1 (select a i1) c N i) (while_13_1_136_abs i2 (select a i2) i2 (select a i2) c N i) (< i N)) (assert_14_12_108_abs i2 (select a i2) i1 (select a i1) c N i))))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_13_1_136_abs i1 (select a i1) i1 (select a i1) c N i) (while_13_1_136_abs i1 (select a i1) i2 (select a i2) c N i) (while_13_1_136_abs i2 (select a i2) i1 (select a i1) c N i) (while_13_1_136_abs i2 (select a i2) i2 (select a i2) c N i) (not (< i N))) (assign_19_1_142_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==((2*k)+c)))
(assert (forall ( (k Int) (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (and (assert_14_12_108_abs k (select a k) k (select a k) c N i) (<= 0 k) (< k i)) (= (+ (* 2 k) c) (select a k)))))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_14_12_108_abs i1 (select a i1) i1 (select a i1) c N i) (assert_14_12_108_abs i1 (select a i1) i2 (select a i2) c N i) (assert_14_12_108_abs i2 (select a i2) i1 (select a i1) c N i) (assert_14_12_108_abs i2 (select a i2) i2 (select a i2) c N i)) (arrayassign_15_5_124_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(aassign) a[i] := ((2*i)+c)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_15_5_124_abs i1 (select a i1) i1 (select a i1) c N i) (arrayassign_15_5_124_abs i1 (select a i1) i2 (select a i2) c N i) (arrayassign_15_5_124_abs i2 (select a i2) i1 (select a i1) c N i) (arrayassign_15_5_124_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_16_5_133_abs i2 (ite (= i i2) (+ (* 2 i) c) (select a i2)) i1 (ite (= i i1) (+ (* 2 i) c) (select a i1)) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_16_5_133_abs i1 (select a i1) i1 (select a i1) c N i) (assign_16_5_133_abs i1 (select a i1) i2 (select a i2) c N i) (assign_16_5_133_abs i2 (select a i2) i1 (select a i1) c N i) (assign_16_5_133_abs i2 (select a i2) i2 (select a i2) c N i)) (while_13_1_136_abs i2 (select a i2) i1 (select a i1) c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_19_1_142_abs i1 (select a i1) i1 (select a i1) c N i) (assign_19_1_142_abs i1 (select a i1) i2 (select a i2) c N i) (assign_19_1_142_abs i2 (select a i2) i1 (select a i1) c N i) (assign_19_1_142_abs i2 (select a i2) i2 (select a i2) c N i)) (while_20_1_217_abs i2 (select a i2) i1 (select a i1) c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_20_1_217_abs i1 (select a i1) i1 (select a i1) c N i) (while_20_1_217_abs i1 (select a i1) i2 (select a i2) c N i) (while_20_1_217_abs i2 (select a i2) i1 (select a i1) c N i) (while_20_1_217_abs i2 (select a i2) i2 (select a i2) c N i) (< i N)) (assert_21_12_185_abs i2 (select a i2) i1 (select a i1) c N i))))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_20_1_217_abs i1 (select a i1) i1 (select a i1) c N i) (while_20_1_217_abs i1 (select a i1) i2 (select a i2) c N i) (while_20_1_217_abs i2 (select a i2) i1 (select a i1) c N i) (while_20_1_217_abs i2 (select a i2) i2 (select a i2) c N i) (not (< i N))) (end_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==((2*k)+c)))
(assert (forall ( (k Int) (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (and (assert_21_12_185_abs k (select a k) k (select a k) c N i) (<= 0 k) (< k N)) (= (+ (* 2 k) c) (select a k)))))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_21_12_185_abs i1 (select a i1) i1 (select a i1) c N i) (assert_21_12_185_abs i1 (select a i1) i2 (select a i2) c N i) (assert_21_12_185_abs i2 (select a i2) i1 (select a i1) c N i) (assert_21_12_185_abs i2 (select a i2) i2 (select a i2) c N i)) (assert_22_5_205_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(assert)  (a[i]==((2*i)+c))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (assert_22_5_205_abs i (select a i) i (select a i) c N i) (= (+ (* 2 i) c) (select a i)))))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_22_5_205_abs i1 (select a i1) i1 (select a i1) c N i) (assert_22_5_205_abs i1 (select a i1) i2 (select a i2) c N i) (assert_22_5_205_abs i2 (select a i2) i1 (select a i1) c N i) (assert_22_5_205_abs i2 (select a i2) i2 (select a i2) c N i)) (assign_23_5_214_abs i2 (select a i2) i1 (select a i1) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_23_5_214_abs i1 (select a i1) i1 (select a i1) c N i) (assign_23_5_214_abs i1 (select a i1) i2 (select a i2) c N i) (assign_23_5_214_abs i2 (select a i2) i1 (select a i1) c N i) (assign_23_5_214_abs i2 (select a i2) i2 (select a i2) c N i)) (while_20_1_217_abs i2 (select a i2) i1 (select a i1) c N (+ i 1)))))
(check-sat)
