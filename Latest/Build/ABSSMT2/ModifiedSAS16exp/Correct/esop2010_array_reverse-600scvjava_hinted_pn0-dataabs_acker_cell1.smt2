
(set-logic HORN)
(declare-rel assign_29_5_287_abs (Int Int Int Int Int Int))
(declare-rel assert_28_5_278_abs (Int Int Int Int Int Int))
(declare-rel assert_27_12_254_abs (Int Int Int Int Int Int))
(declare-rel while_26_1_290_abs (Int Int Int Int Int Int))
(declare-rel assign_25_1_210_abs (Int Int Int Int Int Int))
(declare-rel assign_22_5_201_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_21_5_192_abs (Int Int Int Int Int Int))
(declare-rel assert_20_12_172_abs (Int Int Int Int Int Int))
(declare-rel while_19_1_204_abs (Int Int Int Int Int Int))
(declare-rel assign_18_1_128_abs (Int Int Int Int Int Int))
(declare-rel assign_15_5_119_abs (Int Int Int Int Int Int))
(declare-rel arrayassign_14_5_110_abs (Int Int Int Int Int Int))
(declare-rel assert_13_12_96_abs (Int Int Int Int Int Int))
(declare-rel while_12_1_122_abs (Int Int Int Int Int Int))
(declare-rel assign_11_8_58_abs (Int Int Int Int Int Int))
(declare-rel assign_9_1_52_abs (Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int));Number of predicates (nodes) = 18
;Number of variables = 4
;Number of clauses = 25
;
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker N i)))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 N i) (assign_9_1_52_abs i2 acker i1 acker1 N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_9_1_52_abs i2 acker i1 acker1 N i) (assign_11_8_58_abs i2 acker i1 acker1 rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_11_8_58_abs i2 acker i1 acker1 N i) (while_12_1_122_abs i2 acker i1 acker1 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_122_abs i2 acker1 i1 acker N i) (< i N)) (assert_13_12_96_abs i2 acker1 i1 acker N i))))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_12_1_122_abs i2 acker1 i1 acker N i) (not (< i N))) (assign_18_1_128_abs i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==a[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_13_12_96_abs k acker k acker1 N i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_13_12_96_abs i2 acker i1 acker1 N i) (arrayassign_14_5_110_abs i2 acker i1 acker1 N i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (N Int) (vacker_1 Int) (vacker_0 Int) (acker Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_14_5_110_abs i2 acker i vacker_0 N i) (arrayassign_14_5_110_abs i2 acker i1 vacker_1 N i)) (assign_15_5_119_abs i2 (ite (= i i2) vacker_0 acker) i1 vacker_1 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_15_5_119_abs i2 acker i1 acker1 N i) (while_12_1_122_abs i2 acker i1 acker1 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_18_1_128_abs i2 acker i1 acker1 N i) (while_19_1_204_abs i2 acker i1 acker1 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_19_1_204_abs i2 acker1 i1 acker N i) (< i N)) (assert_20_12_172_abs i2 acker1 i1 acker N i))))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_19_1_204_abs i2 acker1 i1 acker N i) (not (< i N))) (assign_25_1_210_abs i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_20_12_172_abs (- (- N k) 1) acker k acker1 N i) (<= 0 k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_20_12_172_abs i2 acker i1 acker1 N i) (arrayassign_21_5_192_abs i2 acker i1 acker1 N i))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ( (i Int) (N Int) (acker1 Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= (- (- N i) 1) i2) (= vacker_0 vacker_1)) (arrayassign_21_5_192_abs (- (- N i) 1) vacker_0 i1 acker1 N i) (arrayassign_21_5_192_abs i2 vacker_1 i1 acker1 N i)) (assign_22_5_201_abs i2 vacker_1 i1 (ite (= i i1) vacker_0 acker1) N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_22_5_201_abs i2 acker i1 acker1 N i) (while_19_1_204_abs i2 acker i1 acker1 N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_25_1_210_abs i2 acker i1 acker1 N i) (while_26_1_290_abs i2 acker i1 acker1 N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_26_1_290_abs i2 acker1 i1 acker N i) (< i N)) (assert_27_12_254_abs i2 acker1 i1 acker N i))))
(assert (forall ( (acker1 Int) (acker Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_26_1_290_abs i2 acker1 i1 acker N i) (not (< i N))) (end_abs i2 acker1 i1 acker N i))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ( (k Int) (i Int) (N Int) (acker1 Int) (acker Int)) (=> (and (assert_27_12_254_abs (- (- N k) 1) acker k acker1 N i) (<= 0 k) (< k N)) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_27_12_254_abs i2 acker i1 acker1 N i) (assert_28_5_278_abs i2 acker i1 acker1 N i))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int)) (=> (assert_28_5_278_abs (- (- N i) 1) acker i acker1 N i) (= acker acker1))))
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_28_5_278_abs i2 acker i1 acker1 N i) (assign_29_5_287_abs i2 acker i1 acker1 N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_29_5_287_abs i2 acker i1 acker1 N i) (while_26_1_290_abs i2 acker i1 acker1 N (+ i 1)))))
(check-sat)
