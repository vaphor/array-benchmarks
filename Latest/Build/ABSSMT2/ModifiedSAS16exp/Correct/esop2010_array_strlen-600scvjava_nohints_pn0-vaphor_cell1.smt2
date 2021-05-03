;Number of predicates (nodes) = 10
;Number of variables = 3
;Number of clauses = 13
;
(set-logic HORN)
(declare-fun assign_22_5_166 (Int Int Int Int) Bool)
(declare-fun assert_21_5_157 (Int Int Int Int) Bool)
(declare-fun while_19_1_169 (Int Int Int Int) Bool)
(declare-fun assign_18_1_107 (Int Int Int Int) Bool)
(declare-fun assign_17_1_101 (Int Int Int Int) Bool)
(declare-fun assign_15_5_92 (Int Int Int Int) Bool)
(declare-fun while_13_1_95 (Int Int Int Int) Bool)
(declare-fun assign_12_1_39 (Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int) Bool)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (start source_ind source_val l i)))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (start source_ind source_val l i) (assign_12_1_39 source_ind source_val l i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_12_1_39 source_ind source_val l i) (while_13_1_95 source_ind source_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_13_1_95 source_ind source_val l i) (not (= tmp_select_source 0)) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_13_1_95 i tmp_select_source l i)) (and (< source_ind i) (while_13_1_95 i tmp_select_source l i)))) (assign_15_5_92 source_ind source_val l i))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_13_1_95 source_ind source_val l i) (not (not (= tmp_select_source 0))) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_13_1_95 i tmp_select_source l i)) (and (< source_ind i) (while_13_1_95 i tmp_select_source l i)))) (assign_17_1_101 source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_15_5_92 source_ind source_val l i) (while_13_1_95 source_ind source_val l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_17_1_101 source_ind source_val l i) (assign_18_1_107 source_ind source_val i i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_18_1_107 source_ind source_val l i) (while_19_1_169 source_ind source_val l 0))))
;
;(while)   while((i<l))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_19_1_169 source_ind source_val l i) (< i l)) (assert_21_5_157 source_ind source_val l i))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_19_1_169 source_ind source_val l i) (not (< i l))) (end source_ind source_val l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (assert_21_5_157 source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_21_5_157 i tmp_select_source l i)) (and (< source_ind i) (assert_21_5_157 i tmp_select_source l i)))) (not (= tmp_select_source 0)))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_21_5_157 source_ind source_val l i) (assign_22_5_166 source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_22_5_166 source_ind source_val l i) (while_19_1_169 source_ind source_val l (+ i 1)))))
(check-sat)
