
(set-logic HORN)
(declare-rel assert_24_1_171_abs (Int Int Int Int Int Int Int))
(declare-rel assign_23_1_147_abs (Int Int Int Int Int Int Int))
(declare-rel assign_20_5_126_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_19_5_117_abs (Int Int Int Int Int Int Int))
(declare-rel while_18_1_129_abs (Int Int Int Int Int Int Int))
(declare-rel assign_17_1_89_abs (Int Int Int Int Int Int Int))
(declare-rel assign_14_5_80_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_13_5_71_abs (Int Int Int Int Int Int Int))
(declare-rel while_12_1_83_abs (Int Int Int Int Int Int Int))
(declare-rel assign_10_1_49_abs (Int Int Int Int Int Int Int))
(declare-rel assign_9_1_37_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker size k i)))
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 size k i) (assign_9_1_37_abs i2 acker i1 acker1 size k i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_9_1_37_abs i2 acker i1 acker1 size k i) (assign_10_1_49_abs i2 acker i1 acker1 size k 0))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_10_1_49_abs i2 acker i1 acker1 size k i) (while_12_1_83_abs i2 acker i1 acker1 rnd k i))))
;
;(while)   while((i<size))
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_83_abs i2 acker1 i1 acker size k i) (< i size)) (arrayassign_13_5_71_abs i2 acker1 i1 acker size k i))))
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_83_abs i2 acker1 i1 acker size k i) (not (< i size))) (assign_17_1_89_abs i2 acker1 i1 acker size k i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (k Int) (size Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_13_5_71_abs i2 acker i vacker_0 size k i) (arrayassign_13_5_71_abs i2 acker i1 vacker_1 size k i)) (assign_14_5_80_abs i2 (ite (= i i2) vacker_0 acker) i1 vacker_1 size k i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_14_5_80_abs i2 acker i1 acker1 size k i) (while_12_1_83_abs i2 acker i1 acker1 size k (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_17_1_89_abs i2 acker i1 acker1 size k i) (while_18_1_129_abs i2 acker i1 acker1 size k 0))))
;
;(while)   while((i<size))
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_18_1_129_abs i2 acker1 i1 acker size k i) (< i size)) (arrayassign_19_5_117_abs i2 acker1 i1 acker size k i))))
(assert (forall ( (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_18_1_129_abs i2 acker1 i1 acker size k i) (not (< i size))) (assign_23_1_147_abs i2 acker1 i1 acker size k i))))
;
;(aassign) a[i] := a_copy[((size-i)-1)]
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= (- (- size i) 1) i2) (= vacker_0 vacker_1)) (arrayassign_19_5_117_abs (- (- size i) 1) vacker_0 i1 acker1 size k i) (arrayassign_19_5_117_abs i2 vacker_1 i1 acker1 size k i)) (assign_20_5_126_abs i2 vacker_1 i1 (ite (= i i1) vacker_0 acker1) size k i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_20_5_126_abs i2 acker i1 acker1 size k i) (while_18_1_129_abs i2 acker i1 acker1 size k (+ i 1)))))
;
;(assign)  k := Support.random(0, (size+1))
(assert (forall ( (rnd Int) (acker1 Int) (acker Int) (size Int) (k Int) (i Int) (i1 Int) (i2 Int)) (=> (and (assign_23_1_147_abs i2 acker1 i1 acker size k i) (>= rnd 0) (< rnd (+ size 1))) (assert_24_1_171_abs i2 acker1 i1 acker size rnd i))))
;
;(assert)  (a_copy[((size-1)-k)]==a[k])
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int)) (=> (assert_24_1_171_abs (- (- size 1) k) acker k acker1 size k i) (= acker acker1))))
(assert (forall ( (i Int) (k Int) (size Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_24_1_171_abs i2 acker i1 acker1 size k i) (end_abs i2 acker i1 acker1 size k i))))
(check-sat)
