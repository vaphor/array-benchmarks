
(set-logic HORN)
(declare-rel assign_35_8_266_abs (Int Int Int Int Int))
(declare-rel assert_34_8_257_abs (Int Int Int Int Int))
(declare-rel assert_33_8_240_abs (Int Int Int Int Int))
(declare-rel while_31_6_269_abs (Int Int Int Int Int))
(declare-rel assign_30_6_200_abs (Int Int Int Int Int))
(declare-rel assign_26_8_191_abs (Int Int Int Int Int))
(declare-rel arrayassign_25_8_182_abs (Int Int Int Int Int))
(declare-rel assert_24_8_165_abs (Int Int Int Int Int))
(declare-rel while_22_6_194_abs (Int Int Int Int Int))
(declare-rel assign_21_6_125_abs (Int Int Int Int Int))
(declare-rel assign_17_8_116_abs (Int Int Int Int Int))
(declare-rel arrayassign_16_8_107_abs (Int Int Int Int Int))
(declare-rel assign_15_8_94_abs (Int Int Int Int Int))
(declare-rel assert_14_8_82_abs (Int Int Int Int Int))
(declare-rel while_12_6_119_abs (Int Int Int Int Int))
(declare-rel assign_11_6_42_abs (Int Int Int Int Int))
(declare-rel assign_8_6_36_abs (Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int));Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int)) (start_abs i1 (select a i1) v N i)))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (start_abs i1 (select a i1) v N i) (assign_8_6_36_abs i1 (select a i1) v N i))))
;
;(assign)  N := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assign_8_6_36_abs i1 (select a i1) v N i) (assign_11_6_42_abs i1 (select a i1) v rnd i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assign_11_6_42_abs i1 (select a i1) v N i) (while_12_6_119_abs i1 (select a i1) v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_12_6_119_abs i1 (select a i1) v N i) (< i N)) (assert_14_8_82_abs i1 (select a i1) v N i))))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_12_6_119_abs i1 (select a i1) v N i) (not (< i N))) (assign_21_6_125_abs i1 (select a i1) v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (a (Array Int Int))) (=> (and (assert_14_8_82_abs k (select a k) v N i) (<= 0 k) (< k i)) (= 0 (mod (select a k) 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assert_14_8_82_abs i1 (select a i1) v N i) (assign_15_8_94_abs i1 (select a i1) v N i))))
;
;(assign)  v := Support.random()
(assert (forall ( (rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assign_15_8_94_abs i1 (select a i1) v N i) (arrayassign_16_8_107_abs i1 (select a i1) rnd N i))))
;
;(aassign) a[i] := (v*2)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (arrayassign_16_8_107_abs i1 (select a i1) v N i) (assign_17_8_116_abs i1 (ite (= i i1) (* v 2) (select a i1)) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assign_17_8_116_abs i1 (select a i1) v N i) (while_12_6_119_abs i1 (select a i1) v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assign_21_6_125_abs i1 (select a i1) v N i) (while_22_6_194_abs i1 (select a i1) v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_22_6_194_abs i1 (select a i1) v N i) (< i N)) (assert_24_8_165_abs i1 (select a i1) v N i))))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_22_6_194_abs i1 (select a i1) v N i) (not (< i N))) (assign_30_6_200_abs i1 (select a i1) v N i))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (a (Array Int Int))) (=> (and (assert_24_8_165_abs k (select a k) v N i) (<= 0 k) (< k i)) (= 1 (mod (select a k) 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assert_24_8_165_abs i1 (select a i1) v N i) (arrayassign_25_8_182_abs i1 (select a i1) v N i))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (and (arrayassign_25_8_182_abs i (select a i) v N i) (arrayassign_25_8_182_abs i1 (select a i1) v N i)) (assign_26_8_191_abs i1 (ite (= i i1) (+ (select a i) 1) (select a i1)) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assign_26_8_191_abs i1 (select a i1) v N i) (while_22_6_194_abs i1 (select a i1) v N (+ i 1)))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assign_30_6_200_abs i1 (select a i1) v N i) (while_31_6_269_abs i1 (select a i1) v N 0))))
;
;(while)   while((i<N))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_31_6_269_abs i1 (select a i1) v N i) (< i N)) (assert_33_8_240_abs i1 (select a i1) v N i))))
(assert (forall ( (a (Array Int Int)) (v Int) (N Int) (i Int) (i1 Int)) (=> (and (while_31_6_269_abs i1 (select a i1) v N i) (not (< i N))) (end_abs i1 (select a i1) v N i))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ( (k Int) (i Int) (N Int) (v Int) (a (Array Int Int))) (=> (and (assert_33_8_240_abs k (select a k) v N i) (<= 0 k) (< k N)) (= 1 (mod (select a k) 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assert_33_8_240_abs i1 (select a i1) v N i) (assert_34_8_257_abs i1 (select a i1) v N i))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int))) (=> (assert_34_8_257_abs i (select a i) v N i) (= 1 (mod (select a i) 2)))))
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assert_34_8_257_abs i1 (select a i1) v N i) (assign_35_8_266_abs i1 (select a i1) v N i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (N Int) (v Int) (a (Array Int Int)) (i1 Int)) (=> (assign_35_8_266_abs i1 (select a i1) v N i) (while_31_6_269_abs i1 (select a i1) v N (+ i 1)))))
(check-sat)
