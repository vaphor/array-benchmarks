
(set-logic HORN)
(declare-rel assign_214_23_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_205_22_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_185_21_12_abs (Int Int Int Int Int Int Int))
(declare-rel while_217_20_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_142_19_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_133_16_5_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_124_15_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_108_14_12_abs (Int Int Int Int Int Int Int))
(declare-rel while_136_13_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_65_12_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_59_10_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_47_9_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 14
;Number of variables = 4
;Number of clauses = 19
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i2 vacker_0 i1 vacker_0 c N i))))
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i1 vacker_0 i1 vacker_0 c N i) (start_abs i1 vacker_0 i2 vacker_0 c N i) (start_abs i2 vacker_0 i1 vacker_0 c N i) (start_abs i2 vacker_0 i2 vacker_0 c N i)) (assign_47_9_1_abs i2 vacker_0 i1 vacker_0 c N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_47_9_1_abs i1 vacker_0 i1 vacker_0 c N i) (assign_47_9_1_abs i1 vacker_0 i2 vacker_0 c N i) (assign_47_9_1_abs i2 vacker_0 i1 vacker_0 c N i) (assign_47_9_1_abs i2 vacker_0 i2 vacker_0 c N i)) (assign_59_10_8_abs i2 vacker_0 i1 vacker_0 c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_59_10_8_abs i1 vacker_0 i1 vacker_0 c N i) (assign_59_10_8_abs i1 vacker_0 i2 vacker_0 c N i) (assign_59_10_8_abs i2 vacker_0 i1 vacker_0 c N i) (assign_59_10_8_abs i2 vacker_0 i2 vacker_0 c N i)) (assign_65_12_1_abs i2 vacker_0 i1 vacker_0 rnd N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_65_12_1_abs i1 vacker_0 i1 vacker_0 c N i) (assign_65_12_1_abs i1 vacker_0 i2 vacker_0 c N i) (assign_65_12_1_abs i2 vacker_0 i1 vacker_0 c N i) (assign_65_12_1_abs i2 vacker_0 i2 vacker_0 c N i)) (while_136_13_1_abs i2 vacker_0 i1 vacker_0 c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_136_13_1_abs i1 vacker_0 i1 vacker_0 c N i) (while_136_13_1_abs i1 vacker_0 i2 vacker_0 c N i) (while_136_13_1_abs i2 vacker_0 i1 vacker_0 c N i) (while_136_13_1_abs i2 vacker_0 i2 vacker_0 c N i) (< i N)) (assert_108_14_12_abs i2 vacker_0 i1 vacker_0 c N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_136_13_1_abs i1 vacker_0 i1 vacker_0 c N i) (while_136_13_1_abs i1 vacker_0 i2 vacker_0 c N i) (while_136_13_1_abs i2 vacker_0 i1 vacker_0 c N i) (while_136_13_1_abs i2 vacker_0 i2 vacker_0 c N i) (not (< i N))) (assign_142_19_1_abs i2 vacker_0 i1 vacker_0 c N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==((2*k)+c)))
(assert (forall ( (k Int) (i Int) (N Int) (c Int) (acker Int)) (=> (and (assert_108_14_12_abs k acker k acker c N i) (<= 0 k) (< k i)) (= (+ (* 2 k) c) acker))))
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_108_14_12_abs i1 vacker_0 i1 vacker_0 c N i) (assert_108_14_12_abs i1 vacker_0 i2 vacker_0 c N i) (assert_108_14_12_abs i2 vacker_0 i1 vacker_0 c N i) (assert_108_14_12_abs i2 vacker_0 i2 vacker_0 c N i)) (arrayassign_124_15_5_abs i2 vacker_0 i1 vacker_0 c N i))))
;
;(aassign) a[i] := ((2*i)+c)
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (arrayassign_124_15_5_abs i1 vacker_0 i1 vacker_0 c N i) (arrayassign_124_15_5_abs i1 vacker_0 i2 vacker_0 c N i) (arrayassign_124_15_5_abs i2 vacker_0 i1 vacker_0 c N i) (arrayassign_124_15_5_abs i2 vacker_0 i2 vacker_0 c N i)) (assign_133_16_5_abs i2 (ite (= i i2) (+ (* 2 i) c) vacker_0) i1 (ite (= i i1) (+ (* 2 i) c) vacker_0) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_133_16_5_abs i1 vacker_0 i1 vacker_0 c N i) (assign_133_16_5_abs i1 vacker_0 i2 vacker_0 c N i) (assign_133_16_5_abs i2 vacker_0 i1 vacker_0 c N i) (assign_133_16_5_abs i2 vacker_0 i2 vacker_0 c N i)) (while_136_13_1_abs i2 vacker_0 i1 vacker_0 c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_142_19_1_abs i1 vacker_0 i1 vacker_0 c N i) (assign_142_19_1_abs i1 vacker_0 i2 vacker_0 c N i) (assign_142_19_1_abs i2 vacker_0 i1 vacker_0 c N i) (assign_142_19_1_abs i2 vacker_0 i2 vacker_0 c N i)) (while_217_20_1_abs i2 vacker_0 i1 vacker_0 c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_217_20_1_abs i1 vacker_0 i1 vacker_0 c N i) (while_217_20_1_abs i1 vacker_0 i2 vacker_0 c N i) (while_217_20_1_abs i2 vacker_0 i1 vacker_0 c N i) (while_217_20_1_abs i2 vacker_0 i2 vacker_0 c N i) (< i N)) (assert_185_21_12_abs i2 vacker_0 i1 vacker_0 c N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_217_20_1_abs i1 vacker_0 i1 vacker_0 c N i) (while_217_20_1_abs i1 vacker_0 i2 vacker_0 c N i) (while_217_20_1_abs i2 vacker_0 i1 vacker_0 c N i) (while_217_20_1_abs i2 vacker_0 i2 vacker_0 c N i) (not (< i N))) (end_abs i2 vacker_0 i1 vacker_0 c N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==((2*k)+c)))
(assert (forall ( (k Int) (i Int) (N Int) (c Int) (acker Int)) (=> (and (assert_185_21_12_abs k acker k acker c N i) (<= 0 k) (< k N)) (= (+ (* 2 k) c) acker))))
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_185_21_12_abs i1 vacker_0 i1 vacker_0 c N i) (assert_185_21_12_abs i1 vacker_0 i2 vacker_0 c N i) (assert_185_21_12_abs i2 vacker_0 i1 vacker_0 c N i) (assert_185_21_12_abs i2 vacker_0 i2 vacker_0 c N i)) (assert_205_22_5_abs i2 vacker_0 i1 vacker_0 c N i))))
;
;(assert)  (a[i]==((2*i)+c))
(assert (forall ( (i Int) (N Int) (c Int) (acker Int)) (=> (assert_205_22_5_abs i acker i acker c N i) (= (+ (* 2 i) c) acker))))
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_205_22_5_abs i1 vacker_0 i1 vacker_0 c N i) (assert_205_22_5_abs i1 vacker_0 i2 vacker_0 c N i) (assert_205_22_5_abs i2 vacker_0 i1 vacker_0 c N i) (assert_205_22_5_abs i2 vacker_0 i2 vacker_0 c N i)) (assign_214_23_5_abs i2 vacker_0 i1 vacker_0 c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_214_23_5_abs i1 vacker_0 i1 vacker_0 c N i) (assign_214_23_5_abs i1 vacker_0 i2 vacker_0 c N i) (assign_214_23_5_abs i2 vacker_0 i1 vacker_0 c N i) (assign_214_23_5_abs i2 vacker_0 i2 vacker_0 c N i)) (while_217_20_1_abs i2 vacker_0 i1 vacker_0 c N (+ i 1)))))
(check-sat)
