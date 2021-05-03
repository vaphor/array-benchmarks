
(set-logic HORN)
(declare-rel assign_166_22_5_abs (Int Int Int Int))
(declare-rel assert_157_21_5_abs (Int Int Int Int))
(declare-rel while_169_19_1_abs (Int Int Int Int))
(declare-rel assign_107_18_1_abs (Int Int Int Int))
(declare-rel assign_101_17_1_abs (Int Int Int Int))
(declare-rel assign_92_15_5_abs (Int Int Int Int))
(declare-rel while_95_13_1_abs (Int Int Int Int))
(declare-rel assign_39_12_1_abs (Int Int Int Int))
(declare-rel end_abs (Int Int Int Int))
(declare-rel start_abs (Int Int Int Int));Number of predicates (nodes) = 10
;Number of variables = 3
;Number of clauses = 13
;
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (start_abs i1 (select source i1) l i)))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (start_abs i1 (select source i1) l i) (assign_39_12_1_abs i1 (select source i1) l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_39_12_1_abs i1 (select source i1) l i) (while_95_13_1_abs i1 (select source i1) l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (=> (and (while_95_13_1_abs i (select source i) l i) (while_95_13_1_abs i1 (select source i1) l i) (not (= 0 (select source i)))) (assign_92_15_5_abs i1 (select source i1) l i))))
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (=> (and (while_95_13_1_abs i (select source i) l i) (while_95_13_1_abs i1 (select source i1) l i) (not (not (= 0 (select source i))))) (assign_101_17_1_abs i1 (select source i1) l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_92_15_5_abs i1 (select source i1) l i) (while_95_13_1_abs i1 (select source i1) l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_101_17_1_abs i1 (select source i1) l i) (assign_107_18_1_abs i1 (select source i1) i i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_107_18_1_abs i1 (select source i1) l i) (while_169_19_1_abs i1 (select source i1) l 0))))
;
;(while)   while((i<l))
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (=> (and (while_169_19_1_abs i1 (select source i1) l i) (< i l)) (assert_157_21_5_abs i1 (select source i1) l i))))
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (=> (and (while_169_19_1_abs i1 (select source i1) l i) (not (< i l))) (end_abs i1 (select source i1) l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ( (i Int) (l Int) (source (Array Int Int))) (=> (assert_157_21_5_abs i (select source i) l i) (not (= 0 (select source i))))))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assert_157_21_5_abs i1 (select source i1) l i) (assign_166_22_5_abs i1 (select source i1) l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_166_22_5_abs i1 (select source i1) l i) (while_169_19_1_abs i1 (select source i1) l (+ i 1)))))
(check-sat)
