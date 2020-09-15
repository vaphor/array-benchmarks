;Number of predicates (nodes) = 12
;Number of variables = 3
;Number of clauses = 17
;
(set-logic HORN)
(declare-fun assign_172_22_5 (Int Int Int Int) Bool)
(declare-fun assert_163_21_5 (Int Int Int Int) Bool)
(declare-fun assert_148_20_12 (Int Int Int Int) Bool)
(declare-fun while_175_19_1 (Int Int Int Int) Bool)
(declare-fun assign_110_18_1 (Int Int Int Int) Bool)
(declare-fun assign_104_17_1 (Int Int Int Int) Bool)
(declare-fun assign_95_15_5 (Int Int Int Int) Bool)
(declare-fun assert_86_14_12 (Int Int Int Int) Bool)
(declare-fun while_98_13_1 (Int Int Int Int) Bool)
(declare-fun assign_39_12_1 (Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int) Bool)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (start source_ind source_val l i)))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (start source_ind source_val l i) (assign_39_12_1 source_ind source_val l i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_39_12_1 source_ind source_val l i) (while_98_13_1 source_ind source_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_98_13_1 source_ind source_val l i) (not (= tmp_select_source 0)) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_98_13_1 i tmp_select_source l i)) (and (< source_ind i) (while_98_13_1 i tmp_select_source l i)))) (assert_86_14_12 source_ind source_val l i))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_98_13_1 source_ind source_val l i) (not (not (= tmp_select_source 0))) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_98_13_1 i tmp_select_source l i)) (and (< source_ind i) (while_98_13_1 i tmp_select_source l i)))) (assign_104_17_1 source_ind source_val l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(!(source[k]==0)))
(assert (forall ((i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (assert_86_14_12 source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_86_14_12 k tmp_select_source l i)) (and (< source_ind k) (assert_86_14_12 k tmp_select_source l i)))) (=> (and (<= 0 k) (< k i)) (not (= tmp_select_source 0))))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_86_14_12 source_ind source_val l i) (assign_95_15_5 source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_95_15_5 source_ind source_val l i) (while_98_13_1 source_ind source_val l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_104_17_1 source_ind source_val l i) (assign_110_18_1 source_ind source_val i i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_110_18_1 source_ind source_val l i) (while_175_19_1 source_ind source_val l 0))))
;
;(while)   while((i<l))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_175_19_1 source_ind source_val l i) (< i l)) (assert_148_20_12 source_ind source_val l i))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_175_19_1 source_ind source_val l i) (not (< i l))) (end source_ind source_val l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(!(source[k]==0)))
(assert (forall ((i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (assert_148_20_12 source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_148_20_12 k tmp_select_source l i)) (and (< source_ind k) (assert_148_20_12 k tmp_select_source l i)))) (=> (and (<= 0 k) (< k l)) (not (= tmp_select_source 0))))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_148_20_12 source_ind source_val l i) (assert_163_21_5 source_ind source_val l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (assert_163_21_5 source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_163_21_5 i tmp_select_source l i)) (and (< source_ind i) (assert_163_21_5 i tmp_select_source l i)))) (not (= tmp_select_source 0)))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_163_21_5 source_ind source_val l i) (assign_172_22_5 source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_172_22_5 source_ind source_val l i) (while_175_19_1 source_ind source_val l (+ i 1)))))
(check-sat)
