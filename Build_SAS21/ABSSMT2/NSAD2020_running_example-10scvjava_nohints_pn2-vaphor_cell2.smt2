;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 20
;
(set-logic HORN)
(declare-fun assign_266_35_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun assert_257_34_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_269_31_6 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_200_30_6 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_191_26_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_182_25_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_194_22_6 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_125_21_6 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_116_17_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_107_16_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_94_15_8 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_119_12_6 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_42_11_6 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_36_8_6 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val v N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (start a0_ind a0_val a1_ind a1_val v N i)) (assign_36_8_6 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assign)  N := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (rnd Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_36_8_6 a0_ind a0_val a1_ind a1_val v N i)) (assign_42_11_6 a0_ind a0_val a1_ind a1_val v rnd i))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_42_11_6 a0_ind a0_val a1_ind a1_val v N i)) (while_119_12_6 a0_ind a0_val a1_ind a1_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_119_12_6 a0_ind a0_val a1_ind a1_val v N i) (< i N)) (assign_94_15_8 a0_ind a0_val a1_ind a1_val v N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_119_12_6 a0_ind a0_val a1_ind a1_val v N i) (not (< i N))) (assign_125_21_6 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assign)  v := Support.random()
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (rnd Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_94_15_8 a0_ind a0_val a1_ind a1_val v N i)) (arrayassign_107_16_8 a0_ind a0_val a1_ind a1_val rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (tmp_store_a0_ind Int) (tmp_store_a0_val Int) (tmp_store_a1_ind Int) (tmp_store_a1_val Int) (v Int)) (=> (and (< a0_ind a1_ind) (arrayassign_107_16_8 a0_ind a0_val a1_ind a1_val v N i) (= tmp_store_a0_ind a0_ind) (= tmp_store_a1_ind a1_ind) (or (and (= a0_ind i) (= tmp_store_a1_val a1_val) (= tmp_store_a0_val (* v 2))) (and (= a1_ind i) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val (* v 2))) (and (not (= a0_ind i)) (not (= a1_ind i)) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val a1_val)))) (assign_116_17_8 tmp_store_a0_ind tmp_store_a0_val tmp_store_a1_ind tmp_store_a1_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_116_17_8 a0_ind a0_val a1_ind a1_val v N i)) (while_119_12_6 a0_ind a0_val a1_ind a1_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_125_21_6 a0_ind a0_val a1_ind a1_val v N i)) (while_194_22_6 a0_ind a0_val a1_ind a1_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_194_22_6 a0_ind a0_val a1_ind a1_val v N i) (< i N)) (arrayassign_182_25_8 a0_ind a0_val a1_ind a1_val v N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_194_22_6 a0_ind a0_val a1_ind a1_val v N i) (not (< i N))) (assign_200_30_6 a0_ind a0_val a1_ind a1_val v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (tmp_select_a Int) (tmp_store_a0_ind Int) (tmp_store_a0_val Int) (tmp_store_a1_ind Int) (tmp_store_a1_val Int) (v Int)) (=> (and (< a0_ind a1_ind) (arrayassign_182_25_8 a0_ind a0_val a1_ind a1_val v N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (arrayassign_182_25_8 i tmp_select_a a1_ind a1_val v N i) (< i a0_ind) (arrayassign_182_25_8 i tmp_select_a a0_ind a0_val v N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (arrayassign_182_25_8 i tmp_select_a a1_ind a1_val v N i) (< a0_ind i) (arrayassign_182_25_8 a0_ind a0_val i tmp_select_a v N i)) (and (< a1_ind i) (< a1_ind i) (arrayassign_182_25_8 a1_ind a1_val i tmp_select_a v N i) (< a0_ind i) (arrayassign_182_25_8 a0_ind a0_val i tmp_select_a v N i))) (= tmp_store_a0_ind a0_ind) (= tmp_store_a1_ind a1_ind) (or (and (= a0_ind i) (= tmp_store_a1_val a1_val) (= tmp_store_a0_val (+ tmp_select_a 1))) (and (= a1_ind i) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val (+ tmp_select_a 1))) (and (not (= a0_ind i)) (not (= a1_ind i)) (= tmp_store_a0_val a0_val) (= tmp_store_a1_val a1_val)))) (assign_191_26_8 tmp_store_a0_ind tmp_store_a0_val tmp_store_a1_ind tmp_store_a1_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_191_26_8 a0_ind a0_val a1_ind a1_val v N i)) (while_194_22_6 a0_ind a0_val a1_ind a1_val v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_200_30_6 a0_ind a0_val a1_ind a1_val v N i)) (while_269_31_6 a0_ind a0_val a1_ind a1_val v N 0))))
;
;(while)   while((i<N))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_269_31_6 a0_ind a0_val a1_ind a1_val v N i) (< i N)) (assert_257_34_8 a0_ind a0_val a1_ind a1_val v N i))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (while_269_31_6 a0_ind a0_val a1_ind a1_val v N i) (not (< i N))) (end a0_ind a0_val a1_ind a1_val v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (tmp_select_a Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_257_34_8 a0_ind a0_val a1_ind a1_val v N i) (or (and (= a0_ind i) (= tmp_select_a a0_val)) (and (= a1_ind i) (= tmp_select_a a1_val)) (and (< i a0_ind) (< i a1_ind) (assert_257_34_8 i tmp_select_a a1_ind a1_val v N i) (< i a0_ind) (assert_257_34_8 i tmp_select_a a0_ind a0_val v N i)) (and (< a0_ind i) (< i a1_ind) (< i a1_ind) (assert_257_34_8 i tmp_select_a a1_ind a1_val v N i) (< a0_ind i) (assert_257_34_8 a0_ind a0_val i tmp_select_a v N i)) (and (< a1_ind i) (< a1_ind i) (assert_257_34_8 a1_ind a1_val i tmp_select_a v N i) (< a0_ind i) (assert_257_34_8 a0_ind a0_val i tmp_select_a v N i)))) (= (mod tmp_select_a 2) 1))))
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assert_257_34_8 a0_ind a0_val a1_ind a1_val v N i)) (assign_266_35_8 a0_ind a0_val a1_ind a1_val v N i))))
;
;(assign)  i := (i+1)
(assert (forall ((N Int) (a0_ind Int) (a0_val Int) (a1_ind Int) (a1_val Int) (i Int) (v Int)) (=> (and (< a0_ind a1_ind) (assign_266_35_8 a0_ind a0_val a1_ind a1_val v N i)) (while_269_31_6 a0_ind a0_val a1_ind a1_val v N (+ i 1)))))
(check-sat)