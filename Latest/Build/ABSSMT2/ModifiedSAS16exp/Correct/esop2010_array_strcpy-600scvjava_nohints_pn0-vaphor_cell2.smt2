;Number of predicates (nodes) = 11
;Number of variables = 4
;Number of clauses = 14
;
(set-logic HORN)
(declare-fun assign_26_10_282 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assert_25_3_273 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_22_8_285 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_20_8_187 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_18_1_151 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_15_5_112 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_14_5_103 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun while_12_1_115 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun assign_11_1_46 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind)) (start dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (start dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i)) (assign_11_1_46 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := 0
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (assign_11_1_46 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i)) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i) (not (= tmp_select_source 0)) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i)))) (arrayassign_14_5_103 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i) (not (not (= tmp_select_source 0))) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i)))) (assign_18_1_151 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i))))
;
;(aassign) dest[i] := source[i]
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_source Int) (tmp_store_dest0_ind Int) (tmp_store_dest0_val Int) (tmp_store_dest1_ind Int) (tmp_store_dest1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (arrayassign_14_5_103 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (arrayassign_14_5_103 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (arrayassign_14_5_103 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (arrayassign_14_5_103 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (arrayassign_14_5_103 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (arrayassign_14_5_103 dest0_ind dest0_val dest1_ind dest1_val source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (arrayassign_14_5_103 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i))) (= tmp_store_dest0_ind dest0_ind) (= tmp_store_dest1_ind dest1_ind) (or (and (= dest0_ind i) (= tmp_store_dest1_val dest1_val) (= tmp_store_dest0_val tmp_select_source)) (and (= dest1_ind i) (= tmp_store_dest0_val dest0_val) (= tmp_store_dest1_val tmp_select_source)) (and (not (= dest0_ind i)) (not (= dest1_ind i)) (= tmp_store_dest0_val dest0_val) (= tmp_store_dest1_val dest1_val)))) (assign_15_5_112 tmp_store_dest0_ind tmp_store_dest0_val tmp_store_dest1_ind tmp_store_dest1_val source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (assign_15_5_112 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i)) (while_12_1_115 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l (+ i 1)))))
;
;(assign)  l := i
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (assign_18_1_151 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i)) (assign_20_8_187 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val i i))))
;
;(assign)  i := 0
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (assign_20_8_187 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i)) (while_22_8_285 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l 0))))
;
;(while)   while((i<l))
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (while_22_8_285 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i) (< i l)) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i))))
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (while_22_8_285 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i) (not (< i l))) (end dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i))) (or (and (= dest0_ind i) (= tmp_select_dest dest0_val)) (and (= dest1_ind i) (= tmp_select_dest dest1_val)) (and (< i dest0_ind) (< i dest1_ind) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i))) (< i dest0_ind) (assert_25_3_273 i tmp_select_dest dest0_ind dest0_val source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_25_3_273 i tmp_select_dest dest0_ind dest0_val i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_25_3_273 i tmp_select_dest dest0_ind dest0_val i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_25_3_273 i tmp_select_dest dest0_ind dest0_val i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_25_3_273 i tmp_select_dest dest0_ind dest0_val source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_25_3_273 i tmp_select_dest dest0_ind dest0_val source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_25_3_273 i tmp_select_dest dest0_ind dest0_val source0_ind source0_val i tmp_select_source l i)))) (and (< dest0_ind i) (< i dest1_ind) (< i dest1_ind) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_25_3_273 i tmp_select_dest dest1_ind dest1_val source0_ind source0_val i tmp_select_source l i))) (< dest0_ind i) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest source0_ind source0_val i tmp_select_source l i)))) (and (< dest1_ind i) (< dest1_ind i) (assert_25_3_273 dest1_ind dest1_val i tmp_select_dest source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_25_3_273 dest1_ind dest1_val i tmp_select_dest i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_25_3_273 dest1_ind dest1_val i tmp_select_dest i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_25_3_273 dest1_ind dest1_val i tmp_select_dest i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_25_3_273 dest1_ind dest1_val i tmp_select_dest source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_25_3_273 dest1_ind dest1_val i tmp_select_dest source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_25_3_273 dest1_ind dest1_val i tmp_select_dest source0_ind source0_val i tmp_select_source l i))) (< dest0_ind i) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest source0_ind source0_val source1_ind source1_val l i) (or (and (= source0_ind i) (= tmp_select_source source0_val)) (and (= source1_ind i) (= tmp_select_source source1_val)) (and (< i source0_ind) (< i source1_ind) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest i tmp_select_source source1_ind source1_val l i) (< i source0_ind) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest i tmp_select_source source0_ind source0_val l i)) (and (< source0_ind i) (< i source1_ind) (< i source1_ind) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest i tmp_select_source source1_ind source1_val l i) (< source0_ind i) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest source0_ind source0_val i tmp_select_source l i)) (and (< source1_ind i) (< source1_ind i) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest source1_ind source1_val i tmp_select_source l i) (< source0_ind i) (assert_25_3_273 dest0_ind dest0_val i tmp_select_dest source0_ind source0_val i tmp_select_source l i)))))) (= tmp_select_source tmp_select_dest))))
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (assert_25_3_273 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i)) (assign_26_10_282 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((dest0_ind Int) (dest0_val Int) (dest1_ind Int) (dest1_val Int) (i Int) (l Int) (source0_ind Int) (source0_val Int) (source1_ind Int) (source1_val Int)) (=> (and (< dest0_ind dest1_ind) (< source0_ind source1_ind) (assign_26_10_282 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l i)) (while_22_8_285 dest0_ind dest0_val dest1_ind dest1_val source0_ind source0_val source1_ind source1_val l (+ i 1)))))
(check-sat)