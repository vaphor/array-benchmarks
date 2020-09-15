;Number of predicates (nodes) = 15
;Number of variables = 5
;Number of clauses = 21
;
(set-logic HORN)
(declare-fun assign_27_11_295 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_26_11_286 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_25_11_265 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_24_1_298 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_23_8_212 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_21_8_206 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_19_5_161 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_18_5_152 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_17_12_135 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_16_1_164 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_15_1_85 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_12_8_79 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_11_1_67 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (start b_ind b_val a_ind a_val Nb Na i)))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (start b_ind b_val a_ind a_val Nb Na i) (assign_11_1_67 b_ind b_val a_ind a_val Nb Na i))))
;
;(assign)  Na := Support.random()
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (rnd Int)) (=> (assign_11_1_67 b_ind b_val a_ind a_val Nb Na i) (assign_12_8_79 b_ind b_val a_ind a_val Nb rnd i))))
;
;(assign)  Nb := Support.random()
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (rnd Int)) (=> (assign_12_8_79 b_ind b_val a_ind a_val Nb Na i) (assign_15_1_85 b_ind b_val a_ind a_val rnd Na i))))
;
;(assign)  i := Na
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_15_1_85 b_ind b_val a_ind a_val Nb Na i) (while_16_1_164 b_ind b_val a_ind a_val Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_16_1_164 b_ind b_val a_ind a_val Nb Na i) (< i (+ Na Nb))) (assert_17_12_135 b_ind b_val a_ind a_val Nb Na i))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_16_1_164 b_ind b_val a_ind a_val Nb Na i) (not (< i (+ Na Nb)))) (assert_21_8_206 b_ind b_val a_ind a_val Nb Na i))))
;
;(assert)  (((Na<=k)&&(k<i))=>(a[k]==b[(k-Na)]))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_b Int)) (=> (and (assert_17_12_135 b_ind b_val a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_17_12_135 b_ind b_val k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_17_12_135 b_ind b_val k tmp_select_a Nb Na i))) (or (and (= b_ind (- k Na)) (= tmp_select_b b_val)) (and (< (- k Na) b_ind) (assert_17_12_135 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_17_12_135 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_17_12_135 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))) (and (< b_ind (- k Na)) (assert_17_12_135 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_17_12_135 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_17_12_135 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))))) (=> (and (<= Na k) (< k i)) (= tmp_select_a tmp_select_b)))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_17_12_135 b_ind b_val a_ind a_val Nb Na i) (arrayassign_18_5_152 b_ind b_val a_ind a_val Nb Na i))))
;
;(aassign) a[i] := b[(i-Na)]
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_b Int) (tmp_store_a_ind Int) (tmp_store_a_val Int)) (=> (and (arrayassign_18_5_152 b_ind b_val a_ind a_val Nb Na i) (or (and (= b_ind (- i Na)) (= tmp_select_b b_val)) (and (< (- i Na) b_ind) (arrayassign_18_5_152 (- i Na) tmp_select_b a_ind a_val Nb Na i)) (and (< b_ind (- i Na)) (arrayassign_18_5_152 (- i Na) tmp_select_b a_ind a_val Nb Na i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val tmp_select_b)) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_19_5_161 b_ind b_val tmp_store_a_ind tmp_store_a_val Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_19_5_161 b_ind b_val a_ind a_val Nb Na i) (while_16_1_164 b_ind b_val a_ind a_val Nb Na (+ i 1)))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_b Int)) (=> (and (assert_21_8_206 b_ind b_val a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_21_8_206 b_ind b_val k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_21_8_206 b_ind b_val k tmp_select_a Nb Na i))) (or (and (= b_ind (- k Na)) (= tmp_select_b b_val)) (and (< (- k Na) b_ind) (assert_21_8_206 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_21_8_206 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_21_8_206 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))) (and (< b_ind (- k Na)) (assert_21_8_206 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_21_8_206 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_21_8_206 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))))) (=> (and (<= Na k) (< k (+ Na Nb))) (= tmp_select_a tmp_select_b)))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_21_8_206 b_ind b_val a_ind a_val Nb Na i) (assign_23_8_212 b_ind b_val a_ind a_val Nb Na i))))
;
;(assign)  i := Na
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_23_8_212 b_ind b_val a_ind a_val Nb Na i) (while_24_1_298 b_ind b_val a_ind a_val Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_24_1_298 b_ind b_val a_ind a_val Nb Na i) (< i (+ Na Nb))) (assert_25_11_265 b_ind b_val a_ind a_val Nb Na i))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_24_1_298 b_ind b_val a_ind a_val Nb Na i) (not (< i (+ Na Nb)))) (end b_ind b_val a_ind a_val Nb Na i))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_b Int)) (=> (and (assert_25_11_265 b_ind b_val a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_25_11_265 b_ind b_val k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_25_11_265 b_ind b_val k tmp_select_a Nb Na i))) (or (and (= b_ind (- k Na)) (= tmp_select_b b_val)) (and (< (- k Na) b_ind) (assert_25_11_265 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_25_11_265 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_25_11_265 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))) (and (< b_ind (- k Na)) (assert_25_11_265 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_25_11_265 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_25_11_265 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))))) (=> (and (<= Na k) (< k (+ Na Nb))) (= tmp_select_a tmp_select_b)))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_25_11_265 b_ind b_val a_ind a_val Nb Na i) (assert_26_11_286 b_ind b_val a_ind a_val Nb Na i))))
;
;(assert)  (a[i]==b[(i-Na)])
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a Int) (tmp_select_b Int)) (=> (and (assert_26_11_286 b_ind b_val a_ind a_val Nb Na i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_26_11_286 b_ind b_val i tmp_select_a Nb Na i)) (and (< a_ind i) (assert_26_11_286 b_ind b_val i tmp_select_a Nb Na i))) (or (and (= b_ind (- i Na)) (= tmp_select_b b_val)) (and (< (- i Na) b_ind) (assert_26_11_286 (- i Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_26_11_286 (- i Na) tmp_select_b i tmp_select_a Nb Na i)) (and (< a_ind i) (assert_26_11_286 (- i Na) tmp_select_b i tmp_select_a Nb Na i)))) (and (< b_ind (- i Na)) (assert_26_11_286 (- i Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_26_11_286 (- i Na) tmp_select_b i tmp_select_a Nb Na i)) (and (< a_ind i) (assert_26_11_286 (- i Na) tmp_select_b i tmp_select_a Nb Na i)))))) (= tmp_select_a tmp_select_b))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_26_11_286 b_ind b_val a_ind a_val Nb Na i) (assign_27_11_295 b_ind b_val a_ind a_val Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_27_11_295 b_ind b_val a_ind a_val Nb Na i) (while_24_1_298 b_ind b_val a_ind a_val Nb Na (+ i 1)))))
(check-sat)
