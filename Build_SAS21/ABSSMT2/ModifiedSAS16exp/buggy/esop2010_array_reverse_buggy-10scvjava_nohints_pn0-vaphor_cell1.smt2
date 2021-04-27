;Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(set-logic HORN)
(declare-fun assert_24_1_171 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_23_1_147 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_20_5_126 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_19_5_117 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_18_1_129 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_17_1_89 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_14_5_80 (Int Int Int Int Int Int Int) Bool)
(declare-fun arrayassign_13_5_71 (Int Int Int Int Int Int Int) Bool)
(declare-fun while_12_1_83 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_10_1_49 (Int Int Int Int Int Int Int) Bool)
(declare-fun assign_9_1_37 (Int Int Int Int Int Int Int) Bool)
(declare-fun end (Int Int Int Int Int Int Int) Bool)
(declare-fun start (Int Int Int Int Int Int Int) Bool)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (start a_copy_ind a_copy_val a_ind a_val size k i)))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (start a_copy_ind a_copy_val a_ind a_val size k i) (assign_9_1_37 a_copy_ind a_copy_val a_ind a_val size k i))))
;
;(assign)  i := 0
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (assign_9_1_37 a_copy_ind a_copy_val a_ind a_val size k i) (assign_10_1_49 a_copy_ind a_copy_val a_ind a_val size k 0))))
;
;(assign)  size := Support.random()
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (rnd Int) (size Int)) (=> (assign_10_1_49 a_copy_ind a_copy_val a_ind a_val size k i) (while_12_1_83 a_copy_ind a_copy_val a_ind a_val rnd k i))))
;
;(while)   while((i<size))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (and (while_12_1_83 a_copy_ind a_copy_val a_ind a_val size k i) (< i size)) (arrayassign_13_5_71 a_copy_ind a_copy_val a_ind a_val size k i))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (and (while_12_1_83 a_copy_ind a_copy_val a_ind a_val size k i) (not (< i size))) (assign_17_1_89 a_copy_ind a_copy_val a_ind a_val size k i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int) (tmp_select_a Int) (tmp_store_a_copy_ind Int) (tmp_store_a_copy_val Int)) (=> (and (arrayassign_13_5_71 a_copy_ind a_copy_val a_ind a_val size k i) (or (and (= a_ind i) (= tmp_select_a a_val)) (and (< i a_ind) (arrayassign_13_5_71 a_copy_ind a_copy_val i tmp_select_a size k i)) (and (< a_ind i) (arrayassign_13_5_71 a_copy_ind a_copy_val i tmp_select_a size k i))) (= tmp_store_a_copy_ind a_copy_ind) (or (and (= a_copy_ind i) (= tmp_store_a_copy_val tmp_select_a)) (and (not (= a_copy_ind i)) (= tmp_store_a_copy_val a_copy_val)))) (assign_14_5_80 tmp_store_a_copy_ind tmp_store_a_copy_val a_ind a_val size k i))))
;
;(assign)  i := (i+1)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (assign_14_5_80 a_copy_ind a_copy_val a_ind a_val size k i) (while_12_1_83 a_copy_ind a_copy_val a_ind a_val size k (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (assign_17_1_89 a_copy_ind a_copy_val a_ind a_val size k i) (while_18_1_129 a_copy_ind a_copy_val a_ind a_val size k 0))))
;
;(while)   while((i<size))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (and (while_18_1_129 a_copy_ind a_copy_val a_ind a_val size k i) (< i size)) (arrayassign_19_5_117 a_copy_ind a_copy_val a_ind a_val size k i))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (and (while_18_1_129 a_copy_ind a_copy_val a_ind a_val size k i) (not (< i size))) (assign_23_1_147 a_copy_ind a_copy_val a_ind a_val size k i))))
;
;(aassign) a[i] := a_copy[((size-i)-1)]
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int) (tmp_select_a_copy Int) (tmp_store_a_ind Int) (tmp_store_a_val Int)) (=> (and (arrayassign_19_5_117 a_copy_ind a_copy_val a_ind a_val size k i) (or (and (= a_copy_ind (- (- size i) 1)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- size i) 1) a_copy_ind) (arrayassign_19_5_117 (- (- size i) 1) tmp_select_a_copy a_ind a_val size k i)) (and (< a_copy_ind (- (- size i) 1)) (arrayassign_19_5_117 (- (- size i) 1) tmp_select_a_copy a_ind a_val size k i))) (= tmp_store_a_ind a_ind) (or (and (= a_ind i) (= tmp_store_a_val tmp_select_a_copy)) (and (not (= a_ind i)) (= tmp_store_a_val a_val)))) (assign_20_5_126 a_copy_ind a_copy_val tmp_store_a_ind tmp_store_a_val size k i))))
;
;(assign)  i := (i+1)
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (assign_20_5_126 a_copy_ind a_copy_val a_ind a_val size k i) (while_18_1_129 a_copy_ind a_copy_val a_ind a_val size k (+ i 1)))))
;
;(assign)  k := Support.random(0, (size+1))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (rnd Int) (size Int)) (=> (and (assign_23_1_147 a_copy_ind a_copy_val a_ind a_val size k i) (>= rnd 0) (< rnd (+ size 1))) (assert_24_1_171 a_copy_ind a_copy_val a_ind a_val size rnd i))))
;
;(assert)  (a_copy[((size-1)-k)]==a[k])
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int) (tmp_select_a Int) (tmp_select_a_copy Int)) (=> (and (assert_24_1_171 a_copy_ind a_copy_val a_ind a_val size k i) (or (and (= a_copy_ind (- (- size 1) k)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- size 1) k) a_copy_ind) (assert_24_1_171 (- (- size 1) k) tmp_select_a_copy a_ind a_val size k i)) (and (< a_copy_ind (- (- size 1) k)) (assert_24_1_171 (- (- size 1) k) tmp_select_a_copy a_ind a_val size k i))) (or (and (= a_ind k) (= tmp_select_a a_val)) (and (< k a_ind) (assert_24_1_171 a_copy_ind a_copy_val k tmp_select_a size k i) (or (and (= a_copy_ind (- (- size 1) k)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- size 1) k) a_copy_ind) (assert_24_1_171 (- (- size 1) k) tmp_select_a_copy k tmp_select_a size k i)) (and (< a_copy_ind (- (- size 1) k)) (assert_24_1_171 (- (- size 1) k) tmp_select_a_copy k tmp_select_a size k i)))) (and (< a_ind k) (assert_24_1_171 a_copy_ind a_copy_val k tmp_select_a size k i) (or (and (= a_copy_ind (- (- size 1) k)) (= tmp_select_a_copy a_copy_val)) (and (< (- (- size 1) k) a_copy_ind) (assert_24_1_171 (- (- size 1) k) tmp_select_a_copy k tmp_select_a size k i)) (and (< a_copy_ind (- (- size 1) k)) (assert_24_1_171 (- (- size 1) k) tmp_select_a_copy k tmp_select_a size k i)))))) (= tmp_select_a_copy tmp_select_a))))
(assert (forall ((a_copy_ind Int) (a_copy_val Int) (a_ind Int) (a_val Int) (i Int) (k Int) (size Int)) (=> (assert_24_1_171 a_copy_ind a_copy_val a_ind a_val size k i) (end a_copy_ind a_copy_val a_ind a_val size k i))))
(check-sat)
