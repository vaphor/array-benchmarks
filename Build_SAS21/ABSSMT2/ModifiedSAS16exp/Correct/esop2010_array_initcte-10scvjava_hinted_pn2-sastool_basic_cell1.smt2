
(set-logic HORN)
(declare-rel assign_184_23_5_abs (Int Int Int Int Int))
(declare-rel assert_175_22_5_abs (Int Int Int Int Int))
(declare-rel assert_161_21_12_abs (Int Int Int Int Int))
(declare-rel while_187_20_1_abs (Int Int Int Int Int))
(declare-rel assign_127_19_1_abs (Int Int Int Int Int))
(declare-rel assign_118_16_5_abs (Int Int Int Int Int))
(declare-rel arrayassign_109_15_5_abs (Int Int Int Int Int))
(declare-rel assert_99_14_12_abs (Int Int Int Int Int))
(declare-rel while_121_13_1_abs (Int Int Int Int Int))
(declare-rel assign_65_12_8_abs (Int Int Int Int Int))
(declare-rel assign_59_10_1_abs (Int Int Int Int Int))
(declare-rel assign_47_9_1_abs (Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int));Number of predicates (nodes) = 14
;Number of variables = 4
;Number of clauses = 19
;
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (start_abs i1 (select a i1) c N i)))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (start_abs i1 (select a i1) c N i) (assign_47_9_1_abs i1 (select a i1) c N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_47_9_1_abs i1 (select a i1) c N i) (assign_59_10_1_abs i1 (select a i1) c rnd i))))
;
;(assign)  c := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_59_10_1_abs i1 (select a i1) c N i) (assign_65_12_8_abs i1 (select a i1) rnd N i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_65_12_8_abs i1 (select a i1) c N i) (while_121_13_1_abs i1 (select a i1) c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (=> (and (while_121_13_1_abs i1 (select a i1) c N i) (< i N)) (assert_99_14_12_abs i1 (select a i1) c N i))))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (=> (and (while_121_13_1_abs i1 (select a i1) c N i) (not (< i N))) (assign_127_19_1_abs i1 (select a i1) c N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==c))
(assert (forall ( (k Int) (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (and (assert_99_14_12_abs k (select a k) c N i) (<= 0 k) (< k i)) (= c (select a k)))))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assert_99_14_12_abs i1 (select a i1) c N i) (arrayassign_109_15_5_abs i1 (select a i1) c N i))))
;
;(aassign) a[i] := c
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (arrayassign_109_15_5_abs i1 (select a i1) c N i) (assign_118_16_5_abs i1 (ite (= i i1) c (select a i1)) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_118_16_5_abs i1 (select a i1) c N i) (while_121_13_1_abs i1 (select a i1) c N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_127_19_1_abs i1 (select a i1) c N i) (while_187_20_1_abs i1 (select a i1) c N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (=> (and (while_187_20_1_abs i1 (select a i1) c N i) (< i N)) (assert_161_21_12_abs i1 (select a i1) c N i))))
(assert (forall ( (a (Array Int Int)) (c Int) (N Int) (i Int) (i1 Int)) (=> (and (while_187_20_1_abs i1 (select a i1) c N i) (not (< i N))) (end_abs i1 (select a i1) c N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==c))
(assert (forall ( (k Int) (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (and (assert_161_21_12_abs k (select a k) c N i) (<= 0 k) (< k N)) (= c (select a k)))))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assert_161_21_12_abs i1 (select a i1) c N i) (assert_175_22_5_abs i1 (select a i1) c N i))))
;
;(assert)  (a[i]==c)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int))) (=> (assert_175_22_5_abs i (select a i) c N i) (= c (select a i)))))
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assert_175_22_5_abs i1 (select a i1) c N i) (assign_184_23_5_abs i1 (select a i1) c N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (c Int) (a (Array Int Int)) (i1 Int)) (=> (assign_184_23_5_abs i1 (select a i1) c N i) (while_187_20_1_abs i1 (select a i1) c N (+ i 1)))))
(check-sat)
