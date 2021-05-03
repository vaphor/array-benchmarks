
(set-logic HORN)
(declare-rel assign_139_22_5_abs (Int Int Int Int Int Int Int))
(declare-rel assert_130_21_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_142_20_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_104_19_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_95_16_5_abs (Int Int Int Int Int Int Int))
(declare-rel assign_86_15_5_abs (Int Int Int Int Int Int Int))
(declare-rel arrayassign_77_14_5_abs (Int Int Int Int Int Int Int))
(declare-rel while_98_13_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_55_11_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_43_10_1_abs (Int Int Int Int Int Int Int))
(declare-rel assign_37_9_1_abs (Int Int Int Int Int Int Int))
(declare-rel end_abs (Int Int Int Int Int Int Int))
(declare-rel start_abs (Int Int Int Int Int Int Int));Number of predicates (nodes) = 13
;Number of variables = 5
;Number of clauses = 16
;
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) (i1 Int) (i2 Int)) (start_abs i2 (select a_copy i2) i1 (select a i1) size j i)))
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (start_abs i2 (select a_copy i2) i1 (select a i1) size j i) (assign_37_9_1_abs i2 (select a_copy i2) i1 (select a i1) size j i))))
;
;(assign)  i := 1
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_37_9_1_abs i2 (select a_copy i2) i1 (select a i1) size j i) (assign_43_10_1_abs i2 (select a_copy i2) i1 (select a i1) size j 1))))
;
;(assign)  j := 0
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_43_10_1_abs i2 (select a_copy i2) i1 (select a i1) size j i) (assign_55_11_1_abs i2 (select a_copy i2) i1 (select a i1) size 0 i))))
;
;(assign)  size := Support.random()
(assert (forall ( (rnd Int) (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_55_11_1_abs i2 (select a_copy i2) i1 (select a i1) size j i) (while_98_13_1_abs i2 (select a_copy i2) i1 (select a i1) rnd j i))))
;
;(while)   while((i<size))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_98_13_1_abs i2 (select a_copy i2) i1 (select a i1) size j i) (< i size)) (arrayassign_77_14_5_abs i2 (select a_copy i2) i1 (select a i1) size j i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_98_13_1_abs i2 (select a_copy i2) i1 (select a i1) size j i) (not (< i size))) (assign_104_19_1_abs i2 (select a_copy i2) i1 (select a i1) size j i))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (and (arrayassign_77_14_5_abs i2 (select a_copy i2) i (select a i) size j i) (arrayassign_77_14_5_abs i2 (select a_copy i2) i1 (select a i1) size j i)) (assign_86_15_5_abs i2 (ite (= i i2) (select a i) (select a_copy i2)) i1 (select a i1) size j i))))
;
;(assign)  i := (i+2)
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_86_15_5_abs i2 (select a_copy i2) i1 (select a i1) size j i) (assign_95_16_5_abs i2 (select a_copy i2) i1 (select a i1) size j (+ i 2)))))
;
;(assign)  j := (j+1)
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_95_16_5_abs i2 (select a_copy i2) i1 (select a i1) size j i) (while_98_13_1_abs i2 (select a_copy i2) i1 (select a i1) size (+ j 1) i))))
;
;(assign)  i := 0
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_104_19_1_abs i2 (select a_copy i2) i1 (select a i1) size j i) (while_142_20_1_abs i2 (select a_copy i2) i1 (select a i1) size j 0))))
;
;(while)   while((i<size))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_142_20_1_abs i2 (select a_copy i2) i1 (select a i1) size j i) (< i size)) (assert_130_21_5_abs i2 (select a_copy i2) i1 (select a i1) size j i))))
(assert (forall ( (a_copy (Array Int Int)) (a (Array Int Int)) (size Int) (j Int) (i Int) (i1 Int) (i2 Int)) (=> (and (while_142_20_1_abs i2 (select a_copy i2) i1 (select a i1) size j i) (not (< i size))) (end_abs i2 (select a_copy i2) i1 (select a i1) size j i))))
;
;(assert)  (a_copy[i]==a[j])
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int))) (=> (assert_130_21_5_abs i (select a_copy i) j (select a j) size j i) (= (select a j) (select a_copy i)))))
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assert_130_21_5_abs i2 (select a_copy i2) i1 (select a i1) size j i) (assign_139_22_5_abs i2 (select a_copy i2) i1 (select a i1) size j i))))
;
;(assign)  i := (i+1)
(assert (forall ( (i Int) (j Int) (size Int) (a (Array Int Int)) (a_copy (Array Int Int)) (i1 Int) (i2 Int)) (=> (assign_139_22_5_abs i2 (select a_copy i2) i1 (select a i1) size j i) (while_142_20_1_abs i2 (select a_copy i2) i1 (select a i1) size j (+ i 1)))))
(check-sat)
