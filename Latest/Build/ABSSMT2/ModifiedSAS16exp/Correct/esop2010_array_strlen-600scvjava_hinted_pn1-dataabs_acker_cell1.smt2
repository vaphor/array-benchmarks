
(set-logic HORN)
(declare-rel assign_166_22_5_abs (Int Int Int Int))
(declare-rel assert_157_21_5_abs (Int Int Int Int))
(declare-rel assert_142_20_12_abs (Int Int Int Int))
(declare-rel while_169_19_1_abs (Int Int Int Int))
(declare-rel assign_107_18_1_abs (Int Int Int Int))
(declare-rel assign_101_17_1_abs (Int Int Int Int))
(declare-rel assign_92_15_5_abs (Int Int Int Int))
(declare-rel assert_83_14_12_abs (Int Int Int Int))
(declare-rel while_95_13_1_abs (Int Int Int Int))
(declare-rel assign_39_12_1_abs (Int Int Int Int))
(declare-rel end_abs (Int Int Int Int))
(declare-rel start_abs (Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 3
;Number of clauses = 17
;
(assert (forall ( (acker Int) (l Int) (i Int) (i1 Int)) (start_abs i1 acker l i)))
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (start_abs i1 acker l i) (assign_39_12_1_abs i1 acker l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_39_12_1_abs i1 acker l i) (while_95_13_1_abs i1 acker l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_95_13_1_abs i vacker_0 l i) (while_95_13_1_abs i1 vacker_1 l i) (not (= 0 vacker_0))) (assert_83_14_12_abs i1 vacker_1 l i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_95_13_1_abs i vacker_0 l i) (while_95_13_1_abs i1 vacker_1 l i) (not (not (= 0 vacker_0)))) (assign_101_17_1_abs i1 vacker_1 l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(!(source[k]==0)))
(assert (forall ( (k Int) (i Int) (l Int) (acker Int)) (=> (and (assert_83_14_12_abs k acker l i) (<= 0 k) (< k i)) (not (= 0 acker)))))
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assert_83_14_12_abs i1 acker l i) (assign_92_15_5_abs i1 acker l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_92_15_5_abs i1 acker l i) (while_95_13_1_abs i1 acker l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_101_17_1_abs i1 acker l i) (assign_107_18_1_abs i1 acker i i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_107_18_1_abs i1 acker l i) (while_169_19_1_abs i1 acker l 0))))
;
;(while)   while((i<l))
(assert (forall ( (acker Int) (l Int) (i Int) (i1 Int)) (=> (and (while_169_19_1_abs i1 acker l i) (< i l)) (assert_142_20_12_abs i1 acker l i))))
(assert (forall ( (acker Int) (l Int) (i Int) (i1 Int)) (=> (and (while_169_19_1_abs i1 acker l i) (not (< i l))) (end_abs i1 acker l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(!(source[k]==0)))
(assert (forall ( (k Int) (i Int) (l Int) (acker Int)) (=> (and (assert_142_20_12_abs k acker l i) (<= 0 k) (< k l)) (not (= 0 acker)))))
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assert_142_20_12_abs i1 acker l i) (assert_157_21_5_abs i1 acker l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ( (i Int) (l Int) (acker Int)) (=> (assert_157_21_5_abs i acker l i) (not (= 0 acker)))))
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assert_157_21_5_abs i1 acker l i) (assign_166_22_5_abs i1 acker l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_166_22_5_abs i1 acker l i) (while_169_19_1_abs i1 acker l (+ i 1)))))
(check-sat)
