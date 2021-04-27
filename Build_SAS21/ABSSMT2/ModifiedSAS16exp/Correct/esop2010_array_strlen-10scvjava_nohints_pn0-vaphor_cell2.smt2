;Number of predicates (nodes) = 10
;Number of variables = 3
;Number of clauses = 13
;
(set-logic HORN)
(declare-fun assign_22_5_166 (Int Int Int Int Int Int) Bool)
(declare-fun assert_21_5_157 (Int Int Int Int Int Int) Bool)
(declare-fun while_19_1_169 (Int Int Int Int Int Int) Bool)
(declare-fun assign_18_1_107 (Int Int Int Int Int Int) Bool)
(declare-fun assign_17_1_101 (Int Int Int Int Int Int) Bool)
(declare-fun assign_15_5_92 (Int Int Int Int Int Int) Bool)
(declare-fun while_13_1_95 (Int Int Int Int Int Int) Bool)
(declare-fun assign_12_1_39 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (< source0_ind source1_ind) (start source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (start source0_ind source0_val source1_ind source1_val l i)) (assign_12_1_39 source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_12_1_39 source0_ind source0_val source1_ind source1_val l i)) (while_13_1_95 source0_ind source0_val source1_ind source1_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< source0_ind source1_ind) (while_13_1_95 source0_ind source0_val source1_ind source1_val l i) (not (= tmp_select_source 0)) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (while_13_1_95 i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (while_13_1_95 i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (while_13_1_95 i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (while_13_1_95 source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (while_13_1_95 source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (while_13_1_95 source0_ind source0_val i tmp_select_source l i)))) (assign_15_5_92 source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< source0_ind source1_ind) (while_13_1_95 source0_ind source0_val source1_ind source1_val l i) (not (not (= tmp_select_source 0))) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (while_13_1_95 i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (while_13_1_95 i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (while_13_1_95 i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (while_13_1_95 source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (while_13_1_95 source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (while_13_1_95 source0_ind source0_val i tmp_select_source l i)))) (assign_17_1_101 source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_15_5_92 source0_ind source0_val source1_ind source1_val l i)) (while_13_1_95 source0_ind source0_val source1_ind source1_val l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_17_1_101 source0_ind source0_val source1_ind source1_val l i)) (assign_18_1_107 source0_ind source0_val source1_ind source1_val i i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_18_1_107 source0_ind source0_val source1_ind source1_val l i)) (while_19_1_169 source0_ind source0_val source1_ind source1_val l 0))))
;
;(while)   while((i<l))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (while_19_1_169 source0_ind source0_val source1_ind source1_val l i) (< i l)) (assert_21_5_157 source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (while_19_1_169 source0_ind source0_val source1_ind source1_val l i) (not (< i l))) (end source0_ind source0_val source1_ind source1_val l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< source0_ind source1_ind) (assert_21_5_157 source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_21_5_157 i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_21_5_157 i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_21_5_157 i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_21_5_157 source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_21_5_157 source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_21_5_157 source0_ind source0_val i tmp_select_source l i)))) (not (= tmp_select_source 0)))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assert_21_5_157 source0_ind source0_val source1_ind source1_val l i)) (assign_22_5_166 source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_22_5_166 source0_ind source0_val source1_ind source1_val l i)) (while_19_1_169 source0_ind source0_val source1_ind source1_val l (+ i 1)))))
(check-sat)
