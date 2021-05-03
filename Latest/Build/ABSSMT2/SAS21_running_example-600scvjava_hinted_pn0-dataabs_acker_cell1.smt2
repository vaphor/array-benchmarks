
(set-logic HORN)
(declare-rel assign_32_8_266_abs (Int Int Int Int Int))
(declare-rel assert_31_8_257_abs (Int Int Int Int Int))
(declare-rel assert_30_8_240_abs (Int Int Int Int Int))
(declare-rel while_28_6_269_abs (Int Int Int Int Int))
(declare-rel assign_27_6_200_abs (Int Int Int Int Int))
(declare-rel assign_24_8_191_abs (Int Int Int Int Int))
(declare-rel arrayassign_23_8_182_abs (Int Int Int Int Int))
(declare-rel assert_22_8_165_abs (Int Int Int Int Int))
(declare-rel while_20_6_194_abs (Int Int Int Int Int))
(declare-rel assign_19_6_125_abs (Int Int Int Int Int))
(declare-rel assign_16_8_116_abs (Int Int Int Int Int))
(declare-rel arrayassign_15_8_107_abs (Int Int Int Int Int))
(declare-rel assign_14_8_94_abs (Int Int Int Int Int))
(declare-rel assert_13_8_82_abs (Int Int Int Int Int))
(declare-rel while_11_6_119_abs (Int Int Int Int Int))
(declare-rel assign_10_6_42_abs (Int Int Int Int Int))
(declare-rel assign_8_6_36_abs (Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int));Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(assert (forall ( (acker Int) (v Int) (N Int) (i Int) (i1 Int)) (start_abs i1 acker v N i)))
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (start_abs i1 acker v N i) (assign_8_6_36_abs i1 acker v N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assign_8_6_36_abs i1 acker v N i) (assign_10_6_42_abs i1 acker v rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assign_10_6_42_abs i1 acker v N i) (while_11_6_119_abs i1 acker v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker Int) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_11_6_119_abs i1 acker v N i) (< i N)) (assert_13_8_82_abs i1 acker v N i))))
(assert (forall ( (acker Int) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_11_6_119_abs i1 acker v N i) (not (< i N))) (assign_19_6_125_abs i1 acker v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (acker Int)) (=> (and (assert_13_8_82_abs k acker v N i) (<= 0 k) (< k i)) (= 0 (mod acker 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assert_13_8_82_abs i1 acker v N i) (assign_14_8_94_abs i1 acker v N i))))
;
;(assign)  v := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assign_14_8_94_abs i1 acker v N i) (arrayassign_15_8_107_abs i1 acker rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (arrayassign_15_8_107_abs i1 acker v N i) (assign_16_8_116_abs i1 (ite (= i i1) (* v 2) acker) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assign_16_8_116_abs i1 acker v N i) (while_11_6_119_abs i1 acker v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assign_19_6_125_abs i1 acker v N i) (while_20_6_194_abs i1 acker v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker Int) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_20_6_194_abs i1 acker v N i) (< i N)) (assert_22_8_165_abs i1 acker v N i))))
(assert (forall ( (acker Int) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_20_6_194_abs i1 acker v N i) (not (< i N))) (assign_27_6_200_abs i1 acker v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (acker Int)) (=> (and (assert_22_8_165_abs k acker v N i) (<= 0 k) (< k i)) (= 1 (mod acker 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assert_22_8_165_abs i1 acker v N i) (arrayassign_23_8_182_abs i1 acker v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (arrayassign_23_8_182_abs i vacker_0 v N i) (arrayassign_23_8_182_abs i1 vacker_1 v N i)) (assign_24_8_191_abs i1 (ite (= i i1) (+ vacker_0 1) vacker_1) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assign_24_8_191_abs i1 acker v N i) (while_20_6_194_abs i1 acker v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assign_27_6_200_abs i1 acker v N i) (while_28_6_269_abs i1 acker v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (acker Int) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_28_6_269_abs i1 acker v N i) (< i N)) (assert_30_8_240_abs i1 acker v N i))))
(assert (forall ( (acker Int) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_28_6_269_abs i1 acker v N i) (not (< i N))) (end_abs i1 acker v N i))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (acker Int)) (=> (and (assert_30_8_240_abs k acker v N i) (<= 0 k) (< k N)) (= 1 (mod acker 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assert_30_8_240_abs i1 acker v N i) (assert_31_8_257_abs i1 acker v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ( (i Int) (N Int) (v Int) (acker Int)) (=> (assert_31_8_257_abs i acker v N i) (= 1 (mod acker 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assert_31_8_257_abs i1 acker v N i) (assign_32_8_266_abs i1 acker v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (acker Int) (i1 Int)) (=> (assign_32_8_266_abs i1 acker v N i) (while_28_6_269_abs i1 acker v N (+ i 1)))))
(check-sat)
