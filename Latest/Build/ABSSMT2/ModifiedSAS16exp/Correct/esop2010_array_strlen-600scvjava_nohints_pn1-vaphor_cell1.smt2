;Number of predicates (nodes) = 10
;Number of variables = 3
;Number of clauses = 13
;
(set-logic HORN)
(declare-fun assign_166_22_5 (Int Int Int Int) Bool)
(declare-fun assert_157_21_5 (Int Int Int Int) Bool)
(declare-fun while_169_19_1 (Int Int Int Int) Bool)
(declare-fun assign_107_18_1 (Int Int Int Int) Bool)
(declare-fun assign_101_17_1 (Int Int Int Int) Bool)
(declare-fun assign_92_15_5 (Int Int Int Int) Bool)
(declare-fun while_95_13_1 (Int Int Int Int) Bool)
(declare-fun assign_39_12_1 (Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int) Bool)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (start source_ind source_val l i)))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (start source_ind source_val l i) (assign_39_12_1 source_ind source_val l i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_39_12_1 source_ind source_val l i) (while_95_13_1 source_ind source_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_95_13_1 source_ind source_val l i) (not (= tmp_select_source 0)) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_95_13_1 i tmp_select_source l i)) (and (< source_ind i) (while_95_13_1 i tmp_select_source l i)))) (assign_92_15_5 source_ind source_val l i))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_95_13_1 source_ind source_val l i) (not (not (= tmp_select_source 0))) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_95_13_1 i tmp_select_source l i)) (and (< source_ind i) (while_95_13_1 i tmp_select_source l i)))) (assign_101_17_1 source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_92_15_5 source_ind source_val l i) (while_95_13_1 source_ind source_val l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_101_17_1 source_ind source_val l i) (assign_107_18_1 source_ind source_val i i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_107_18_1 source_ind source_val l i) (while_169_19_1 source_ind source_val l 0))))
;
;(while)   while((i<l))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_169_19_1 source_ind source_val l i) (< i l)) (assert_157_21_5 source_ind source_val l i))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_169_19_1 source_ind source_val l i) (not (< i l))) (end source_ind source_val l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (assert_157_21_5 source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_157_21_5 i tmp_select_source l i)) (and (< source_ind i) (assert_157_21_5 i tmp_select_source l i)))) (not (= tmp_select_source 0)))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_157_21_5 source_ind source_val l i) (assign_166_22_5 source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_166_22_5 source_ind source_val l i) (while_169_19_1 source_ind source_val l (+ i 1)))))
(check-sat)
