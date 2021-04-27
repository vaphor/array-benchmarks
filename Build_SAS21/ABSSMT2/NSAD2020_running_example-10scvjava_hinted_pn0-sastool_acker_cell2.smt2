
(set-logic HORN)
(declare-rel assign_35_8_266_abs (Int Int Int Int Int Int Int))
(declare-rel assert_34_8_257_abs (Int Int Int Int Int Int Int))
(declare-rel assert_33_8_240_abs (Int Int Int Int Int Int Int))
(declare-rel while_31_6_269_abs (Int Int Int Int Int Int Int))
(declare-rel assign_30_6_200_abs (Int Int Int Int Int Int Int))
(declare-rel assign_26_8_191_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_25_8_182_abs (Int Int Int Int Int Int Int))
(declare-rel assert_24_8_165_abs (Int Int Int Int Int Int Int))
(declare-rel while_22_6_194_abs (Int Int Int Int Int Int Int))
(declare-rel assign_21_6_125_abs (Int Int Int Int Int Int Int))
(declare-rel assign_17_8_116_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_16_8_107_abs (Int Int Int Int Int Int Int))
(declare-rel assign_15_8_94_abs (Int Int Int Int Int Int Int))
(declare-rel assert_14_8_82_abs (Int Int Int Int Int Int Int))
(declare-rel while_12_6_119_abs (Int Int Int Int Int Int Int))
(declare-rel assign_11_6_42_abs (Int Int Int Int Int Int Int))
(declare-rel assign_8_6_36_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i2 vacker_0 i1 vacker_0 v N i))))
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (start_abs i1 vacker_0 i1 vacker_0 v N i) (start_abs i1 vacker_0 i2 vacker_0 v N i) (start_abs i2 vacker_0 i1 vacker_0 v N i) (start_abs i2 vacker_0 i2 vacker_0 v N i)) (assign_8_6_36_abs i2 vacker_0 i1 vacker_0 v N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_8_6_36_abs i1 vacker_0 i1 vacker_0 v N i) (assign_8_6_36_abs i1 vacker_0 i2 vacker_0 v N i) (assign_8_6_36_abs i2 vacker_0 i1 vacker_0 v N i) (assign_8_6_36_abs i2 vacker_0 i2 vacker_0 v N i)) (assign_11_6_42_abs i2 vacker_0 i1 vacker_0 v rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_11_6_42_abs i1 vacker_0 i1 vacker_0 v N i) (assign_11_6_42_abs i1 vacker_0 i2 vacker_0 v N i) (assign_11_6_42_abs i2 vacker_0 i1 vacker_0 v N i) (assign_11_6_42_abs i2 vacker_0 i2 vacker_0 v N i)) (while_12_6_119_abs i2 vacker_0 i1 vacker_0 v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_12_6_119_abs i1 vacker_0 i1 vacker_0 v N i) (while_12_6_119_abs i1 vacker_0 i2 vacker_0 v N i) (while_12_6_119_abs i2 vacker_0 i1 vacker_0 v N i) (while_12_6_119_abs i2 vacker_0 i2 vacker_0 v N i) (< i N)) (assert_14_8_82_abs i2 vacker_0 i1 vacker_0 v N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_12_6_119_abs i1 vacker_0 i1 vacker_0 v N i) (while_12_6_119_abs i1 vacker_0 i2 vacker_0 v N i) (while_12_6_119_abs i2 vacker_0 i1 vacker_0 v N i) (while_12_6_119_abs i2 vacker_0 i2 vacker_0 v N i) (not (< i N))) (assign_21_6_125_abs i2 vacker_0 i1 vacker_0 v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (acker Int)) (=> (and (assert_14_8_82_abs k acker k acker v N i) (<= 0 k) (< k i)) (= 0 (mod acker 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_14_8_82_abs i1 vacker_0 i1 vacker_0 v N i) (assert_14_8_82_abs i1 vacker_0 i2 vacker_0 v N i) (assert_14_8_82_abs i2 vacker_0 i1 vacker_0 v N i) (assert_14_8_82_abs i2 vacker_0 i2 vacker_0 v N i)) (assign_15_8_94_abs i2 vacker_0 i1 vacker_0 v N i))))
;
;(assign)  v := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_15_8_94_abs i1 vacker_0 i1 vacker_0 v N i) (assign_15_8_94_abs i1 vacker_0 i2 vacker_0 v N i) (assign_15_8_94_abs i2 vacker_0 i1 vacker_0 v N i) (assign_15_8_94_abs i2 vacker_0 i2 vacker_0 v N i)) (arrayassign_16_8_107_abs i2 vacker_0 i1 vacker_0 rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (arrayassign_16_8_107_abs i1 vacker_0 i1 vacker_0 v N i) (arrayassign_16_8_107_abs i1 vacker_0 i2 vacker_0 v N i) (arrayassign_16_8_107_abs i2 vacker_0 i1 vacker_0 v N i) (arrayassign_16_8_107_abs i2 vacker_0 i2 vacker_0 v N i)) (assign_17_8_116_abs i2 (ite (= i i2) (* v 2) vacker_0) i1 (ite (= i i1) (* v 2) vacker_0) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_17_8_116_abs i1 vacker_0 i1 vacker_0 v N i) (assign_17_8_116_abs i1 vacker_0 i2 vacker_0 v N i) (assign_17_8_116_abs i2 vacker_0 i1 vacker_0 v N i) (assign_17_8_116_abs i2 vacker_0 i2 vacker_0 v N i)) (while_12_6_119_abs i2 vacker_0 i1 vacker_0 v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_21_6_125_abs i1 vacker_0 i1 vacker_0 v N i) (assign_21_6_125_abs i1 vacker_0 i2 vacker_0 v N i) (assign_21_6_125_abs i2 vacker_0 i1 vacker_0 v N i) (assign_21_6_125_abs i2 vacker_0 i2 vacker_0 v N i)) (while_22_6_194_abs i2 vacker_0 i1 vacker_0 v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_22_6_194_abs i1 vacker_0 i1 vacker_0 v N i) (while_22_6_194_abs i1 vacker_0 i2 vacker_0 v N i) (while_22_6_194_abs i2 vacker_0 i1 vacker_0 v N i) (while_22_6_194_abs i2 vacker_0 i2 vacker_0 v N i) (< i N)) (assert_24_8_165_abs i2 vacker_0 i1 vacker_0 v N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_22_6_194_abs i1 vacker_0 i1 vacker_0 v N i) (while_22_6_194_abs i1 vacker_0 i2 vacker_0 v N i) (while_22_6_194_abs i2 vacker_0 i1 vacker_0 v N i) (while_22_6_194_abs i2 vacker_0 i2 vacker_0 v N i) (not (< i N))) (assign_30_6_200_abs i2 vacker_0 i1 vacker_0 v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (acker Int)) (=> (and (assert_24_8_165_abs k acker k acker v N i) (<= 0 k) (< k i)) (= 1 (mod acker 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_24_8_165_abs i1 vacker_0 i1 vacker_0 v N i) (assert_24_8_165_abs i1 vacker_0 i2 vacker_0 v N i) (assert_24_8_165_abs i2 vacker_0 i1 vacker_0 v N i) (assert_24_8_165_abs i2 vacker_0 i2 vacker_0 v N i)) (arrayassign_25_8_182_abs i2 vacker_0 i1 vacker_0 v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ( (i Int) (N Int) (v Int) (vacker_2 Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i i1) (= vacker_0 vacker_1)) (=> (= i i2) (= vacker_0 vacker_2)) (=> (= i1 i2) (= vacker_1 vacker_2)) (arrayassign_25_8_182_abs i vacker_0 i vacker_0 v N i) (arrayassign_25_8_182_abs i vacker_0 i1 vacker_0 v N i) (arrayassign_25_8_182_abs i vacker_0 i2 vacker_0 v N i) (arrayassign_25_8_182_abs i1 vacker_0 i vacker_0 v N i) (arrayassign_25_8_182_abs i1 vacker_0 i1 vacker_0 v N i) (arrayassign_25_8_182_abs i1 vacker_0 i2 vacker_0 v N i) (arrayassign_25_8_182_abs i2 vacker_0 i vacker_0 v N i) (arrayassign_25_8_182_abs i2 vacker_0 i1 vacker_0 v N i) (arrayassign_25_8_182_abs i2 vacker_0 i2 vacker_0 v N i)) (assign_26_8_191_abs i2 (ite (= i i2) (+ vacker_0 1) vacker_0) i1 (ite (= i i1) (+ vacker_0 1) vacker_0) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_26_8_191_abs i1 vacker_0 i1 vacker_0 v N i) (assign_26_8_191_abs i1 vacker_0 i2 vacker_0 v N i) (assign_26_8_191_abs i2 vacker_0 i1 vacker_0 v N i) (assign_26_8_191_abs i2 vacker_0 i2 vacker_0 v N i)) (while_22_6_194_abs i2 vacker_0 i1 vacker_0 v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_30_6_200_abs i1 vacker_0 i1 vacker_0 v N i) (assign_30_6_200_abs i1 vacker_0 i2 vacker_0 v N i) (assign_30_6_200_abs i2 vacker_0 i1 vacker_0 v N i) (assign_30_6_200_abs i2 vacker_0 i2 vacker_0 v N i)) (while_31_6_269_abs i2 vacker_0 i1 vacker_0 v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_31_6_269_abs i1 vacker_0 i1 vacker_0 v N i) (while_31_6_269_abs i1 vacker_0 i2 vacker_0 v N i) (while_31_6_269_abs i2 vacker_0 i1 vacker_0 v N i) (while_31_6_269_abs i2 vacker_0 i2 vacker_0 v N i) (< i N)) (assert_33_8_240_abs i2 vacker_0 i1 vacker_0 v N i))))
(assert (forall ( (vacker_1 Int) (vacker_0 Int) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (while_31_6_269_abs i1 vacker_0 i1 vacker_0 v N i) (while_31_6_269_abs i1 vacker_0 i2 vacker_0 v N i) (while_31_6_269_abs i2 vacker_0 i1 vacker_0 v N i) (while_31_6_269_abs i2 vacker_0 i2 vacker_0 v N i) (not (< i N))) (end_abs i2 vacker_0 i1 vacker_0 v N i))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (acker Int)) (=> (and (assert_33_8_240_abs k acker k acker v N i) (<= 0 k) (< k N)) (= 1 (mod acker 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_33_8_240_abs i1 vacker_0 i1 vacker_0 v N i) (assert_33_8_240_abs i1 vacker_0 i2 vacker_0 v N i) (assert_33_8_240_abs i2 vacker_0 i1 vacker_0 v N i) (assert_33_8_240_abs i2 vacker_0 i2 vacker_0 v N i)) (assert_34_8_257_abs i2 vacker_0 i1 vacker_0 v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ( (i Int) (N Int) (v Int) (acker Int)) (=> (assert_34_8_257_abs i acker i acker v N i) (= 1 (mod acker 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assert_34_8_257_abs i1 vacker_0 i1 vacker_0 v N i) (assert_34_8_257_abs i1 vacker_0 i2 vacker_0 v N i) (assert_34_8_257_abs i2 vacker_0 i1 vacker_0 v N i) (assert_34_8_257_abs i2 vacker_0 i2 vacker_0 v N i)) (assign_35_8_266_abs i2 vacker_0 i1 vacker_0 v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= i1 i2) (= vacker_0 vacker_1)) (assign_35_8_266_abs i1 vacker_0 i1 vacker_0 v N i) (assign_35_8_266_abs i1 vacker_0 i2 vacker_0 v N i) (assign_35_8_266_abs i2 vacker_0 i1 vacker_0 v N i) (assign_35_8_266_abs i2 vacker_0 i2 vacker_0 v N i)) (while_31_6_269_abs i2 vacker_0 i1 vacker_0 v N (+ i 1)))))
(check-sat)