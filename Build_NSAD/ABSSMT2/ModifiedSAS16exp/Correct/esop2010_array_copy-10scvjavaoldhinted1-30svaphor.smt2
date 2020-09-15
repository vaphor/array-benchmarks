;Number of predicates (nodes) = 13
;Number of variables = 4
;Number of clauses = 18
;
(set-logic HORN)
(declare-fun assign_205_22_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_196_21_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_178_20_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_208_19_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_134_18_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_125_15_5 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_116_14_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_102_13_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_128_12_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_58_11_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_52_10_1 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (start a_copy_ind a_copy_val a_ind a_val N i)))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (start a_copy_ind a_copy_val a_ind a_val N i) (assign_52_10_1 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (rnd Int)) (=> (assign_52_10_1 a_copy_ind a_copy_val a_ind a_val N i) (assign_58_11_1 a_copy_ind a_copy_val a_ind a_val rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_58_11_1 a_copy_ind a_copy_val a_ind a_val N i) (while_128_12_1 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_128_12_1 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (assert_102_13_12 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_128_12_1 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (assign_134_18_1 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a[k]==a_copy[k]))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_102_13_12 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_102_13_12 a_copy_ind a_copy_val k tmp_select_a N i)) (and (< a_ind k) (assert_102_13_12 a_copy_ind a_copy_val k tmp_select_a N i))) (or (and (= a_copy_ind k) (= tmp_select_a_copy a_copy_val)) (and (< k a_copy_ind) (assert_102_13_12 k tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_102_13_12 k tmp_select_a_copy k tmp_select_a N i)) (and (< a_ind k) (assert_102_13_12 k tmp_select_a_copy k tmp_select_a N i)))) (and (< a_copy_ind k) (assert_102_13_12 k tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_102_13_12 k tmp_select_a_copy k tmp_select_a N i)) (and (< a_ind k) (assert_102_13_12 k tmp_select_a_copy k tmp_select_a N i)))))) (=> (and (<= 0 k) (< k i)) (= tmp_select_a tmp_select_a_copy)))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_102_13_12 a_copy_ind a_copy_val a_ind a_val N i) (arrayassign_116_14_5 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_116_14_5 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_116_14_5 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_116_14_5 a_copy_ind a_copy_val i tmp_select_a N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (assign_125_15_5 tmp_store_a_copy_ind tmp_store_a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_125_15_5 a_copy_ind a_copy_val a_ind a_val N i) (while_128_12_1 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_134_18_1 a_copy_ind a_copy_val a_ind a_val N i) (while_208_19_1 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_208_19_1 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (assert_178_20_12 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_208_19_1 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (end a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a[k]==a_copy[k]))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_178_20_12 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_178_20_12 a_copy_ind a_copy_val k tmp_select_a N i)) (and (< a_ind k) (assert_178_20_12 a_copy_ind a_copy_val k tmp_select_a N i))) (or (and (= a_copy_ind k) (= tmp_select_a_copy a_copy_val)) (and (< k a_copy_ind) (assert_178_20_12 k tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_178_20_12 k tmp_select_a_copy k tmp_select_a N i)) (and (< a_ind k) (assert_178_20_12 k tmp_select_a_copy k tmp_select_a N i)))) (and (< a_copy_ind k) (assert_178_20_12 k tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_178_20_12 k tmp_select_a_copy k tmp_select_a N i)) (and (< a_ind k) (assert_178_20_12 k tmp_select_a_copy k tmp_select_a N i)))))) (=> (and (<= 0 k) (< k N)) (= tmp_select_a tmp_select_a_copy)))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_178_20_12 a_copy_ind a_copy_val a_ind a_val N i) (assert_196_21_5 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (a[i]==a_copy[i])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_196_21_5 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_196_21_5 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (assert_196_21_5 a_copy_ind a_copy_val i tmp_select_a N i))) (or (and (= a_copy_ind i) (= tmp_select_a_copy a_copy_val)) (and (< i a_copy_ind) (assert_196_21_5 i tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_196_21_5 i tmp_select_a_copy i tmp_select_a N i)) (and (< a_ind i) (assert_196_21_5 i tmp_select_a_copy i tmp_select_a N i)))) (and (< a_copy_ind i) (assert_196_21_5 i tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_196_21_5 i tmp_select_a_copy i tmp_select_a N i)) (and (< a_ind i) (assert_196_21_5 i tmp_select_a_copy i tmp_select_a N i)))))) (= tmp_select_a tmp_select_a_copy))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_196_21_5 a_copy_ind a_copy_val a_ind a_val N i) (assign_205_22_5 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_205_22_5 a_copy_ind a_copy_val a_ind a_val N i) (while_208_19_1 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
(check-sat)
