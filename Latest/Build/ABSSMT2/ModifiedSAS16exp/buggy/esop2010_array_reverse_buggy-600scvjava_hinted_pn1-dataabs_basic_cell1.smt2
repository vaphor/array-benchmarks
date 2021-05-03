
(set-logic HORN)
(declare-rel assert_171_24_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_147_23_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_126_20_5_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_117_19_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_129_18_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_89_17_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_80_14_5_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_71_13_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_83_12_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_49_10_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_37_9_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a_copy i2) i1 (select a i1) size k i)))
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select a_copy i2) i1 (select a i1) size k i) (assign_37_9_1_abs i2 (select a_copy i2) i1 (select a i1) size k i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_37_9_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (assign_49_10_1_abs i2 (select a_copy i2) i1 (select a i1) size k 0))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_49_10_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (while_83_12_1_abs i2 (select a_copy i2) i1 (select a i1) rnd k i))))
;
;(while)   while((i<size))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_83_12_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (< i size)) (arrayassign_71_13_5_abs i2 (select a_copy i2) i1 (select a i1) size k i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_83_12_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (not (< i size))) (assign_89_17_1_abs i2 (select a_copy i2) i1 (select a i1) size k i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_71_13_5_abs i2 (select a_copy i2) i (select a i) size k i) (arrayassign_71_13_5_abs i2 (select a_copy i2) i1 (select a i1) size k i)) (assign_80_14_5_abs i2 (ite (= i i2) (select a i) (select a_copy i2)) i1 (select a i1) size k i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_80_14_5_abs i2 (select a_copy i2) i1 (select a i1) size k i) (while_83_12_1_abs i2 (select a_copy i2) i1 (select a i1) size k (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_89_17_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (while_129_18_1_abs i2 (select a_copy i2) i1 (select a i1) size k 0))))
;
;(while)   while((i<size))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_129_18_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (< i size)) (arrayassign_117_19_5_abs i2 (select a_copy i2) i1 (select a i1) size k i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_129_18_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (not (< i size))) (assign_147_23_1_abs i2 (select a_copy i2) i1 (select a i1) size k i))))
;
;(aassign) a[i] := a_copy[((size-i)-1)]
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_117_19_5_abs (- (- size i) 1) (select a_copy (- (- size i) 1)) i1 (select a i1) size k i) (arrayassign_117_19_5_abs i2 (select a_copy i2) i1 (select a i1) size k i)) (assign_126_20_5_abs i2 (select a_copy i2) i1 (ite (= i i1) (select a_copy (- (- size i) 1)) (select a i1)) size k i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_126_20_5_abs i2 (select a_copy i2) i1 (select a i1) size k i) (while_129_18_1_abs i2 (select a_copy i2) i1 (select a i1) size k (+ i 1)))))
;
;(assign)  k := Support.random(0, (size+1))
(assert (forall ( (rnd Int) (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (assign_147_23_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (>= rnd 0) (< rnd (+ size 1))) (assert_171_24_1_abs i2 (select a_copy i2) i1 (select a i1) size rnd i))))
;
;(assert)  (a_copy[((size-1)-k)]==a[k])
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (assert_171_24_1_abs (- (- size 1) k) (select a_copy (- (- size 1) k)) k (select a k) size k i) (= (select a k) (select a_copy (- (- size 1) k))))))
(assert (forall ( (i Int) (k Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_171_24_1_abs i2 (select a_copy i2) i1 (select a i1) size k i) (end_abs i2 (select a_copy i2) i1 (select a i1) size k i))))
(check-sat)
