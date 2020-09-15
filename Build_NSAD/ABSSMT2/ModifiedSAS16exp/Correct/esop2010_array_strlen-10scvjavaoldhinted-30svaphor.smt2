;Number of predicates (nodes) = 12
;Number of variables = 3
;Number of clauses = 17
;
(set-logic HORN)
(declare-fun assign_22_5_172 (Int Int Int Int) Bool)
(declare-fun assert_21_5_163 (Int Int Int Int) Bool)
(declare-fun assert_20_12_148 (Int Int Int Int) Bool)
(declare-fun while_19_1_175 (Int Int Int Int) Bool)
(declare-fun assign_18_1_110 (Int Int Int Int) Bool)
(declare-fun assign_17_1_104 (Int Int Int Int) Bool)
(declare-fun assign_15_5_95 (Int Int Int Int) Bool)
(declare-fun assert_14_12_86 (Int Int Int Int) Bool)
(declare-fun while_13_1_98 (Int Int Int Int) Bool)
(declare-fun assign_12_1_39 (Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int) Bool)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (start source_ind source_val l i)))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (start source_ind source_val l i) (assign_12_1_39 source_ind source_val l i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_12_1_39 source_ind source_val l i) (while_13_1_98 source_ind source_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_13_1_98 source_ind source_val l i) (not (= tmp_select_source 0)) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_13_1_98 i tmp_select_source l i)) (and (< source_ind i) (while_13_1_98 i tmp_select_source l i)))) (assert_14_12_86 source_ind source_val l i))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_13_1_98 source_ind source_val l i) (not (not (= tmp_select_source 0))) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_13_1_98 i tmp_select_source l i)) (and (< source_ind i) (while_13_1_98 i tmp_select_source l i)))) (assign_17_1_104 source_ind source_val l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(!(source[k]==0)))
(assert (forall ((i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (assert_14_12_86 source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_14_12_86 k tmp_select_source l i)) (and (< source_ind k) (assert_14_12_86 k tmp_select_source l i)))) (=> (and (<= 0 k) (< k i)) (not (= tmp_select_source 0))))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_14_12_86 source_ind source_val l i) (assign_15_5_95 source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_15_5_95 source_ind source_val l i) (while_13_1_98 source_ind source_val l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_17_1_104 source_ind source_val l i) (assign_18_1_110 source_ind source_val i i))))
;
;(assign)  i := 0
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_18_1_110 source_ind source_val l i) (while_19_1_175 source_ind source_val l 0))))
;
;(while)   while((i<l))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_19_1_175 source_ind source_val l i) (< i l)) (assert_20_12_148 source_ind source_val l i))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_19_1_175 source_ind source_val l i) (not (< i l))) (end source_ind source_val l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(!(source[k]==0)))
(assert (forall ((i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (assert_20_12_148 source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_20_12_148 k tmp_select_source l i)) (and (< source_ind k) (assert_20_12_148 k tmp_select_source l i)))) (=> (and (<= 0 k) (< k l)) (not (= tmp_select_source 0))))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_20_12_148 source_ind source_val l i) (assert_21_5_163 source_ind source_val l i))))
;
;(assert)  (!(source[i]==0))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (assert_21_5_163 source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_21_5_163 i tmp_select_source l i)) (and (< source_ind i) (assert_21_5_163 i tmp_select_source l i)))) (not (= tmp_select_source 0)))))
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_21_5_163 source_ind source_val l i) (assign_22_5_172 source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_22_5_172 source_ind source_val l i) (while_19_1_175 source_ind source_val l (+ i 1)))))
(check-sat)
