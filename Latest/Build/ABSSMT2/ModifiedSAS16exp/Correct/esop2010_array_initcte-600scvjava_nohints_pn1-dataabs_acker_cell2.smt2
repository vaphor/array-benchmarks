
(set-logic HORN)
(declare-rel assign_184_23_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_175_22_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_187_20_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_127_19_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_118_16_5_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_109_15_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_121_13_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_65_12_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_59_10_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_47_9_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 4
;Number of clauses = 15
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i2 vacker_1 i1 vacker_0 c N i))))
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i1 vacker_0 i1 vacker_0 c N i) (start_abs i1 vacker_0 i2 vacker_1 c N i) (start_abs i2 vacker_1 i1 vacker_0 c N i) (start_abs i2 vacker_1 i2 vacker_1 c N i)) (assign_47_9_1_abs i2 vacker_1 i1 vacker_0 c N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_47_9_1_abs i1 vacker_0 i1 vacker_0 c N i) (assign_47_9_1_abs i1 vacker_0 i2 vacker_1 c N i) (assign_47_9_1_abs i2 vacker_1 i1 vacker_0 c N i) (assign_47_9_1_abs i2 vacker_1 i2 vacker_1 c N i)) (assign_59_10_1_abs i2 vacker_1 i1 vacker_0 c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_59_10_1_abs i1 vacker_0 i1 vacker_0 c N i) (assign_59_10_1_abs i1 vacker_0 i2 vacker_1 c N i) (assign_59_10_1_abs i2 vacker_1 i1 vacker_0 c N i) (assign_59_10_1_abs i2 vacker_1 i2 vacker_1 c N i)) (assign_65_12_8_abs i2 vacker_1 i1 vacker_0 rnd N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_65_12_8_abs i1 vacker_0 i1 vacker_0 c N i) (assign_65_12_8_abs i1 vacker_0 i2 vacker_1 c N i) (assign_65_12_8_abs i2 vacker_1 i1 vacker_0 c N i) (assign_65_12_8_abs i2 vacker_1 i2 vacker_1 c N i)) (while_121_13_1_abs i2 vacker_1 i1 vacker_0 c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_121_13_1_abs i1 vacker_0 i1 vacker_0 c N i) (while_121_13_1_abs i1 vacker_0 i2 vacker_1 c N i) (while_121_13_1_abs i2 vacker_1 i1 vacker_0 c N i) (while_121_13_1_abs i2 vacker_1 i2 vacker_1 c N i) (< i N)) (arrayassign_109_15_5_abs i2 vacker_1 i1 vacker_0 c N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_121_13_1_abs i1 vacker_0 i1 vacker_0 c N i) (while_121_13_1_abs i1 vacker_0 i2 vacker_1 c N i) (while_121_13_1_abs i2 vacker_1 i1 vacker_0 c N i) (while_121_13_1_abs i2 vacker_1 i2 vacker_1 c N i) (not (< i N))) (assign_127_19_1_abs i2 vacker_1 i1 vacker_0 c N i))))
;
;(aassign) a[i] := c
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (arrayassign_109_15_5_abs i1 vacker_0 i1 vacker_0 c N i) (arrayassign_109_15_5_abs i1 vacker_0 i2 vacker_1 c N i) (arrayassign_109_15_5_abs i2 vacker_1 i1 vacker_0 c N i) (arrayassign_109_15_5_abs i2 vacker_1 i2 vacker_1 c N i)) (assign_118_16_5_abs i2 (ite (= i i2) c vacker_1) i1 (ite (= i i1) c vacker_0) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_118_16_5_abs i1 vacker_0 i1 vacker_0 c N i) (assign_118_16_5_abs i1 vacker_0 i2 vacker_1 c N i) (assign_118_16_5_abs i2 vacker_1 i1 vacker_0 c N i) (assign_118_16_5_abs i2 vacker_1 i2 vacker_1 c N i)) (while_121_13_1_abs i2 vacker_1 i1 vacker_0 c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_127_19_1_abs i1 vacker_0 i1 vacker_0 c N i) (assign_127_19_1_abs i1 vacker_0 i2 vacker_1 c N i) (assign_127_19_1_abs i2 vacker_1 i1 vacker_0 c N i) (assign_127_19_1_abs i2 vacker_1 i2 vacker_1 c N i)) (while_187_20_1_abs i2 vacker_1 i1 vacker_0 c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_187_20_1_abs i1 vacker_0 i1 vacker_0 c N i) (while_187_20_1_abs i1 vacker_0 i2 vacker_1 c N i) (while_187_20_1_abs i2 vacker_1 i1 vacker_0 c N i) (while_187_20_1_abs i2 vacker_1 i2 vacker_1 c N i) (< i N)) (assert_175_22_5_abs i2 vacker_1 i1 vacker_0 c N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (c Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_187_20_1_abs i1 vacker_0 i1 vacker_0 c N i) (while_187_20_1_abs i1 vacker_0 i2 vacker_1 c N i) (while_187_20_1_abs i2 vacker_1 i1 vacker_0 c N i) (while_187_20_1_abs i2 vacker_1 i2 vacker_1 c N i) (not (< i N))) (end_abs i2 vacker_1 i1 vacker_0 c N i))))
;
;(assert)  (a[i]==c)
(assert (forall ( (i Int) (N Int) (c Int) (acker Int)) (=> (assert_175_22_5_abs i acker i acker c N i) (= acker c))))
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_175_22_5_abs i1 vacker_0 i1 vacker_0 c N i) (assert_175_22_5_abs i1 vacker_0 i2 vacker_1 c N i) (assert_175_22_5_abs i2 vacker_1 i1 vacker_0 c N i) (assert_175_22_5_abs i2 vacker_1 i2 vacker_1 c N i)) (assign_184_23_5_abs i2 vacker_1 i1 vacker_0 c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_184_23_5_abs i1 vacker_0 i1 vacker_0 c N i) (assign_184_23_5_abs i1 vacker_0 i2 vacker_1 c N i) (assign_184_23_5_abs i2 vacker_1 i1 vacker_0 c N i) (assign_184_23_5_abs i2 vacker_1 i2 vacker_1 c N i)) (while_187_20_1_abs i2 vacker_1 i1 vacker_0 c N (+ i 1)))))
(check-sat)
