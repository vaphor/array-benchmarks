
(set-logic HORN)
(declare-rel assign_22_5_166_abs (Int Int Int Int Int Int))
(declare-rel assert_21_5_157_abs (Int Int Int Int Int Int))
(declare-rel assert_20_12_142_abs (Int Int Int Int Int Int))
(declare-rel while_19_1_169_abs (Int Int Int Int Int Int))
(declare-rel assign_18_1_107_abs (Int Int Int Int Int Int))
(declare-rel assign_17_1_101_abs (Int Int Int Int Int Int))
(declare-rel assign_15_5_92_abs (Int Int Int Int Int Int))
(declare-rel assert_14_12_83_abs (Int Int Int Int Int Int))
(declare-rel while_13_1_95_abs (Int Int Int Int Int Int))
(declare-rel assign_12_1_39_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 3
;Number of clauses = 17
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i2 vacker_1 i1 vacker_0 l i))))
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i1 vacker_0 i1 vacker_0 l i) (start_abs i1 vacker_0 i2 vacker_1 l i) (start_abs i2 vacker_1 i1 vacker_0 l i) (start_abs i2 vacker_1 i2 vacker_1 l i)) (assign_12_1_39_abs i2 vacker_1 i1 vacker_0 l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_12_1_39_abs i1 vacker_0 i1 vacker_0 l i) (assign_12_1_39_abs i1 vacker_0 i2 vacker_1 l i) (assign_12_1_39_abs i2 vacker_1 i1 vacker_0 l i) (assign_12_1_39_abs i2 vacker_1 i2 vacker_1 l i)) (while_13_1_95_abs i2 vacker_1 i1 vacker_0 l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (while_13_1_95_abs i vacker_0 i vacker_0 l i) (while_13_1_95_abs i vacker_0 i1 vacker_1 l i) (while_13_1_95_abs i vacker_0 i2 vacker_2 l i) (while_13_1_95_abs i1 vacker_1 i vacker_0 l i) (while_13_1_95_abs i1 vacker_1 i1 vacker_1 l i) (while_13_1_95_abs i1 vacker_1 i2 vacker_2 l i) (while_13_1_95_abs i2 vacker_2 i vacker_0 l i) (while_13_1_95_abs i2 vacker_2 i1 vacker_1 l i) (while_13_1_95_abs i2 vacker_2 i2 vacker_2 l i) (not (= 0 vacker_0))) (assert_14_12_83_abs i2 vacker_2 i1 vacker_1 l i))))
(assert (forall ( (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (while_13_1_95_abs i vacker_0 i vacker_0 l i) (while_13_1_95_abs i vacker_0 i1 vacker_1 l i) (while_13_1_95_abs i vacker_0 i2 vacker_2 l i) (while_13_1_95_abs i1 vacker_1 i vacker_0 l i) (while_13_1_95_abs i1 vacker_1 i1 vacker_1 l i) (while_13_1_95_abs i1 vacker_1 i2 vacker_2 l i) (while_13_1_95_abs i2 vacker_2 i vacker_0 l i) (while_13_1_95_abs i2 vacker_2 i1 vacker_1 l i) (while_13_1_95_abs i2 vacker_2 i2 vacker_2 l i) (not (not (= 0 vacker_0)))) (assign_17_1_101_abs i2 vacker_2 i1 vacker_1 l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(!(source[k]==0)))
(assert (forall ( (k Int) (i Int) (l Int) (acker Int)) (=> (and (assert_14_12_83_abs k acker k acker l i) (<= 0 k) (< k i)) (not (= 0 acker)))))
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_14_12_83_abs i1 vacker_0 i1 vacker_0 l i) (assert_14_12_83_abs i1 vacker_0 i2 vacker_1 l i) (assert_14_12_83_abs i2 vacker_1 i1 vacker_0 l i) (assert_14_12_83_abs i2 vacker_1 i2 vacker_1 l i)) (assign_15_5_92_abs i2 vacker_1 i1 vacker_0 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_15_5_92_abs i1 vacker_0 i1 vacker_0 l i) (assign_15_5_92_abs i1 vacker_0 i2 vacker_1 l i) (assign_15_5_92_abs i2 vacker_1 i1 vacker_0 l i) (assign_15_5_92_abs i2 vacker_1 i2 vacker_1 l i)) (while_13_1_95_abs i2 vacker_1 i1 vacker_0 l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_17_1_101_abs i1 vacker_0 i1 vacker_0 l i) (assign_17_1_101_abs i1 vacker_0 i2 vacker_1 l i) (assign_17_1_101_abs i2 vacker_1 i1 vacker_0 l i) (assign_17_1_101_abs i2 vacker_1 i2 vacker_1 l i)) (assign_18_1_107_abs i2 vacker_1 i1 vacker_0 i i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_18_1_107_abs i1 vacker_0 i1 vacker_0 l i) (assign_18_1_107_abs i1 vacker_0 i2 vacker_1 l i) (assign_18_1_107_abs i2 vacker_1 i1 vacker_0 l i) (assign_18_1_107_abs i2 vacker_1 i2 vacker_1 l i)) (while_19_1_169_abs i2 vacker_1 i1 vacker_0 l 0))))
;
;(while)   while((i<l))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_19_1_169_abs i1 vacker_0 i1 vacker_0 l i) (while_19_1_169_abs i1 vacker_0 i2 vacker_1 l i) (while_19_1_169_abs i2 vacker_1 i1 vacker_0 l i) (while_19_1_169_abs i2 vacker_1 i2 vacker_1 l i) (< i l)) (assert_20_12_142_abs i2 vacker_1 i1 vacker_0 l i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_19_1_169_abs i1 vacker_0 i1 vacker_0 l i) (while_19_1_169_abs i1 vacker_0 i2 vacker_1 l i) (while_19_1_169_abs i2 vacker_1 i1 vacker_0 l i) (while_19_1_169_abs i2 vacker_1 i2 vacker_1 l i) (not (< i l))) (end_abs i2 vacker_1 i1 vacker_0 l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(!(source[k]==0)))
(assert (forall ( (k Int) (i Int) (l Int) (acker Int)) (=> (and (assert_20_12_142_abs k acker k acker l i) (<= 0 k) (< k l)) (not (= 0 acker)))))
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_20_12_142_abs i1 vacker_0 i1 vacker_0 l i) (assert_20_12_142_abs i1 vacker_0 i2 vacker_1 l i) (assert_20_12_142_abs i2 vacker_1 i1 vacker_0 l i) (assert_20_12_142_abs i2 vacker_1 i2 vacker_1 l i)) (assert_21_5_157_abs i2 vacker_1 i1 vacker_0 l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ( (i Int) (l Int) (acker Int)) (=> (assert_21_5_157_abs i acker i acker l i) (not (= 0 acker)))))
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_21_5_157_abs i1 vacker_0 i1 vacker_0 l i) (assert_21_5_157_abs i1 vacker_0 i2 vacker_1 l i) (assert_21_5_157_abs i2 vacker_1 i1 vacker_0 l i) (assert_21_5_157_abs i2 vacker_1 i2 vacker_1 l i)) (assign_22_5_166_abs i2 vacker_1 i1 vacker_0 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_22_5_166_abs i1 vacker_0 i1 vacker_0 l i) (assign_22_5_166_abs i1 vacker_0 i2 vacker_1 l i) (assign_22_5_166_abs i2 vacker_1 i1 vacker_0 l i) (assign_22_5_166_abs i2 vacker_1 i2 vacker_1 l i)) (while_19_1_169_abs i2 vacker_1 i1 vacker_0 l (+ i 1)))))
(check-sat)
