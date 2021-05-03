
(set-logic HORN)
(declare-rel assign_22_5_166_abs (Int Int Int Int))
(declare-rel assert_21_5_157_abs (Int Int Int Int))
(declare-rel while_19_1_169_abs (Int Int Int Int))
(declare-rel assign_18_1_107_abs (Int Int Int Int))
(declare-rel assign_17_1_101_abs (Int Int Int Int))
(declare-rel assign_15_5_92_abs (Int Int Int Int))
(declare-rel while_13_1_95_abs (Int Int Int Int))
(declare-rel assign_12_1_39_abs (Int Int Int Int))
(declare-rel end_abs (Int Int Int Int))
(declare-rel start_abs (Int Int Int Int));Number of predicates (nodes) = 10
;Number of variables = 3
;Number of clauses = 13
;
(assert (forall ( (acker Int) (l Int) (i Int) (i1 Int)) (start_abs i1 acker l i)))
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (start_abs i1 acker l i) (assign_12_1_39_abs i1 acker l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_12_1_39_abs i1 acker l i) (while_13_1_95_abs i1 acker l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_13_1_95_abs i vacker_0 l i) (while_13_1_95_abs i1 vacker_1 l i) (not (= 0 vacker_0))) (assign_15_5_92_abs i1 vacker_1 l i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (l Int) (i Int) (i1 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (while_13_1_95_abs i vacker_0 l i) (while_13_1_95_abs i1 vacker_1 l i) (not (not (= 0 vacker_0)))) (assign_17_1_101_abs i1 vacker_1 l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_15_5_92_abs i1 acker l i) (while_13_1_95_abs i1 acker l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_17_1_101_abs i1 acker l i) (assign_18_1_107_abs i1 acker i i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_18_1_107_abs i1 acker l i) (while_19_1_169_abs i1 acker l 0))))
;
;(while)   while((i<l))
(assert (forall ( (acker Int) (l Int) (i Int) (i1 Int)) (=> (and (while_19_1_169_abs i1 acker l i) (< i l)) (assert_21_5_157_abs i1 acker l i))))
(assert (forall ( (acker Int) (l Int) (i Int) (i1 Int)) (=> (and (while_19_1_169_abs i1 acker l i) (not (< i l))) (end_abs i1 acker l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ( (i Int) (l Int) (acker Int)) (=> (assert_21_5_157_abs i acker l i) (not (= 0 acker)))))
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assert_21_5_157_abs i1 acker l i) (assign_22_5_166_abs i1 acker l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (acker Int) (i1 Int)) (=> (assign_22_5_166_abs i1 acker l i) (while_19_1_169_abs i1 acker l (+ i 1)))))
(check-sat)
