
(set-logic HORN)
(declare-rel assign_266_32_8_abs (Int Int Int Int Int Int Int))
(declare-rel assert_257_31_8_abs (Int Int Int Int Int Int Int))
(declare-rel assert_240_30_8_abs (Int Int Int Int Int Int Int))
(declare-rel while_269_28_6_abs (Int Int Int Int Int Int Int))
(declare-rel assign_200_27_6_abs (Int Int Int Int Int Int Int))
(declare-rel assign_191_24_8_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_182_23_8_abs (Int Int Int Int Int Int Int))
(declare-rel assert_165_22_8_abs (Int Int Int Int Int Int Int))
(declare-rel while_194_20_6_abs (Int Int Int Int Int Int Int))
(declare-rel assign_125_19_6_abs (Int Int Int Int Int Int Int))
(declare-rel assign_116_16_8_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_107_15_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_94_14_8_abs (Int Int Int Int Int Int Int))
(declare-rel assert_82_13_8_abs (Int Int Int Int Int Int Int))
(declare-rel while_119_11_6_abs (Int Int Int Int Int Int Int))
(declare-rel assign_42_10_6_abs (Int Int Int Int Int Int Int))
(declare-rel assign_36_8_6_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a i2) i1 (select a i1) v N i)))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (start_abs i1 (select a i1) i1 (select a i1) v N i) (start_abs i1 (select a i1) i2 (select a i2) v N i) (start_abs i2 (select a i2) i1 (select a i1) v N i) (start_abs i2 (select a i2) i2 (select a i2) v N i)) (assign_36_8_6_abs i2 (select a i2) i1 (select a i1) v N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_36_8_6_abs i1 (select a i1) i1 (select a i1) v N i) (assign_36_8_6_abs i1 (select a i1) i2 (select a i2) v N i) (assign_36_8_6_abs i2 (select a i2) i1 (select a i1) v N i) (assign_36_8_6_abs i2 (select a i2) i2 (select a i2) v N i)) (assign_42_10_6_abs i2 (select a i2) i1 (select a i1) v rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_42_10_6_abs i1 (select a i1) i1 (select a i1) v N i) (assign_42_10_6_abs i1 (select a i1) i2 (select a i2) v N i) (assign_42_10_6_abs i2 (select a i2) i1 (select a i1) v N i) (assign_42_10_6_abs i2 (select a i2) i2 (select a i2) v N i)) (while_119_11_6_abs i2 (select a i2) i1 (select a i1) v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_119_11_6_abs i1 (select a i1) i1 (select a i1) v N i) (while_119_11_6_abs i1 (select a i1) i2 (select a i2) v N i) (while_119_11_6_abs i2 (select a i2) i1 (select a i1) v N i) (while_119_11_6_abs i2 (select a i2) i2 (select a i2) v N i) (< i N)) (assert_82_13_8_abs i2 (select a i2) i1 (select a i1) v N i))))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_119_11_6_abs i1 (select a i1) i1 (select a i1) v N i) (while_119_11_6_abs i1 (select a i1) i2 (select a i2) v N i) (while_119_11_6_abs i2 (select a i2) i1 (select a i1) v N i) (while_119_11_6_abs i2 (select a i2) i2 (select a i2) v N i) (not (< i N))) (assign_125_19_6_abs i2 (select a i2) i1 (select a i1) v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (a (Array Int Int))) (=> (and (assert_82_13_8_abs k (select a k) k (select a k) v N i) (<= 0 k) (< k i)) (= 0 (mod (select a k) 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_82_13_8_abs i1 (select a i1) i1 (select a i1) v N i) (assert_82_13_8_abs i1 (select a i1) i2 (select a i2) v N i) (assert_82_13_8_abs i2 (select a i2) i1 (select a i1) v N i) (assert_82_13_8_abs i2 (select a i2) i2 (select a i2) v N i)) (assign_94_14_8_abs i2 (select a i2) i1 (select a i1) v N i))))
;
;(assign)  v := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_94_14_8_abs i1 (select a i1) i1 (select a i1) v N i) (assign_94_14_8_abs i1 (select a i1) i2 (select a i2) v N i) (assign_94_14_8_abs i2 (select a i2) i1 (select a i1) v N i) (assign_94_14_8_abs i2 (select a i2) i2 (select a i2) v N i)) (arrayassign_107_15_8_abs i2 (select a i2) i1 (select a i1) rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_107_15_8_abs i1 (select a i1) i1 (select a i1) v N i) (arrayassign_107_15_8_abs i1 (select a i1) i2 (select a i2) v N i) (arrayassign_107_15_8_abs i2 (select a i2) i1 (select a i1) v N i) (arrayassign_107_15_8_abs i2 (select a i2) i2 (select a i2) v N i)) (assign_116_16_8_abs i2 (ite (= i i2) (* v 2) (select a i2)) i1 (ite (= i i1) (* v 2) (select a i1)) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_116_16_8_abs i1 (select a i1) i1 (select a i1) v N i) (assign_116_16_8_abs i1 (select a i1) i2 (select a i2) v N i) (assign_116_16_8_abs i2 (select a i2) i1 (select a i1) v N i) (assign_116_16_8_abs i2 (select a i2) i2 (select a i2) v N i)) (while_119_11_6_abs i2 (select a i2) i1 (select a i1) v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_125_19_6_abs i1 (select a i1) i1 (select a i1) v N i) (assign_125_19_6_abs i1 (select a i1) i2 (select a i2) v N i) (assign_125_19_6_abs i2 (select a i2) i1 (select a i1) v N i) (assign_125_19_6_abs i2 (select a i2) i2 (select a i2) v N i)) (while_194_20_6_abs i2 (select a i2) i1 (select a i1) v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_194_20_6_abs i1 (select a i1) i1 (select a i1) v N i) (while_194_20_6_abs i1 (select a i1) i2 (select a i2) v N i) (while_194_20_6_abs i2 (select a i2) i1 (select a i1) v N i) (while_194_20_6_abs i2 (select a i2) i2 (select a i2) v N i) (< i N)) (assert_165_22_8_abs i2 (select a i2) i1 (select a i1) v N i))))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_194_20_6_abs i1 (select a i1) i1 (select a i1) v N i) (while_194_20_6_abs i1 (select a i1) i2 (select a i2) v N i) (while_194_20_6_abs i2 (select a i2) i1 (select a i1) v N i) (while_194_20_6_abs i2 (select a i2) i2 (select a i2) v N i) (not (< i N))) (assign_200_27_6_abs i2 (select a i2) i1 (select a i1) v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (a (Array Int Int))) (=> (and (assert_165_22_8_abs k (select a k) k (select a k) v N i) (<= 0 k) (< k i)) (= 1 (mod (select a k) 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_165_22_8_abs i1 (select a i1) i1 (select a i1) v N i) (assert_165_22_8_abs i1 (select a i1) i2 (select a i2) v N i) (assert_165_22_8_abs i2 (select a i2) i1 (select a i1) v N i) (assert_165_22_8_abs i2 (select a i2) i2 (select a i2) v N i)) (arrayassign_182_23_8_abs i2 (select a i2) i1 (select a i1) v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_182_23_8_abs i (select a i) i (select a i) v N i) (arrayassign_182_23_8_abs i (select a i) i1 (select a i1) v N i) (arrayassign_182_23_8_abs i (select a i) i2 (select a i2) v N i) (arrayassign_182_23_8_abs i1 (select a i1) i (select a i) v N i) (arrayassign_182_23_8_abs i1 (select a i1) i1 (select a i1) v N i) (arrayassign_182_23_8_abs i1 (select a i1) i2 (select a i2) v N i) (arrayassign_182_23_8_abs i2 (select a i2) i (select a i) v N i) (arrayassign_182_23_8_abs i2 (select a i2) i1 (select a i1) v N i) (arrayassign_182_23_8_abs i2 (select a i2) i2 (select a i2) v N i)) (assign_191_24_8_abs i2 (ite (= i i2) (+ (select a i) 1) (select a i2)) i1 (ite (= i i1) (+ (select a i) 1) (select a i1)) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_191_24_8_abs i1 (select a i1) i1 (select a i1) v N i) (assign_191_24_8_abs i1 (select a i1) i2 (select a i2) v N i) (assign_191_24_8_abs i2 (select a i2) i1 (select a i1) v N i) (assign_191_24_8_abs i2 (select a i2) i2 (select a i2) v N i)) (while_194_20_6_abs i2 (select a i2) i1 (select a i1) v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_200_27_6_abs i1 (select a i1) i1 (select a i1) v N i) (assign_200_27_6_abs i1 (select a i1) i2 (select a i2) v N i) (assign_200_27_6_abs i2 (select a i2) i1 (select a i1) v N i) (assign_200_27_6_abs i2 (select a i2) i2 (select a i2) v N i)) (while_269_28_6_abs i2 (select a i2) i1 (select a i1) v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_269_28_6_abs i1 (select a i1) i1 (select a i1) v N i) (while_269_28_6_abs i1 (select a i1) i2 (select a i2) v N i) (while_269_28_6_abs i2 (select a i2) i1 (select a i1) v N i) (while_269_28_6_abs i2 (select a i2) i2 (select a i2) v N i) (< i N)) (assert_240_30_8_abs i2 (select a i2) i1 (select a i1) v N i))))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_269_28_6_abs i1 (select a i1) i1 (select a i1) v N i) (while_269_28_6_abs i1 (select a i1) i2 (select a i2) v N i) (while_269_28_6_abs i2 (select a i2) i1 (select a i1) v N i) (while_269_28_6_abs i2 (select a i2) i2 (select a i2) v N i) (not (< i N))) (end_abs i2 (select a i2) i1 (select a i1) v N i))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (a (Array Int Int))) (=> (and (assert_240_30_8_abs k (select a k) k (select a k) v N i) (<= 0 k) (< k N)) (= 1 (mod (select a k) 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_240_30_8_abs i1 (select a i1) i1 (select a i1) v N i) (assert_240_30_8_abs i1 (select a i1) i2 (select a i2) v N i) (assert_240_30_8_abs i2 (select a i2) i1 (select a i1) v N i) (assert_240_30_8_abs i2 (select a i2) i2 (select a i2) v N i)) (assert_257_31_8_abs i2 (select a i2) i1 (select a i1) v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int))) (=> (assert_257_31_8_abs i (select a i) i (select a i) v N i) (= 1 (mod (select a i) 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assert_257_31_8_abs i1 (select a i1) i1 (select a i1) v N i) (assert_257_31_8_abs i1 (select a i1) i2 (select a i2) v N i) (assert_257_31_8_abs i2 (select a i2) i1 (select a i1) v N i) (assert_257_31_8_abs i2 (select a i2) i2 (select a i2) v N i)) (assign_266_32_8_abs i2 (select a i2) i1 (select a i1) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (assign_266_32_8_abs i1 (select a i1) i1 (select a i1) v N i) (assign_266_32_8_abs i1 (select a i1) i2 (select a i2) v N i) (assign_266_32_8_abs i2 (select a i2) i1 (select a i1) v N i) (assign_266_32_8_abs i2 (select a i2) i2 (select a i2) v N i)) (while_269_28_6_abs i2 (select a i2) i1 (select a i1) v N (+ i 1)))))
(check-sat)
