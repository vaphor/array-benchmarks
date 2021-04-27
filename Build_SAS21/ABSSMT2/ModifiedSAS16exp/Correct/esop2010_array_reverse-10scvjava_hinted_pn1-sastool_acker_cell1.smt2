
(set-logic HORN)
(declare-rel assign_287_29_5_abs (Int Int Int Int Int Int))
(declare-rel assert_278_28_5_abs (Int Int Int Int Int Int))
(declare-rel assert_254_27_12_abs (Int Int Int Int Int Int))
(declare-rel while_290_26_1_abs (Int Int Int Int Int Int))
(declare-rel assign_210_25_1_abs (Int Int Int Int Int Int))
(declare-rel assign_201_22_5_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_192_21_5_abs (Int Int Int Int Int Int))
(declare-rel assert_172_20_12_abs (Int Int Int Int Int Int))
(declare-rel while_204_19_1_abs (Int Int Int Int Int Int))
(declare-rel assign_128_18_1_abs (Int Int Int Int Int Int))
(declare-rel assign_119_15_5_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_110_14_5_abs (Int Int Int Int Int Int))
(declare-rel assert_96_13_12_abs (Int Int Int Int Int Int))
(declare-rel while_122_12_1_abs (Int Int Int Int Int Int))
(declare-rel assign_58_11_8_abs (Int Int Int Int Int Int))
(declare-rel assign_52_9_1_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 18
;Number of variables = 4
;Number of clauses = 25
;
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker N i)))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 N i) (assign_52_9_1_abs i2 acker i1 acker1 N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_52_9_1_abs i2 acker i1 acker1 N i) (assign_58_11_8_abs i2 acker i1 acker1 rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_58_11_8_abs i2 acker i1 acker1 N i) (while_122_12_1_abs i2 acker i1 acker1 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_122_12_1_abs i2 acker1 i1 acker N i) (< i N)) (assert_96_13_12_abs i2 acker1 i1 acker N i))))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_122_12_1_abs i2 acker1 i1 acker N i) (not (< i N))) (assign_128_18_1_abs i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==a[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_96_13_12_abs k acker k acker1 N i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_96_13_12_abs i2 acker i1 acker1 N i) (arrayassign_110_14_5_abs i2 acker i1 acker1 N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_110_14_5_abs i2 acker i vacker_0 N i) (arrayassign_110_14_5_abs i2 acker i1 vacker_0 N i)) (assign_119_15_5_abs i2 (ite (= i i2) vacker_0 acker) i1 vacker_0 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_119_15_5_abs i2 acker i1 acker1 N i) (while_122_12_1_abs i2 acker i1 acker1 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_128_18_1_abs i2 acker i1 acker1 N i) (while_204_19_1_abs i2 acker i1 acker1 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_204_19_1_abs i2 acker1 i1 acker N i) (< i N)) (assert_172_20_12_abs i2 acker1 i1 acker N i))))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_204_19_1_abs i2 acker1 i1 acker N i) (not (< i N))) (assign_210_25_1_abs i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_172_20_12_abs (- (- N k) 1) acker k acker1 N i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_172_20_12_abs i2 acker i1 acker1 N i) (arrayassign_192_21_5_abs i2 acker i1 acker1 N i))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ( (i Int) (N Int) (acker1 Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= (- (- N i) 1) i2) (= vacker_0 vacker_1)) (arrayassign_192_21_5_abs (- (- N i) 1) vacker_0 i1 acker1 N i) (arrayassign_192_21_5_abs i2 vacker_0 i1 acker1 N i)) (assign_201_22_5_abs i2 vacker_0 i1 (ite (= i i1) vacker_0 acker1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_201_22_5_abs i2 acker i1 acker1 N i) (while_204_19_1_abs i2 acker i1 acker1 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_210_25_1_abs i2 acker i1 acker1 N i) (while_290_26_1_abs i2 acker i1 acker1 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_290_26_1_abs i2 acker1 i1 acker N i) (< i N)) (assert_254_27_12_abs i2 acker1 i1 acker N i))))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_290_26_1_abs i2 acker1 i1 acker N i) (not (< i N))) (end_abs i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_254_27_12_abs (- (- N k) 1) acker k acker1 N i) (<= 0 k) (< k N)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_254_27_12_abs i2 acker i1 acker1 N i) (assert_278_28_5_abs i2 acker i1 acker1 N i))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int)) (=> (assert_278_28_5_abs (- (- N i) 1) acker i acker1 N i) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_278_28_5_abs i2 acker i1 acker1 N i) (assign_287_29_5_abs i2 acker i1 acker1 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_287_29_5_abs i2 acker i1 acker1 N i) (while_290_26_1_abs i2 acker i1 acker1 N (+ i 1)))))
(check-sat)
