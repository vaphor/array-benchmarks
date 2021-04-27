
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
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker size k i)))
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 size k i) (assign_37_9_1_abs i2 acker i1 acker1 size k i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_37_9_1_abs i2 acker i1 acker1 size k i) (assign_49_10_1_abs i2 acker i1 acker1 size k 0))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_49_10_1_abs i2 acker i1 acker1 size k i) (while_83_12_1_abs i2 acker i1 acker1 rnd k i))))
;
;(while)   while((i<size))
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_83_12_1_abs i2 acker1 i1 acker size k i) (< i size)) (arrayassign_71_13_5_abs i2 acker1 i1 acker size k i))))
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_83_12_1_abs i2 acker1 i1 acker size k i) (not (< i size))) (assign_89_17_1_abs i2 acker1 i1 acker size k i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (k Int) (size Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_71_13_5_abs i2 acker i vacker_0 size k i) (arrayassign_71_13_5_abs i2 acker i1 vacker_0 size k i)) (assign_80_14_5_abs i2 (ite (= i i2) vacker_0 acker) i1 vacker_0 size k i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_80_14_5_abs i2 acker i1 acker1 size k i) (while_83_12_1_abs i2 acker i1 acker1 size k (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_89_17_1_abs i2 acker i1 acker1 size k i) (while_129_18_1_abs i2 acker i1 acker1 size k 0))))
;
;(while)   while((i<size))
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_129_18_1_abs i2 acker1 i1 acker size k i) (< i size)) (arrayassign_117_19_5_abs i2 acker1 i1 acker size k i))))
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_129_18_1_abs i2 acker1 i1 acker size k i) (not (< i size))) (assign_147_23_1_abs i2 acker1 i1 acker size k i))))
;
;(aassign) a[i] := a_copy[((size-i)-1)]
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= (- (- size i) 1) i2) (= vacker_0 vacker_1)) (arrayassign_117_19_5_abs (- (- size i) 1) vacker_0 i1 acker1 size k i) (arrayassign_117_19_5_abs i2 vacker_0 i1 acker1 size k i)) (assign_126_20_5_abs i2 vacker_0 i1 (ite (= i i1) vacker_0 acker1) size k i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_126_20_5_abs i2 acker i1 acker1 size k i) (while_129_18_1_abs i2 acker i1 acker1 size k (+ i 1)))))
;
;(assign)  k := Support.random(0, (size+1))
(assert (forall ( (rnd Int) (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (assign_147_23_1_abs i2 acker1 i1 acker size k i) (>= rnd 0) (< rnd (+ size 1))) (assert_171_24_1_abs i2 acker1 i1 acker size rnd i))))
;
;(assert)  (a_copy[((size-1)-k)]==a[k])
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int)) (=> (assert_171_24_1_abs (- (- size 1) k) acker k acker1 size k i) (= acker acker1))))
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_171_24_1_abs i2 acker i1 acker1 size k i) (end_abs i2 acker i1 acker1 size k i))))
(check-sat)
