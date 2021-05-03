;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 20
;
(set-logic HORN)
(declare-fun assign_32_8_266 (Int Int Int Int Int) Bool)
(declare-fun assert_31_8_257 (Int Int Int Int Int) Bool)
(declare-fun while_28_6_269 (Int Int Int Int Int) Bool)
(declare-fun assign_27_6_200 (Int Int Int Int Int) Bool)
(declare-fun assign_24_8_191 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_23_8_182 (Int Int Int Int Int) Bool)
(declare-fun while_20_6_194 (Int Int Int Int Int) Bool)
(declare-fun assign_19_6_125 (Int Int Int Int Int) Bool)
(declare-fun assign_16_8_116 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_15_8_107 (Int Int Int Int Int) Bool)
(declare-fun assign_14_8_94 (Int Int Int Int Int) Bool)
(declare-fun while_11_6_119 (Int Int Int Int Int) Bool)
(declare-fun assign_10_6_42 (Int Int Int Int Int) Bool)
(declare-fun assign_8_6_36 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (start a_ind a_val v N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (start a_ind a_val v N i) (assign_8_6_36 a_ind a_val v N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (rnd Int) (v Int)) (=> (assign_8_6_36 a_ind a_val v N i) (assign_10_6_42 a_ind a_val v rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_10_6_42 a_ind a_val v N i) (while_11_6_119 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_11_6_119 a_ind a_val v N i) (< i N)) (assign_14_8_94 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_11_6_119 a_ind a_val v N i) (not (< i N))) (assign_19_6_125 a_ind a_val v N i))))
;
;(assign)  v := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (rnd Int) (v Int)) (=> (assign_14_8_94 a_ind a_val v N i) (arrayassign_15_8_107 a_ind a_val rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (v Int)) (=> (and (arrayassign_15_8_107 a_ind a_val v N i) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (* v 2))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_16_8_116 tmp_store_a_ind tmp_store_a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_16_8_116 a_ind a_val v N i) (while_11_6_119 a_ind a_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_19_6_125 a_ind a_val v N i) (while_20_6_194 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_20_6_194 a_ind a_val v N i) (< i N)) (arrayassign_23_8_182 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_20_6_194 a_ind a_val v N i) (not (< i N))) (assign_27_6_200 a_ind a_val v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (v Int)) (=> (and (arrayassign_23_8_182 a_ind a_val v N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_23_8_182 i tmp_select_a v N i)) (and (< a_ind i) (arrayassign_23_8_182 i tmp_select_a v N i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (+ tmp_select_a 1))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_24_8_191 tmp_store_a_ind tmp_store_a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_24_8_191 a_ind a_val v N i) (while_20_6_194 a_ind a_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_27_6_200 a_ind a_val v N i) (while_28_6_269 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_28_6_269 a_ind a_val v N i) (< i N)) (assert_31_8_257 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_28_6_269 a_ind a_val v N i) (not (< i N))) (end a_ind a_val v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (v Int)) (=> (and (assert_31_8_257 a_ind a_val v N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_31_8_257 i tmp_select_a v N i)) (and (< a_ind i) (assert_31_8_257 i tmp_select_a v N i)))) (= (mod tmp_select_a 2) 1))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_31_8_257 a_ind a_val v N i) (assign_32_8_266 a_ind a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_32_8_266 a_ind a_val v N i) (while_28_6_269 a_ind a_val v N (+ i 1)))))
(check-sat)
