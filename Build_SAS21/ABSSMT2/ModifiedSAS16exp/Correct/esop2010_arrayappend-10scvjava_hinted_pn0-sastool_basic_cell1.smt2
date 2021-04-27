
(set-logic HORN)
(declare-rel assign_27_11_286_abs (Int Int Int Int Int Int Int))
(declare-rel assert_26_11_277_abs (Int Int Int Int Int Int Int))
(declare-rel assert_25_11_256_abs (Int Int Int Int Int Int Int))
(declare-rel while_24_1_289_abs (Int Int Int Int Int Int Int))
(declare-rel assign_23_8_206_abs (Int Int Int Int Int Int Int))
(declare-rel assert_21_8_200_abs (Int Int Int Int Int Int Int))
(declare-rel assign_19_5_158_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_18_5_149_abs (Int Int Int Int Int Int Int))
(declare-rel assert_17_12_132_abs (Int Int Int Int Int Int Int))
(declare-rel while_16_1_161_abs (Int Int Int Int Int Int Int))
(declare-rel assign_15_1_85_abs (Int Int Int Int Int Int Int))
(declare-rel assign_12_8_79_abs (Int Int Int Int Int Int Int))
(declare-rel assign_11_1_67_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 15
;Number of variables = 5
;Number of clauses = 21
;
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select b i2) i1 (select a i1) Nb Na i)))
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_11_1_67_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assign)  Na := Support.random()
(assert (forall ( (rnd Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_11_1_67_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_12_8_79_abs i2 (select b i2) i1 (select a i1) Nb rnd i))))
;
;(assign)  Nb := Support.random()
(assert (forall ( (rnd Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_12_8_79_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_15_1_85_abs i2 (select b i2) i1 (select a i1) rnd Na i))))
;
;(assign)  i := Na
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_15_1_85_abs i2 (select b i2) i1 (select a i1) Nb Na i) (while_16_1_161_abs i2 (select b i2) i1 (select a i1) Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_16_1_161_abs i2 (select b i2) i1 (select a i1) Nb Na i) (< i (+ Na Nb))) (assert_17_12_132_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_16_1_161_abs i2 (select b i2) i1 (select a i1) Nb Na i) (not (< i (+ Na Nb)))) (assert_21_8_200_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assert)  (((Na<=k)&&(k<i))=>(a[k]==b[(k-Na)]))
(assert (forall ( (k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int))) (=> (and (assert_17_12_132_abs (- k Na) (select b (- k Na)) k (select a k) Nb Na i) (<= Na k) (< k i)) (= (select a k) (select b (- k Na))))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_17_12_132_abs i2 (select b i2) i1 (select a i1) Nb Na i) (arrayassign_18_5_149_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(aassign) a[i] := b[(i-Na)]
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_18_5_149_abs (- i Na) (select b (- i Na)) i1 (select a i1) Nb Na i) (arrayassign_18_5_149_abs i2 (select b i2) i1 (select a i1) Nb Na i)) (assign_19_5_158_abs i2 (select b i2) i1 (ite (= i i1) (select b (- i Na)) (select a i1)) Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_19_5_158_abs i2 (select b i2) i1 (select a i1) Nb Na i) (while_16_1_161_abs i2 (select b i2) i1 (select a i1) Nb Na (+ i 1)))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ( (k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int))) (=> (and (assert_21_8_200_abs (- k Na) (select b (- k Na)) k (select a k) Nb Na i) (<= Na k) (< k (+ Na Nb))) (= (select a k) (select b (- k Na))))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_21_8_200_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_23_8_206_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assign)  i := Na
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_23_8_206_abs i2 (select b i2) i1 (select a i1) Nb Na i) (while_24_1_289_abs i2 (select b i2) i1 (select a i1) Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_24_1_289_abs i2 (select b i2) i1 (select a i1) Nb Na i) (< i (+ Na Nb))) (assert_25_11_256_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_24_1_289_abs i2 (select b i2) i1 (select a i1) Nb Na i) (not (< i (+ Na Nb)))) (end_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ( (k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int))) (=> (and (assert_25_11_256_abs (- k Na) (select b (- k Na)) k (select a k) Nb Na i) (<= Na k) (< k (+ Na Nb))) (= (select a k) (select b (- k Na))))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_25_11_256_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assert_26_11_277_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assert)  (a[i]==b[(i-Na)])
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int))) (=> (assert_26_11_277_abs (- i Na) (select b (- i Na)) i (select a i) Nb Na i) (= (select a i) (select b (- i Na))))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_26_11_277_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_27_11_286_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_27_11_286_abs i2 (select b i2) i1 (select a i1) Nb Na i) (while_24_1_289_abs i2 (select b i2) i1 (select a i1) Nb Na (+ i 1)))))
(check-sat)
