;Number of predicates (nodes) = 15
;Number of variables = 5
;Number of clauses = 21
;
(set-logic HORN)
(declare-fun assign_295_27_11 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_286_26_11 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_265_25_11 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_298_24_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_212_23_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_206_21_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_161_19_5 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_152_18_5 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_135_17_12 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_164_16_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_85_15_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_79_12_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_67_11_1 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (start b_ind b_val a_ind a_val Nb Na i)))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (start b_ind b_val a_ind a_val Nb Na i) (assign_67_11_1 b_ind b_val a_ind a_val Nb Na i))))
;
;(assign)  Na := Support.random()
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (rnd Int)) (=> (assign_67_11_1 b_ind b_val a_ind a_val Nb Na i) (assign_79_12_8 b_ind b_val a_ind a_val Nb rnd i))))
;
;(assign)  Nb := Support.random()
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (rnd Int)) (=> (assign_79_12_8 b_ind b_val a_ind a_val Nb Na i) (assign_85_15_1 b_ind b_val a_ind a_val rnd Na i))))
;
;(assign)  i := Na
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_85_15_1 b_ind b_val a_ind a_val Nb Na i) (while_164_16_1 b_ind b_val a_ind a_val Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_164_16_1 b_ind b_val a_ind a_val Nb Na i) (< i (+ Na Nb))) (assert_135_17_12 b_ind b_val a_ind a_val Nb Na i))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_164_16_1 b_ind b_val a_ind a_val Nb Na i) (not (< i (+ Na Nb)))) (assert_206_21_8 b_ind b_val a_ind a_val Nb Na i))))
;
;(assert)  (((Na<=k)&&(k<i))=>(a[k]==b[(k-Na)]))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_b Int)) (=> (and (assert_135_17_12 b_ind b_val a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_135_17_12 b_ind b_val k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_135_17_12 b_ind b_val k tmp_select_a Nb Na i))) (or (and (= b_ind (- k Na)) (= tmp_select_b b_val)) (and (< (- k Na) b_ind) (assert_135_17_12 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_135_17_12 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_135_17_12 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))) (and (< b_ind (- k Na)) (assert_135_17_12 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_135_17_12 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_135_17_12 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))))) (=> (and (<= Na k) (< k i)) (= tmp_select_a tmp_select_b)))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_135_17_12 b_ind b_val a_ind a_val Nb Na i) (arrayassign_152_18_5 b_ind b_val a_ind a_val Nb Na i))))
;
;(aassign) a[i] := b[(i-Na)]
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_b Int) (tmp_store_a_ind Int) (tmp_store_a_val Int)) (=> (and (arrayassign_152_18_5 b_ind b_val a_ind a_val Nb Na i) (or (and (= b_ind (- i Na)) (= tmp_select_b b_val)) (and (< (- i Na) b_ind) (arrayassign_152_18_5 (- i Na) tmp_select_b a_ind a_val Nb Na i)) (and (< b_ind (- i Na)) (arrayassign_152_18_5 (- i Na) tmp_select_b a_ind a_val Nb Na i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val tmp_select_b)) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_161_19_5 b_ind b_val tmp_store_a_ind tmp_store_a_val Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_161_19_5 b_ind b_val a_ind a_val Nb Na i) (while_164_16_1 b_ind b_val a_ind a_val Nb Na (+ i 1)))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_b Int)) (=> (and (assert_206_21_8 b_ind b_val a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_206_21_8 b_ind b_val k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_206_21_8 b_ind b_val k tmp_select_a Nb Na i))) (or (and (= b_ind (- k Na)) (= tmp_select_b b_val)) (and (< (- k Na) b_ind) (assert_206_21_8 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_206_21_8 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_206_21_8 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))) (and (< b_ind (- k Na)) (assert_206_21_8 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_206_21_8 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_206_21_8 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))))) (=> (and (<= Na k) (< k (+ Na Nb))) (= tmp_select_a tmp_select_b)))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_206_21_8 b_ind b_val a_ind a_val Nb Na i) (assign_212_23_8 b_ind b_val a_ind a_val Nb Na i))))
;
;(assign)  i := Na
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_212_23_8 b_ind b_val a_ind a_val Nb Na i) (while_298_24_1 b_ind b_val a_ind a_val Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_298_24_1 b_ind b_val a_ind a_val Nb Na i) (< i (+ Na Nb))) (assert_265_25_11 b_ind b_val a_ind a_val Nb Na i))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (and (while_298_24_1 b_ind b_val a_ind a_val Nb Na i) (not (< i (+ Na Nb)))) (end b_ind b_val a_ind a_val Nb Na i))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_b Int)) (=> (and (assert_265_25_11 b_ind b_val a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_265_25_11 b_ind b_val k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_265_25_11 b_ind b_val k tmp_select_a Nb Na i))) (or (and (= b_ind (- k Na)) (= tmp_select_b b_val)) (and (< (- k Na) b_ind) (assert_265_25_11 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_265_25_11 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_265_25_11 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))) (and (< b_ind (- k Na)) (assert_265_25_11 (- k Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_265_25_11 (- k Na) tmp_select_b k tmp_select_a Nb Na i)) (and (< a_ind k) (assert_265_25_11 (- k Na) tmp_select_b k tmp_select_a Nb Na i)))))) (=> (and (<= Na k) (< k (+ Na Nb))) (= tmp_select_a tmp_select_b)))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_265_25_11 b_ind b_val a_ind a_val Nb Na i) (assert_286_26_11 b_ind b_val a_ind a_val Nb Na i))))
;
;(assert)  (a[i]==b[(i-Na)])
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int) (tmp_select_a Int) (tmp_select_b Int)) (=> (and (assert_286_26_11 b_ind b_val a_ind a_val Nb Na i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_286_26_11 b_ind b_val i tmp_select_a Nb Na i)) (and (< a_ind i) (assert_286_26_11 b_ind b_val i tmp_select_a Nb Na i))) (or (and (= b_ind (- i Na)) (= tmp_select_b b_val)) (and (< (- i Na) b_ind) (assert_286_26_11 (- i Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_286_26_11 (- i Na) tmp_select_b i tmp_select_a Nb Na i)) (and (< a_ind i) (assert_286_26_11 (- i Na) tmp_select_b i tmp_select_a Nb Na i)))) (and (< b_ind (- i Na)) (assert_286_26_11 (- i Na) tmp_select_b a_ind a_val Nb Na i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_286_26_11 (- i Na) tmp_select_b i tmp_select_a Nb Na i)) (and (< a_ind i) (assert_286_26_11 (- i Na) tmp_select_b i tmp_select_a Nb Na i)))))) (= tmp_select_a tmp_select_b))))
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assert_286_26_11 b_ind b_val a_ind a_val Nb Na i) (assign_295_27_11 b_ind b_val a_ind a_val Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ((Na Int) (Nb Int) (a_ind Int) (a_val Int) (b_ind Int) (b_val Int) (i Int)) (=> (assign_295_27_11 b_ind b_val a_ind a_val Nb Na i) (while_298_24_1 b_ind b_val a_ind a_val Nb Na (+ i 1)))))
(check-sat)
