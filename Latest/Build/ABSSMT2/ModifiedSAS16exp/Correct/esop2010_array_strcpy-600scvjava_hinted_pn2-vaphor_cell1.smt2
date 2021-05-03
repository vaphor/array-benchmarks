;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 24
;
(set-logic HORN)
(declare-fun assign_282_26_10 (Int Int Int Int Int Int) Bool)
(declare-fun assert_273_25_3 (Int Int Int Int Int Int) Bool)
(declare-fun assert_255_24_10 (Int Int Int Int Int Int) Bool)
(declare-fun while_285_22_8 (Int Int Int Int Int Int) Bool)
(declare-fun assert_217_21_8 (Int Int Int Int Int Int) Bool)
(declare-fun assign_187_20_8 (Int Int Int Int Int Int) Bool)
(declare-fun assert_181_19_8 (Int Int Int Int Int Int) Bool)
(declare-fun assign_151_18_1 (Int Int Int Int Int Int) Bool)
(declare-fun assert_145_17_8 (Int Int Int Int Int Int) Bool)
(declare-fun assign_112_15_5 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_103_14_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_89_13_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_115_12_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_46_11_1 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (start dest_ind dest_val source_ind source_val l i)))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (start dest_ind dest_val source_ind source_val l i) (assign_46_11_1 dest_ind dest_val source_ind source_val l i))))
;
;(assign)  i := 0
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_46_11_1 dest_ind dest_val source_ind source_val l i) (while_115_12_1 dest_ind dest_val source_ind source_val l 0))))
;
;(while)   while((!(source[i]==0)))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_115_12_1 dest_ind dest_val source_ind source_val l i) (not (= tmp_select_source 0)) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_115_12_1 dest_ind dest_val i tmp_select_source l i)) (and (< source_ind i) (while_115_12_1 dest_ind dest_val i tmp_select_source l i)))) (assert_89_13_12 dest_ind dest_val source_ind source_val l i))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int)) (=> (and (while_115_12_1 dest_ind dest_val source_ind source_val l i) (not (not (= tmp_select_source 0))) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (while_115_12_1 dest_ind dest_val i tmp_select_source l i)) (and (< source_ind i) (while_115_12_1 dest_ind dest_val i tmp_select_source l i)))) (assert_145_17_8 dest_ind dest_val source_ind source_val l i))))
;
;(assert)  (((0<=k)&&(k<i))=>(dest[k]==source[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_89_13_12 dest_ind dest_val source_ind source_val l i) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_89_13_12 k tmp_select_dest source_ind source_val l i)) (and (< dest_ind k) (assert_89_13_12 k tmp_select_dest source_ind source_val l i))) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_89_13_12 dest_ind dest_val k tmp_select_source l i) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_89_13_12 k tmp_select_dest k tmp_select_source l i)) (and (< dest_ind k) (assert_89_13_12 k tmp_select_dest k tmp_select_source l i)))) (and (< source_ind k) (assert_89_13_12 dest_ind dest_val k tmp_select_source l i) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_89_13_12 k tmp_select_dest k tmp_select_source l i)) (and (< dest_ind k) (assert_89_13_12 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k i)) (= tmp_select_dest tmp_select_source)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_89_13_12 dest_ind dest_val source_ind source_val l i) (arrayassign_103_14_5 dest_ind dest_val source_ind source_val l i))))
;
;(aassign) dest[i] := source[i]
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_source Int) (tmp_store_dest_ind Int) (tmp_store_dest_val Int)) (=> (and (arrayassign_103_14_5 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (arrayassign_103_14_5 dest_ind dest_val i tmp_select_source l i)) (and (< source_ind i) (arrayassign_103_14_5 dest_ind dest_val i tmp_select_source l i))) (= tmp_store_dest_ind dest_ind) (or (and (= dest_ind i) (= tmp_store_dest_val tmp_select_source)) (and (not (= dest_ind i)) (= tmp_store_dest_val dest_val)))) (assign_112_15_5 tmp_store_dest_ind tmp_store_dest_val source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_112_15_5 dest_ind dest_val source_ind source_val l i) (while_115_12_1 dest_ind dest_val source_ind source_val l (+ i 1)))))
;
;(assert)  (((0<=k)&&(k<i))=>(source[k]==dest[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_145_17_8 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_145_17_8 dest_ind dest_val k tmp_select_source l i)) (and (< source_ind k) (assert_145_17_8 dest_ind dest_val k tmp_select_source l i))) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_145_17_8 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_145_17_8 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_145_17_8 k tmp_select_dest k tmp_select_source l i)))) (and (< dest_ind k) (assert_145_17_8 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_145_17_8 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_145_17_8 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k i)) (= tmp_select_source tmp_select_dest)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_145_17_8 dest_ind dest_val source_ind source_val l i) (assign_151_18_1 dest_ind dest_val source_ind source_val l i))))
;
;(assign)  l := i
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_151_18_1 dest_ind dest_val source_ind source_val l i) (assert_181_19_8 dest_ind dest_val source_ind source_val i i))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_181_19_8 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_181_19_8 dest_ind dest_val k tmp_select_source l i)) (and (< source_ind k) (assert_181_19_8 dest_ind dest_val k tmp_select_source l i))) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_181_19_8 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_181_19_8 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_181_19_8 k tmp_select_dest k tmp_select_source l i)))) (and (< dest_ind k) (assert_181_19_8 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_181_19_8 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_181_19_8 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k l)) (= tmp_select_source tmp_select_dest)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_181_19_8 dest_ind dest_val source_ind source_val l i) (assign_187_20_8 dest_ind dest_val source_ind source_val l i))))
;
;(assign)  i := 0
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_187_20_8 dest_ind dest_val source_ind source_val l i) (assert_217_21_8 dest_ind dest_val source_ind source_val l 0))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_217_21_8 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_217_21_8 dest_ind dest_val k tmp_select_source l i)) (and (< source_ind k) (assert_217_21_8 dest_ind dest_val k tmp_select_source l i))) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_217_21_8 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_217_21_8 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_217_21_8 k tmp_select_dest k tmp_select_source l i)))) (and (< dest_ind k) (assert_217_21_8 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_217_21_8 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_217_21_8 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k l)) (= tmp_select_source tmp_select_dest)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_217_21_8 dest_ind dest_val source_ind source_val l i) (while_285_22_8 dest_ind dest_val source_ind source_val l i))))
;
;(while)   while((i<l))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_285_22_8 dest_ind dest_val source_ind source_val l i) (< i l)) (assert_255_24_10 dest_ind dest_val source_ind source_val l i))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (and (while_285_22_8 dest_ind dest_val source_ind source_val l i) (not (< i l))) (end dest_ind dest_val source_ind source_val l i))))
;
;(assert)  (((0<=k)&&(k<l))=>(source[k]==dest[k]))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (k Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_255_24_10 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_255_24_10 dest_ind dest_val k tmp_select_source l i)) (and (< source_ind k) (assert_255_24_10 dest_ind dest_val k tmp_select_source l i))) (or (and (= dest_ind k) (= tmp_select_dest dest_val)) (and (< k dest_ind) (assert_255_24_10 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_255_24_10 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_255_24_10 k tmp_select_dest k tmp_select_source l i)))) (and (< dest_ind k) (assert_255_24_10 k tmp_select_dest source_ind source_val l i) (or (and (= source_ind k) (= tmp_select_source source_val)) (and (< k source_ind) (assert_255_24_10 k tmp_select_dest k tmp_select_source l i)) (and (< source_ind k) (assert_255_24_10 k tmp_select_dest k tmp_select_source l i)))))) (=> (and (<= 0 k) (< k l)) (= tmp_select_source tmp_select_dest)))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_255_24_10 dest_ind dest_val source_ind source_val l i) (assert_273_25_3 dest_ind dest_val source_ind source_val l i))))
;
;(assert)  (source[i]==dest[i])
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int) (tmp_select_dest Int) (tmp_select_source Int)) (=> (and (assert_273_25_3 dest_ind dest_val source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_273_25_3 dest_ind dest_val i tmp_select_source l i)) (and (< source_ind i) (assert_273_25_3 dest_ind dest_val i tmp_select_source l i))) (or (and (= dest_ind i) (= tmp_select_dest dest_val)) (and (< i dest_ind) (assert_273_25_3 i tmp_select_dest source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_273_25_3 i tmp_select_dest i tmp_select_source l i)) (and (< source_ind i) (assert_273_25_3 i tmp_select_dest i tmp_select_source l i)))) (and (< dest_ind i) (assert_273_25_3 i tmp_select_dest source_ind source_val l i) (or (and (= source_ind i) (= tmp_select_source source_val)) (and (< i source_ind) (assert_273_25_3 i tmp_select_dest i tmp_select_source l i)) (and (< source_ind i) (assert_273_25_3 i tmp_select_dest i tmp_select_source l i)))))) (= tmp_select_source tmp_select_dest))))
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assert_273_25_3 dest_ind dest_val source_ind source_val l i) (assign_282_26_10 dest_ind dest_val source_ind source_val l i))))
;
;(assign)  i := (i+1)
(assert (forall ((dest_ind Int) (dest_val Int) (i Int) (l Int) (source_ind Int) (source_val Int)) (=> (assign_282_26_10 dest_ind dest_val source_ind source_val l i) (while_285_22_8 dest_ind dest_val source_ind source_val l (+ i 1)))))
(check-sat)
