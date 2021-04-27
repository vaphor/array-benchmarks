;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 24
;
(set-logic HORN)
(declare-fun assign_26_10_282 (Int Int Int Int Int Int) Bool)
(declare-fun assert_25_3_273 (Int Int Int Int Int Int) Bool)
(declare-fun assert_24_10_255 (Int Int Int Int Int Int) Bool)
(declare-fun while_22_8_285 (Int Int Int Int Int Int) Bool)
(declare-fun assert_21_8_217 (Int Int Int Int Int Int) Bool)
(declare-fun assign_20_8_187 (Int Int Int Int Int Int) Bool)
(declare-fun assert_19_8_181 (Int Int Int Int Int Int) Bool)
(declare-fun assign_18_1_151 (Int Int Int Int Int Int) Bool)
(declare-fun assert_17_8_145 (Int Int Int Int Int Int) Bool)
(declare-fun assign_15_5_112 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_14_5_103 (Int Int Int Int Int Int) Bool)
(declare-fun assert_13_12_89 (Int Int Int Int Int Int) Bool)
(declare-fun while_12_1_115 (Int Int Int Int Int Int) Bool)
(declare-fun assign_11_1_46 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (start dest_ind dest_val source_ind source_val l i)))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (start dest_ind dest_val source_ind source_val l i) (assign_11_1_46 dest_ind dest_val source_ind source_val l i))))
;
;(assign)  i := 0
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_11_1_46 dest_ind dest_val source_ind source_val l i) (while_12_1_115 dest_ind dest_val source_ind source_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_12_1_115 dest_ind dest_val source_ind source_val l i) (not (= tmp_select_source 0)) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_12_1_115 dest_ind dest_val i tmp_select_source l i)) (and (< source_ind i) (while_12_1_115 dest_ind dest_val i tmp_select_source l i)))) (assert_13_12_89 dest_ind dest_val source_ind source_val l i))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_12_1_115 dest_ind dest_val source_ind source_val l i) (not (not (= tmp_select_source 0))) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_12_1_115 dest_ind dest_val i tmp_select_source l i)) (and (< source_ind i) (while_12_1_115 dest_ind dest_val i tmp_select_source l i)))) (assert_17_8_145 dest_ind dest_val source_ind source_val l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(dest[k]==source[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_13_12_89 dest_ind dest_val source_ind source_val l i) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_13_12_89 k tmp_select_dest source_ind source_val l i)) (and (< dest_ind k) (assert_13_12_89 k tmp_select_dest source_ind source_val l i))) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_13_12_89 dest_ind dest_val k tmp_select_source l i) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_13_12_89 k tmp_select_dest k tmp_select_source l i)) (and (< dest_ind k) (assert_13_12_89 k tmp_select_dest k tmp_select_source l i)))) (and (< source_ind k) (assert_13_12_89 dest_ind dest_val k tmp_select_source l i) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_13_12_89 k tmp_select_dest k tmp_select_source l i)) (and (< dest_ind k) (assert_13_12_89 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k i)) (= tmp_select_dest tmp_select_source)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_13_12_89 dest_ind dest_val source_ind source_val l i) (arrayassign_14_5_103 dest_ind dest_val source_ind source_val l i))))
;
;(aassign) dest[i] := source[i]
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int) (tmp_store_dest_ind Int) (tmp_store_dest_val Int)) (=> (and (arrayassign_14_5_103 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (arrayassign_14_5_103 dest_ind dest_val i tmp_select_source l i)) (and (< source_ind i) (arrayassign_14_5_103 dest_ind dest_val i tmp_select_source l i))) (= tmp_store_dest_ind dest_ind) (or (and (= dest_ind i) (= tmp_store_dest_val tmp_select_source)) (and (not (= dest_ind i)) (= tmp_store_dest_val dest_val)))) (assign_15_5_112 tmp_store_dest_ind tmp_store_dest_val source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_15_5_112 dest_ind dest_val source_ind source_val l i) (while_12_1_115 dest_ind dest_val source_ind source_val l (+ i 1)))))
;
;(assert)  (((0<=k)&&(k<i))=>(source[k]==dest[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_17_8_145 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_17_8_145 dest_ind dest_val k tmp_select_source l i)) (and (< source_ind k) (assert_17_8_145 dest_ind dest_val k tmp_select_source l i))) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_17_8_145 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_17_8_145 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_17_8_145 k tmp_select_dest k tmp_select_source l i)))) (and (< dest_ind k) (assert_17_8_145 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_17_8_145 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_17_8_145 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k i)) (= tmp_select_source tmp_select_dest)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_17_8_145 dest_ind dest_val source_ind source_val l i) (assign_18_1_151 dest_ind dest_val source_ind source_val l i))))
;
;(assign)  l := i
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_18_1_151 dest_ind dest_val source_ind source_val l i) (assert_19_8_181 dest_ind dest_val source_ind source_val i i))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_19_8_181 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_19_8_181 dest_ind dest_val k tmp_select_source l i)) (and (< source_ind k) (assert_19_8_181 dest_ind dest_val k tmp_select_source l i))) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_19_8_181 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_19_8_181 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_19_8_181 k tmp_select_dest k tmp_select_source l i)))) (and (< dest_ind k) (assert_19_8_181 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_19_8_181 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_19_8_181 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k l)) (= tmp_select_source tmp_select_dest)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_19_8_181 dest_ind dest_val source_ind source_val l i) (assign_20_8_187 dest_ind dest_val source_ind source_val l i))))
;
;(assign)  i := 0
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_20_8_187 dest_ind dest_val source_ind source_val l i) (assert_21_8_217 dest_ind dest_val source_ind source_val l 0))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_21_8_217 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_21_8_217 dest_ind dest_val k tmp_select_source l i)) (and (< source_ind k) (assert_21_8_217 dest_ind dest_val k tmp_select_source l i))) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_21_8_217 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_21_8_217 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_21_8_217 k tmp_select_dest k tmp_select_source l i)))) (and (< dest_ind k) (assert_21_8_217 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_21_8_217 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_21_8_217 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k l)) (= tmp_select_source tmp_select_dest)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_21_8_217 dest_ind dest_val source_ind source_val l i) (while_22_8_285 dest_ind dest_val source_ind source_val l i))))
;
;(while)   while((i<l))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_22_8_285 dest_ind dest_val source_ind source_val l i) (< i l)) (assert_24_10_255 dest_ind dest_val source_ind source_val l i))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_22_8_285 dest_ind dest_val source_ind source_val l i) (not (< i l))) (end dest_ind dest_val source_ind source_val l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_24_10_255 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_24_10_255 dest_ind dest_val k tmp_select_source l i)) (and (< source_ind k) (assert_24_10_255 dest_ind dest_val k tmp_select_source l i))) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_24_10_255 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_24_10_255 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_24_10_255 k tmp_select_dest k tmp_select_source l i)))) (and (< dest_ind k) (assert_24_10_255 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_24_10_255 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_24_10_255 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k l)) (= tmp_select_source tmp_select_dest)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_24_10_255 dest_ind dest_val source_ind source_val l i) (assert_25_3_273 dest_ind dest_val source_ind source_val l i))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_25_3_273 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_25_3_273 dest_ind dest_val i tmp_select_source l i)) (and (< source_ind i) (assert_25_3_273 dest_ind dest_val i tmp_select_source l i))) (or (and (= dest_ind i) (= tmp_select_dest dest_val)) (and (< i dest_ind) (assert_25_3_273 i tmp_select_dest source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_25_3_273 i tmp_select_dest i tmp_select_source l i)) (and (< source_ind i) (assert_25_3_273 i tmp_select_dest i tmp_select_source l i)))) (and (< dest_ind i) (assert_25_3_273 i tmp_select_dest source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_25_3_273 i tmp_select_dest i tmp_select_source l i)) (and (< source_ind i) (assert_25_3_273 i tmp_select_dest i tmp_select_source l i)))))) (= tmp_select_source tmp_select_dest))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_25_3_273 dest_ind dest_val source_ind source_val l i) (assign_26_10_282 dest_ind dest_val source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_26_10_282 dest_ind dest_val source_ind source_val l i) (while_22_8_285 dest_ind dest_val source_ind source_val l (+ i 1)))))
(check-sat)
