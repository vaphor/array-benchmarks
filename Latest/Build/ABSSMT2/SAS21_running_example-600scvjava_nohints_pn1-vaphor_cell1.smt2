;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 20
;
(set-logic HORN)
(declare-fun assign_266_32_8 (Int Int Int Int Int) Bool)
(declare-fun assert_257_31_8 (Int Int Int Int Int) Bool)
(declare-fun while_269_28_6 (Int Int Int Int Int) Bool)
(declare-fun assign_200_27_6 (Int Int Int Int Int) Bool)
(declare-fun assign_191_24_8 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_182_23_8 (Int Int Int Int Int) Bool)
(declare-fun while_194_20_6 (Int Int Int Int Int) Bool)
(declare-fun assign_125_19_6 (Int Int Int Int Int) Bool)
(declare-fun assign_116_16_8 (Int Int Int Int Int) Bool)
(declare-fun arrayassign_107_15_8 (Int Int Int Int Int) Bool)
(declare-fun assign_94_14_8 (Int Int Int Int Int) Bool)
(declare-fun while_119_11_6 (Int Int Int Int Int) Bool)
(declare-fun assign_42_10_6 (Int Int Int Int Int) Bool)
(declare-fun assign_36_8_6 (Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (start a_ind a_val v N i)))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (start a_ind a_val v N i) (assign_36_8_6 a_ind a_val v N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (rnd Int) (v Int)) (=> (assign_36_8_6 a_ind a_val v N i) (assign_42_10_6 a_ind a_val v rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_42_10_6 a_ind a_val v N i) (while_119_11_6 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_119_11_6 a_ind a_val v N i) (< i N)) (assign_94_14_8 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_119_11_6 a_ind a_val v N i) (not (< i N))) (assign_125_19_6 a_ind a_val v N i))))
;
;(assign)  v := Support.random()
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (rnd Int) (v Int)) (=> (assign_94_14_8 a_ind a_val v N i) (arrayassign_107_15_8 a_ind a_val rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (v Int)) (=> (and (arrayassign_107_15_8 a_ind a_val v N i) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (* v 2))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_116_16_8 tmp_store_a_ind tmp_store_a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_116_16_8 a_ind a_val v N i) (while_119_11_6 a_ind a_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_125_19_6 a_ind a_val v N i) (while_194_20_6 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_194_20_6 a_ind a_val v N i) (< i N)) (arrayassign_182_23_8 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_194_20_6 a_ind a_val v N i) (not (< i N))) (assign_200_27_6 a_ind a_val v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (tmp_store_a_ind Int) (tmp_store_a_val Int) (v Int)) (=> (and (arrayassign_182_23_8 a_ind a_val v N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_182_23_8 i tmp_select_a v N i)) (and (< a_ind i) (arrayassign_182_23_8 i tmp_select_a v N i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val (+ tmp_select_a 1))) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_191_24_8 tmp_store_a_ind tmp_store_a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_191_24_8 a_ind a_val v N i) (while_194_20_6 a_ind a_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_200_27_6 a_ind a_val v N i) (while_269_28_6 a_ind a_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_269_28_6 a_ind a_val v N i) (< i N)) (assert_257_31_8 a_ind a_val v N i))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (and (while_269_28_6 a_ind a_val v N i) (not (< i N))) (end a_ind a_val v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (tmp_select_a Int) (v Int)) (=> (and (assert_257_31_8 a_ind a_val v N i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (assert_257_31_8 i tmp_select_a v N i)) (and (< a_ind i) (assert_257_31_8 i tmp_select_a v N i)))) (= (mod tmp_select_a 2) 1))))
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assert_257_31_8 a_ind a_val v N i) (assign_266_32_8 a_ind a_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a_ind Int) (a_val Int) (i Int) (v Int)) (=> (assign_266_32_8 a_ind a_val v N i) (while_269_28_6 a_ind a_val v N (+ i 1)))))
(check-sat)
