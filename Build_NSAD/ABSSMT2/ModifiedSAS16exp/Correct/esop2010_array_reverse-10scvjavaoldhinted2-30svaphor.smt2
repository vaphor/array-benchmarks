;Number of predicates (nodes) = 18
;Number of variables = 4
;Number of clauses = 25
;
(set-logic HORN)
(declare-fun assign_296_29_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_287_28_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_263_27_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_299_26_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_216_25_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_207_22_5 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_198_21_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_178_20_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_210_19_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_131_18_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_122_15_5 (Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_113_14_5 (Int Int Int Int Int Int) Bool)
(declare-fun assert_99_13_12 (Int Int Int Int Int Int) Bool)
(declare-fun while_125_12_1 (Int Int Int Int Int Int) Bool)
(declare-fun assign_58_11_8 (Int Int Int Int Int Int) Bool)
(declare-fun assign_52_9_1 (Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (start a_copy_ind a_copy_val a_ind a_val N i)))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (start a_copy_ind a_copy_val a_ind a_val N i) (assign_52_9_1 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (rnd Int)) (=> (assign_52_9_1 a_copy_ind a_copy_val a_ind a_val N i) (assign_58_11_8 a_copy_ind a_copy_val a_ind a_val rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_58_11_8 a_copy_ind a_copy_val a_ind a_val N i) (while_125_12_1 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_125_12_1 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (assert_99_13_12 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_125_12_1 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (assign_131_18_1 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==a[k]))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_99_13_12 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_copy_ind k) (= tmp_select_a_copy a_copy_val)) (and (< k a_copy_ind) (assert_99_13_12 k tmp_select_a_copy a_ind a_val N i)) (and (< a_copy_ind k) (assert_99_13_12 k tmp_select_a_copy a_ind a_val N i))) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_99_13_12 a_copy_ind a_copy_val k tmp_select_a N i) (or (and (= a_copy_ind k) (= tmp_select_a_copy a_copy_val)) (and (< k a_copy_ind) (assert_99_13_12 k tmp_select_a_copy k tmp_select_a N i)) (and (< a_copy_ind k) (assert_99_13_12 k tmp_select_a_copy k tmp_select_a N i)))) (and (< a_ind k) (assert_99_13_12 a_copy_ind a_copy_val k tmp_select_a N i) (or (and (= a_copy_ind k) (= tmp_select_a_copy a_copy_val)) (and (< k a_copy_ind) (assert_99_13_12 k tmp_select_a_copy k tmp_select_a N i)) (and (< a_copy_ind k) (assert_99_13_12 k tmp_select_a_copy k tmp_select_a N i)))))) (=> (and (<= 0 k) (< k i)) (= tmp_select_a_copy tmp_select_a)))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_99_13_12 a_copy_ind a_copy_val a_ind a_val N i) (arrayassign_113_14_5 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_113_14_5 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_113_14_5 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (arrayassign_113_14_5 a_copy_ind a_copy_val i tmp_select_a N i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (assign_122_15_5 tmp_store_a_copy_ind tmp_store_a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_122_15_5 a_copy_ind a_copy_val a_ind a_val N i) (while_125_12_1 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_131_18_1 a_copy_ind a_copy_val a_ind a_val N i) (while_210_19_1 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_210_19_1 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (assert_178_20_12 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_210_19_1 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (assign_216_25_1 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_178_20_12 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_copy_ind (- (- N k) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N k) 1) a_copy_ind) (assert_178_20_12 (- (- N k) 1) tmp_select_a_copy a_ind a_val N i)) (and (< a_copy_ind (- (- N k) 1)) (assert_178_20_12 (- (- N k) 1) tmp_select_a_copy a_ind a_val N i))) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_178_20_12 a_copy_ind a_copy_val k tmp_select_a N i) (or (and (= a_copy_ind (- (- N k) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N k) 1) a_copy_ind) (assert_178_20_12 (- (- N k) 1) tmp_select_a_copy k tmp_select_a N i)) (and (< a_copy_ind (- (- N k) 1)) (assert_178_20_12 (- (- N k) 1) tmp_select_a_copy k tmp_select_a N i)))) (and (< a_ind k) (assert_178_20_12 a_copy_ind a_copy_val k tmp_select_a N i) (or (and (= a_copy_ind (- (- N k) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N k) 1) a_copy_ind) (assert_178_20_12 (- (- N k) 1) tmp_select_a_copy k tmp_select_a N i)) (and (< a_copy_ind (- (- N k) 1)) (assert_178_20_12 (- (- N k) 1) tmp_select_a_copy k tmp_select_a N i)))))) (=> (and (<= 0 k) (< k i)) (= tmp_select_a_copy tmp_select_a)))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_178_20_12 a_copy_ind a_copy_val a_ind a_val N i) (arrayassign_198_21_5 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a_copy Int) (tmp_store_a_ind Int) (tmp_store_a_val Int)) (=> (and (arrayassign_198_21_5 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_copy_ind (- (- N i) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N i) 1) a_copy_ind) (arrayassign_198_21_5 (- (- N i) 1) tmp_select_a_copy a_ind a_val N i)) (and (< a_copy_ind (- (- N i) 1)) (arrayassign_198_21_5 (- (- N i) 1) tmp_select_a_copy a_ind a_val N i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val tmp_select_a_copy)) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_207_22_5 a_copy_ind a_copy_val tmp_store_a_ind tmp_store_a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_207_22_5 a_copy_ind a_copy_val a_ind a_val N i) (while_210_19_1 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_216_25_1 a_copy_ind a_copy_val a_ind a_val N i) (while_299_26_1 a_copy_ind a_copy_val a_ind a_val N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_299_26_1 a_copy_ind a_copy_val a_ind a_val N i) (< i N)) (assert_263_27_12 a_copy_ind a_copy_val a_ind a_val N i))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (and (while_299_26_1 a_copy_ind a_copy_val a_ind a_val N i) (not (< i N))) (end a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_263_27_12 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_copy_ind (- (- N k) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N k) 1) a_copy_ind) (assert_263_27_12 (- (- N k) 1) tmp_select_a_copy a_ind a_val N i)) (and (< a_copy_ind (- (- N k) 1)) (assert_263_27_12 (- (- N k) 1) tmp_select_a_copy a_ind a_val N i))) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_263_27_12 a_copy_ind a_copy_val k tmp_select_a N i) (or (and (= a_copy_ind (- (- N k) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N k) 1) a_copy_ind) (assert_263_27_12 (- (- N k) 1) tmp_select_a_copy k tmp_select_a N i)) (and (< a_copy_ind (- (- N k) 1)) (assert_263_27_12 (- (- N k) 1) tmp_select_a_copy k tmp_select_a N i)))) (and (< a_ind k) (assert_263_27_12 a_copy_ind a_copy_val k tmp_select_a N i) (or (and (= a_copy_ind (- (- N k) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N k) 1) a_copy_ind) (assert_263_27_12 (- (- N k) 1) tmp_select_a_copy k tmp_select_a N i)) (and (< a_copy_ind (- (- N k) 1)) (assert_263_27_12 (- (- N k) 1) tmp_select_a_copy k tmp_select_a N i)))))) (=> (and (<= 0 k) (< k N)) (= tmp_select_a_copy tmp_select_a)))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_263_27_12 a_copy_ind a_copy_val a_ind a_val N i) (assert_287_28_5 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_287_28_5 a_copy_ind a_copy_val a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_287_28_5 a_copy_ind a_copy_val i tmp_select_a N i)) (and (< a_ind i) (assert_287_28_5 a_copy_ind a_copy_val i tmp_select_a N i))) (or (and (= a_copy_ind (- (- N i) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- N i) 1) a_copy_ind) (assert_287_28_5 (- (- N i) 1) tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_287_28_5 (- (- N i) 1) tmp_select_a_copy i tmp_select_a N i)) (and (< a_ind i) (assert_287_28_5 (- (- N i) 1) tmp_select_a_copy i tmp_select_a N i)))) (and (< a_copy_ind (- (- N i) 1)) (assert_287_28_5 (- (- N i) 1) tmp_select_a_copy a_ind a_val N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_287_28_5 (- (- N i) 1) tmp_select_a_copy i tmp_select_a N i)) (and (< a_ind i) (assert_287_28_5 (- (- N i) 1) tmp_select_a_copy i tmp_select_a N i)))))) (= tmp_select_a tmp_select_a_copy))))
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assert_287_28_5 a_copy_ind a_copy_val a_ind a_val N i) (assign_296_29_5 a_copy_ind a_copy_val a_ind a_val N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int)) (=> (assign_296_29_5 a_copy_ind a_copy_val a_ind a_val N i) (while_299_26_1 a_copy_ind a_copy_val a_ind a_val N (+ i 1)))))
(check-sat)
