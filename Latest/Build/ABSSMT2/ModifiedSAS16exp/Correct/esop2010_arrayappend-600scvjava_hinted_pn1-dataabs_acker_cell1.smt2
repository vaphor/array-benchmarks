
(set-logic HORN)
(declare-rel assign_286_27_11_abs (Int Int Int Int Int Int Int))
(declare-rel assert_277_26_11_abs (Int Int Int Int Int Int Int))
(declare-rel assert_256_25_11_abs (Int Int Int Int Int Int Int))
(declare-rel while_289_24_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_206_23_8_abs (Int Int Int Int Int Int Int))
(declare-rel assert_200_21_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_158_19_5_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_149_18_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_132_17_12_abs (Int Int Int Int Int Int Int))
(declare-rel while_161_16_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_85_15_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_79_12_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_67_11_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 15
;Number of variables = 5
;Number of clauses = 21
;
(assert (forall ( (acker1 Int) (acker Int) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 acker1 i1 acker Nb Na i)))
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (start_abs i2 acker i1 acker1 Nb Na i) (assign_67_11_1_abs i2 acker i1 acker1 Nb Na i))))
;
;(assign)  Na := Support.random()
(assert (forall ( (rnd Int) (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_67_11_1_abs i2 acker i1 acker1 Nb Na i) (assign_79_12_8_abs i2 acker i1 acker1 Nb rnd i))))
;
;(assign)  Nb := Support.random()
(assert (forall ( (rnd Int) (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_79_12_8_abs i2 acker i1 acker1 Nb Na i) (assign_85_15_1_abs i2 acker i1 acker1 rnd Na i))))
;
;(assign)  i := Na
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_85_15_1_abs i2 acker i1 acker1 Nb Na i) (while_161_16_1_abs i2 acker i1 acker1 Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ( (acker1 Int) (acker Int) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_161_16_1_abs i2 acker1 i1 acker Nb Na i) (< i (+ Na Nb))) (assert_132_17_12_abs i2 acker1 i1 acker Nb Na i))))
(assert (forall ( (acker1 Int) (acker Int) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_161_16_1_abs i2 acker1 i1 acker Nb Na i) (not (< i (+ Na Nb)))) (assert_200_21_8_abs i2 acker1 i1 acker Nb Na i))))
;
;(assert)  (((Na<=k)&&(k<i))=>(a[k]==b[(k-Na)]))
(assert (forall ( (k Int) (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int)) (=> (and (assert_132_17_12_abs (- k Na) acker k acker1 Nb Na i) (<= Na k) (< k i)) (= acker acker1))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_132_17_12_abs i2 acker i1 acker1 Nb Na i) (arrayassign_149_18_5_abs i2 acker i1 acker1 Nb Na i))))
;
;(aassign) a[i] := b[(i-Na)]
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (vacker_1 Int) (vacker_0 Int) (i1 Int) (i2 Int)) (=> (and (=> (= (- i Na) i2) (= vacker_0 vacker_1)) (arrayassign_149_18_5_abs (- i Na) vacker_0 i1 acker1 Nb Na i) (arrayassign_149_18_5_abs i2 vacker_1 i1 acker1 Nb Na i)) (assign_158_19_5_abs i2 vacker_1 i1 (ite (= i i1) vacker_0 acker1) Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_158_19_5_abs i2 acker i1 acker1 Nb Na i) (while_161_16_1_abs i2 acker i1 acker1 Nb Na (+ i 1)))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ( (k Int) (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int)) (=> (and (assert_200_21_8_abs (- k Na) acker k acker1 Nb Na i) (<= Na k) (< k (+ Na Nb))) (= acker acker1))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_200_21_8_abs i2 acker i1 acker1 Nb Na i) (assign_206_23_8_abs i2 acker i1 acker1 Nb Na i))))
;
;(assign)  i := Na
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_206_23_8_abs i2 acker i1 acker1 Nb Na i) (while_289_24_1_abs i2 acker i1 acker1 Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ( (acker1 Int) (acker Int) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_289_24_1_abs i2 acker1 i1 acker Nb Na i) (< i (+ Na Nb))) (assert_256_25_11_abs i2 acker1 i1 acker Nb Na i))))
(assert (forall ( (acker1 Int) (acker Int) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_289_24_1_abs i2 acker1 i1 acker Nb Na i) (not (< i (+ Na Nb)))) (end_abs i2 acker1 i1 acker Nb Na i))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ( (k Int) (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int)) (=> (and (assert_256_25_11_abs (- k Na) acker k acker1 Nb Na i) (<= Na k) (< k (+ Na Nb))) (= acker acker1))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_256_25_11_abs i2 acker i1 acker1 Nb Na i) (assert_277_26_11_abs i2 acker i1 acker1 Nb Na i))))
;
;(assert)  (a[i]==b[(i-Na)])
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int)) (=> (assert_277_26_11_abs (- i Na) acker i acker1 Nb Na i) (= acker acker1))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assert_277_26_11_abs i2 acker i1 acker1 Nb Na i) (assign_286_27_11_abs i2 acker i1 acker1 Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (Na Int) (Nb Int) (acker1 Int) (acker Int) (i1 Int) (i2 Int)) (=> (assign_286_27_11_abs i2 acker i1 acker1 Nb Na i) (while_289_24_1_abs i2 acker i1 acker1 Nb Na (+ i 1)))))
(check-sat)
