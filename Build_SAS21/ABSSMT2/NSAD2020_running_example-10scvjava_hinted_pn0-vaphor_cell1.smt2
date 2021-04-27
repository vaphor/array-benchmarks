;Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_35_8_266 (Int Int Int Int Int) Bool)
(declare-fun assert_34_8_257 (Int Int Int Int Int) Bool)
(declare-fun assert_33_8_240 (Int Int Int Int Int) Bool)
(declare-fun while_31_6_269 (Int Int Int Int Int) Bool)
(declare-fun assign_30_6_200 (Int Int Int Int Int) Bool)
(declare-fun assign_26_8_191 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_25_8_182 (Int Int Int Int Int) Bool)
(declare-fun assert_24_8_165 (Int Int Int Int Int) Bool)
(declare-fun while_22_6_194 (Int Int Int Int Int) Bool)
(declare-fun assign_21_6_125 (Int Int Int Int Int) Bool)
(declare-fun assign_17_8_116 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_16_8_107 (Int Int Int Int Int) Bool)
(declare-fun assign_15_8_94 (Int Int Int Int Int) Bool)
(declare-fun assert_14_8_82 (Int Int Int Int Int) Bool)
(declare-fun while_12_6_119 (Int Int Int Int Int) Bool)
(declare-fun assign_11_6_42 (Int Int Int Int Int) Bool)
(declare-fun assign_8_6_36 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (start a_ind a_val v N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (start a_ind a_val v N i) (assign_8_6_36 a_ind a_val v N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (rnd Int) (v Int)) (=> (assign_8_6_36 a_ind a_val v N i) (assign_11_6_42 a_ind a_val v rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_11_6_42 a_ind a_val v N i) (while_12_6_119 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_12_6_119 a_ind a_val v N i) (< i N)) (assert_14_8_82 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_12_6_119 a_ind a_val v N i) (not (< i N))) (assign_21_6_125 a_ind a_val v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (assert_14_8_82 a_ind a_val v N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_14_8_82 k tmp_select_a v N i)) (and (< a_ind k) (assert_14_8_82 k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k i)) (= (mod tmp_select_a 2) 0)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_14_8_82 a_ind a_val v N i) (assign_15_8_94 a_ind a_val v N i))))
;
;(assign)  v := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (rnd Int) (v Int)) (=> (assign_15_8_94 a_ind a_val v N i) (arrayassign_16_8_107 a_ind a_val rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (v Int)) (=> (and (arrayassign_16_8_107 a_ind a_val v N i) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (* v 2))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_17_8_116 tmp_store_a_ind tmp_store_a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_17_8_116 a_ind a_val v N i) (while_12_6_119 a_ind a_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_21_6_125 a_ind a_val v N i) (while_22_6_194 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_22_6_194 a_ind a_val v N i) (< i N)) (assert_24_8_165 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_22_6_194 a_ind a_val v N i) (not (< i N))) (assign_30_6_200 a_ind a_val v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (assert_24_8_165 a_ind a_val v N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_24_8_165 k tmp_select_a v N i)) (and (< a_ind k) (assert_24_8_165 k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k i)) (= (mod tmp_select_a 2) 1)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_24_8_165 a_ind a_val v N i) (arrayassign_25_8_182 a_ind a_val v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (v Int)) (=> (and (arrayassign_25_8_182 a_ind a_val v N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_25_8_182 i tmp_select_a v N i)) (and (< a_ind i) (arrayassign_25_8_182 i tmp_select_a v N i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (+ tmp_select_a 1))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_26_8_191 tmp_store_a_ind tmp_store_a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_26_8_191 a_ind a_val v N i) (while_22_6_194 a_ind a_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_30_6_200 a_ind a_val v N i) (while_31_6_269 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_31_6_269 a_ind a_val v N i) (< i N)) (assert_33_8_240 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_31_6_269 a_ind a_val v N i) (not (< i N))) (end a_ind a_val v N i))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (assert_33_8_240 a_ind a_val v N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_33_8_240 k tmp_select_a v N i)) (and (< a_ind k) (assert_33_8_240 k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k N)) (= (mod tmp_select_a 2) 1)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_33_8_240 a_ind a_val v N i) (assert_34_8_257 a_ind a_val v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (v Int)) (=> (and (assert_34_8_257 a_ind a_val v N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_34_8_257 i tmp_select_a v N i)) (and (< a_ind i) (assert_34_8_257 i tmp_select_a v N i)))) (= (mod tmp_select_a 2) 1))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_34_8_257 a_ind a_val v N i) (assign_35_8_266 a_ind a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_35_8_266 a_ind a_val v N i) (while_31_6_269 a_ind a_val v N (+ i 1)))))
(check-sat)
