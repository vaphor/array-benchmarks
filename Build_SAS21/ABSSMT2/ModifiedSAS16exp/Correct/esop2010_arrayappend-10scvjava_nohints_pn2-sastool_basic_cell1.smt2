
(set-logic HORN)
(declare-rel assign_286_27_11_abs (Int Int Int Int Int Int Int))
(declare-rel assert_277_26_11_abs (Int Int Int Int Int Int Int))
(declare-rel while_289_24_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_206_23_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_158_19_5_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_149_18_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_161_16_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_85_15_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_79_12_8_abs (Int Int Int Int Int Int Int))
(declare-rel assign_67_11_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 12
;Number of variables = 5
;Number of clauses = 15
;
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select b i2) i1 (select a i1) Nb Na i)))
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_67_11_1_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assign)  Na := Support.random()
(assert (forall ( (rnd Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_67_11_1_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_79_12_8_abs i2 (select b i2) i1 (select a i1) Nb rnd i))))
;
;(assign)  Nb := Support.random()
(assert (forall ( (rnd Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_79_12_8_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_85_15_1_abs i2 (select b i2) i1 (select a i1) rnd Na i))))
;
;(assign)  i := Na
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_85_15_1_abs i2 (select b i2) i1 (select a i1) Nb Na i) (while_161_16_1_abs i2 (select b i2) i1 (select a i1) Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_161_16_1_abs i2 (select b i2) i1 (select a i1) Nb Na i) (< i (+ Na Nb))) (arrayassign_149_18_5_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_161_16_1_abs i2 (select b i2) i1 (select a i1) Nb Na i) (not (< i (+ Na Nb)))) (assign_206_23_8_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(aassign) a[i] := b[(i-Na)]
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_149_18_5_abs (- i Na) (select b (- i Na)) i1 (select a i1) Nb Na i) (arrayassign_149_18_5_abs i2 (select b i2) i1 (select a i1) Nb Na i)) (assign_158_19_5_abs i2 (select b i2) i1 (ite (= i i1) (select b (- i Na)) (select a i1)) Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_158_19_5_abs i2 (select b i2) i1 (select a i1) Nb Na i) (while_161_16_1_abs i2 (select b i2) i1 (select a i1) Nb Na (+ i 1)))))
;
;(assign)  i := Na
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_206_23_8_abs i2 (select b i2) i1 (select a i1) Nb Na i) (while_289_24_1_abs i2 (select b i2) i1 (select a i1) Nb Na Na))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_289_24_1_abs i2 (select b i2) i1 (select a i1) Nb Na i) (< i (+ Na Nb))) (assert_277_26_11_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
(assert (forall ( (b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_289_24_1_abs i2 (select b i2) i1 (select a i1) Nb Na i) (not (< i (+ Na Nb)))) (end_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assert)  (a[i]==b[(i-Na)])
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int))) (=> (assert_277_26_11_abs (- i Na) (select b (- i Na)) i (select a i) Nb Na i) (= (select a i) (select b (- i Na))))))
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_277_26_11_abs i2 (select b i2) i1 (select a i1) Nb Na i) (assign_286_27_11_abs i2 (select b i2) i1 (select a i1) Nb Na i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_286_27_11_abs i2 (select b i2) i1 (select a i1) Nb Na i) (while_289_24_1_abs i2 (select b i2) i1 (select a i1) Nb Na (+ i 1)))))
(check-sat)
