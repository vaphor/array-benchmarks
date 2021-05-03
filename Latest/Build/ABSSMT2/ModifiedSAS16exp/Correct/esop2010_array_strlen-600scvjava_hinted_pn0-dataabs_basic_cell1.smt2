
(set-logic HORN)
(declare-rel assign_22_5_166_abs (Int Int Int Int))
(declare-rel assert_21_5_157_abs (Int Int Int Int))
(declare-rel assert_20_12_142_abs (Int Int Int Int))
(declare-rel while_19_1_169_abs (Int Int Int Int))
(declare-rel assign_18_1_107_abs (Int Int Int Int))
(declare-rel assign_17_1_101_abs (Int Int Int Int))
(declare-rel assign_15_5_92_abs (Int Int Int Int))
(declare-rel assert_14_12_83_abs (Int Int Int Int))
(declare-rel while_13_1_95_abs (Int Int Int Int))
(declare-rel assign_12_1_39_abs (Int Int Int Int))
(declare-rel end_abs (Int Int Int Int))
(declare-rel start_abs (Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 3
;Number of clauses = 17
;
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (start_abs i1 (select source i1) l i)))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (start_abs i1 (select source i1) l i) (assign_12_1_39_abs i1 (select source i1) l i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_12_1_39_abs i1 (select source i1) l i) (while_13_1_95_abs i1 (select source i1) l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (=> (and (while_13_1_95_abs i (select source i) l i) (while_13_1_95_abs i1 (select source i1) l i) (not (= 0 (select source i)))) (assert_14_12_83_abs i1 (select source i1) l i))))
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (=> (and (while_13_1_95_abs i (select source i) l i) (while_13_1_95_abs i1 (select source i1) l i) (not (not (= 0 (select source i))))) (assign_17_1_101_abs i1 (select source i1) l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(!(source[k]==0)))
(assert (forall ( (k Int) (i Int) (l Int) (source (Array Int Int))) (=> (and (assert_14_12_83_abs k (select source k) l i) (<= 0 k) (< k i)) (not (= 0 (select source k))))))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assert_14_12_83_abs i1 (select source i1) l i) (assign_15_5_92_abs i1 (select source i1) l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_15_5_92_abs i1 (select source i1) l i) (while_13_1_95_abs i1 (select source i1) l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_17_1_101_abs i1 (select source i1) l i) (assign_18_1_107_abs i1 (select source i1) i i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_18_1_107_abs i1 (select source i1) l i) (while_19_1_169_abs i1 (select source i1) l 0))))
;
;(while)   while((i<l))
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (=> (and (while_19_1_169_abs i1 (select source i1) l i) (< i l)) (assert_20_12_142_abs i1 (select source i1) l i))))
(assert (forall ( (source (Array Int Int)) (l Int) (i Int) (i1 Int)) (=> (and (while_19_1_169_abs i1 (select source i1) l i) (not (< i l))) (end_abs i1 (select source i1) l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(!(source[k]==0)))
(assert (forall ( (k Int) (i Int) (l Int) (source (Array Int Int))) (=> (and (assert_20_12_142_abs k (select source k) l i) (<= 0 k) (< k l)) (not (= 0 (select source k))))))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assert_20_12_142_abs i1 (select source i1) l i) (assert_21_5_157_abs i1 (select source i1) l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ( (i Int) (l Int) (source (Array Int Int))) (=> (assert_21_5_157_abs i (select source i) l i) (not (= 0 (select source i))))))
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assert_21_5_157_abs i1 (select source i1) l i) (assign_22_5_166_abs i1 (select source i1) l i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (l Int) (source (Array Int Int)) (i1 Int)) (=> (assign_22_5_166_abs i1 (select source i1) l i) (while_19_1_169_abs i1 (select source i1) l (+ i 1)))))
(check-sat)
