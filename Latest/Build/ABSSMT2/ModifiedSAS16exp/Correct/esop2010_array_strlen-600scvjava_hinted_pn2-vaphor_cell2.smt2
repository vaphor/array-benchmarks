;Number of predicates (nodes) = 12
;Number of variables = 3
;Number of clauses = 17
;
(set-logic HORN)
(declare-fun assign_166_22_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_157_21_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_142_20_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_169_19_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_107_18_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_101_17_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_92_15_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_83_14_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_95_13_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_39_12_1 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (< source0_ind source1_ind) (start source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (start source0_ind source0_val source1_ind source1_val l i)) (assign_39_12_1 source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_39_12_1 source0_ind source0_val source1_ind source1_val l i)) (while_95_13_1 source0_ind source0_val source1_ind source1_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< source0_ind source1_ind) (while_95_13_1 source0_ind source0_val source1_ind source1_val l i) (not (= tmp_select_source 0)) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (while_95_13_1 i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (while_95_13_1 i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (while_95_13_1 i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (while_95_13_1 source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (while_95_13_1 source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (while_95_13_1 source0_ind source0_val i tmp_select_source l i)))) (assert_83_14_12 source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< source0_ind source1_ind) (while_95_13_1 source0_ind source0_val source1_ind source1_val l i) (not (not (= tmp_select_source 0))) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (while_95_13_1 i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (while_95_13_1 i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (while_95_13_1 i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (while_95_13_1 source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (while_95_13_1 source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (while_95_13_1 source0_ind source0_val i tmp_select_source l i)))) (assign_101_17_1 source0_ind source0_val source1_ind source1_val l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(!(source[k]==0)))
(assert (forall ((i Int) (k Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< source0_ind source1_ind) (assert_83_14_12 source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind k) (= tmp_select_source source0_val)) (and (= source1_ind k) (= tmp_select_source source1_val)) (and (< k source0_ind) (< k source1_ind) (assert_83_14_12 k tmp_select_source source1_ind source1_val l i) (< k source0_ind) (assert_83_14_12 k tmp_select_source source0_ind source0_val l i)) (and (< source0_ind k) (< k source1_ind) (< k source1_ind) (assert_83_14_12 k tmp_select_source source1_ind source1_val l i) (< source0_ind k) (assert_83_14_12 source0_ind source0_val k tmp_select_source l i)) (and (< source1_ind k) (< source1_ind k) (assert_83_14_12 source1_ind source1_val k tmp_select_source l i) (< source0_ind k) (assert_83_14_12 source0_ind source0_val k tmp_select_source l i)))) (=> (and (<= 0 k) (< k i)) (not (= tmp_select_source 0))))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assert_83_14_12 source0_ind source0_val source1_ind source1_val l i)) (assign_92_15_5 source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_92_15_5 source0_ind source0_val source1_ind source1_val l i)) (while_95_13_1 source0_ind source0_val source1_ind source1_val l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_101_17_1 source0_ind source0_val source1_ind source1_val l i)) (assign_107_18_1 source0_ind source0_val source1_ind source1_val i i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_107_18_1 source0_ind source0_val source1_ind source1_val l i)) (while_169_19_1 source0_ind source0_val source1_ind source1_val l 0))))
;
;(while)   while((i<l))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (while_169_19_1 source0_ind source0_val source1_ind source1_val l i) (< i l)) (assert_142_20_12 source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (while_169_19_1 source0_ind source0_val source1_ind source1_val l i) (not (< i l))) (end source0_ind source0_val source1_ind source1_val l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(!(source[k]==0)))
(assert (forall ((i Int) (k Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< source0_ind source1_ind) (assert_142_20_12 source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind k) (= tmp_select_source source0_val)) (and (= source1_ind k) (= tmp_select_source source1_val)) (and (< k source0_ind) (< k source1_ind) (assert_142_20_12 k tmp_select_source source1_ind source1_val l i) (< k source0_ind) (assert_142_20_12 k tmp_select_source source0_ind source0_val l i)) (and (< source0_ind k) (< k source1_ind) (< k source1_ind) (assert_142_20_12 k tmp_select_source source1_ind source1_val l i) (< source0_ind k) (assert_142_20_12 source0_ind source0_val k tmp_select_source l i)) (and (< source1_ind k) (< source1_ind k) (assert_142_20_12 source1_ind source1_val k tmp_select_source l i) (< source0_ind k) (assert_142_20_12 source0_ind source0_val k tmp_select_source l i)))) (=> (and (<= 0 k) (< k l)) (not (= tmp_select_source 0))))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assert_142_20_12 source0_ind source0_val source1_ind source1_val l i)) (assert_157_21_5 source0_ind source0_val source1_ind source1_val l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< source0_ind source1_ind) (assert_157_21_5 source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_157_21_5 i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_157_21_5 i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_157_21_5 i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_157_21_5 source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_157_21_5 source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_157_21_5 source0_ind source0_val i tmp_select_source l i)))) (not (= tmp_select_source 0)))))
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assert_157_21_5 source0_ind source0_val source1_ind source1_val l i)) (assign_166_22_5 source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< source0_ind source1_ind) (assign_166_22_5 source0_ind source0_val source1_ind source1_val l i)) (while_169_19_1 source0_ind source0_val source1_ind source1_val l (+ i 1)))))
(check-sat)
