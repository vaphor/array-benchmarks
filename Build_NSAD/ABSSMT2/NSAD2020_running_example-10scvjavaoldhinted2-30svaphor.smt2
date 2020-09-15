;Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_275_35_8 (Int Int Int Int Int) Bool)
(declare-fun assert_266_34_8 (Int Int Int Int Int) Bool)
(declare-fun assert_249_33_8 (Int Int Int Int Int) Bool)
(declare-fun while_278_31_6 (Int Int Int Int Int) Bool)
(declare-fun assign_206_30_6 (Int Int Int Int Int) Bool)
(declare-fun assign_197_26_8 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_188_25_8 (Int Int Int Int Int) Bool)
(declare-fun assert_171_24_8 (Int Int Int Int Int) Bool)
(declare-fun while_200_22_6 (Int Int Int Int Int) Bool)
(declare-fun assign_128_21_6 (Int Int Int Int Int) Bool)
(declare-fun assign_119_17_8 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_110_16_8 (Int Int Int Int Int) Bool)
(declare-fun assign_97_15_8 (Int Int Int Int Int) Bool)
(declare-fun assert_85_14_8 (Int Int Int Int Int) Bool)
(declare-fun while_122_12_6 (Int Int Int Int Int) Bool)
(declare-fun assign_42_11_6 (Int Int Int Int Int) Bool)
(declare-fun assign_36_8_6 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (start a_ind a_val v N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (start a_ind a_val v N i) (assign_36_8_6 a_ind a_val v N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (rnd Int) (v Int)) (=> (assign_36_8_6 a_ind a_val v N i) (assign_42_11_6 a_ind a_val v rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_42_11_6 a_ind a_val v N i) (while_122_12_6 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_122_12_6 a_ind a_val v N i) (< i N)) (assert_85_14_8 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_122_12_6 a_ind a_val v N i) (not (< i N))) (assign_128_21_6 a_ind a_val v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (assert_85_14_8 a_ind a_val v N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_85_14_8 k tmp_select_a v N i)) (and (< a_ind k) (assert_85_14_8 k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k i)) (= (mod tmp_select_a 2) 0)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_85_14_8 a_ind a_val v N i) (assign_97_15_8 a_ind a_val v N i))))
;
;(assign)  v := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (rnd Int) (v Int)) (=> (assign_97_15_8 a_ind a_val v N i) (arrayassign_110_16_8 a_ind a_val rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (v Int)) (=> (and (arrayassign_110_16_8 a_ind a_val v N i) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (* v 2))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_119_17_8 tmp_store_a_ind tmp_store_a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_119_17_8 a_ind a_val v N i) (while_122_12_6 a_ind a_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_128_21_6 a_ind a_val v N i) (while_200_22_6 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_200_22_6 a_ind a_val v N i) (< i N)) (assert_171_24_8 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_200_22_6 a_ind a_val v N i) (not (< i N))) (assign_206_30_6 a_ind a_val v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (assert_171_24_8 a_ind a_val v N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_171_24_8 k tmp_select_a v N i)) (and (< a_ind k) (assert_171_24_8 k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k i)) (= (mod tmp_select_a 2) 1)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_171_24_8 a_ind a_val v N i) (arrayassign_188_25_8 a_ind a_val v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (v Int)) (=> (and (arrayassign_188_25_8 a_ind a_val v N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_188_25_8 i tmp_select_a v N i)) (and (< a_ind i) (arrayassign_188_25_8 i tmp_select_a v N i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (+ tmp_select_a 1))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_197_26_8 tmp_store_a_ind tmp_store_a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_197_26_8 a_ind a_val v N i) (while_200_22_6 a_ind a_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_206_30_6 a_ind a_val v N i) (while_278_31_6 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_278_31_6 a_ind a_val v N i) (< i N)) (assert_249_33_8 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_278_31_6 a_ind a_val v N i) (not (< i N))) (end a_ind a_val v N i))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (k Int) (tmp_select_a Int) (v Int)) (=> (and (assert_249_33_8 a_ind a_val v N i) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_249_33_8 k tmp_select_a v N i)) (and (< a_ind k) (assert_249_33_8 k tmp_select_a v N i)))) (=> (and (<= 0 k) (< k N)) (= (mod tmp_select_a 2) 1)))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_249_33_8 a_ind a_val v N i) (assert_266_34_8 a_ind a_val v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (v Int)) (=> (and (assert_266_34_8 a_ind a_val v N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_266_34_8 i tmp_select_a v N i)) (and (< a_ind i) (assert_266_34_8 i tmp_select_a v N i)))) (= (mod tmp_select_a 2) 1))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_266_34_8 a_ind a_val v N i) (assign_275_35_8 a_ind a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_275_35_8 a_ind a_val v N i) (while_278_31_6 a_ind a_val v N (+ i 1)))))
(check-sat)
