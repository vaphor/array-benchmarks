;Number of predicates (nodes) = 16
;Number of variables = 5
;Number of clauses = 21
;
(set-logic HORN)
(declare-fun assert_239_33_8 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_213_31_10 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assert_204_30_10 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun while_216_27_8 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_151_26_8 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_142_23_5 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_130_21_2 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_121_20_2 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun if_134_19_5 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun while_145_17_1 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_65_15_1 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_56_14_1 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_44_13_1 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_32_12_1 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => true (start a  elem  pos  N  i ))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (start a  elem  pos  N  i ) (assign_32_12_1 a  elem  pos  N  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_32_12_1 a  elem  pos  N  i ) (assign_44_13_1 a  elem  pos  N  0))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_44_13_1 a  elem  pos  N  i ) (assign_56_14_1 a  elem  pos  rnd i ))))
;
;(assign)  elem := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_56_14_1 a  elem  pos  N  i ) (assign_65_15_1 a  rnd pos  N  i ))))
;
;(assign)  pos := (0-1)
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_65_15_1 a  elem  pos  N  i ) (while_145_17_1 a  elem  (- 0 1) N  i ))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (while_145_17_1 a  elem  pos  N  i ) (< i  N )) (if_134_19_5 a  elem  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (while_145_17_1 a  elem  pos  N  i ) (not (< i  N ))) (assign_151_26_8 a  elem  pos  N  i ))))
;
;(if)      if((a[i]==elem))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (if_134_19_5 a  elem  pos  N  i ) (= (select a  i ) elem )) (assign_121_20_2 a  elem  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (if_134_19_5 a  elem  pos  N  i ) (not (= (select a  i ) elem ))) (assign_142_23_5 a  elem  pos  N  i ))))
;
;(assign)  pos := i
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_121_20_2 a  elem  pos  N  i ) (assign_130_21_2 a  elem  i  N  i ))))
;
;(assign)  i := (N+2)
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_130_21_2 a  elem  pos  N  i ) (assign_142_23_5 a  elem  pos  N  (+ N  2)))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_142_23_5 a  elem  pos  N  i ) (while_145_17_1 a  elem  pos  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_151_26_8 a  elem  pos  N  i ) (while_216_27_8 a  elem  pos  N  0))))
;
;(while)   while((i<pos))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (while_216_27_8 a  elem  pos  N  i ) (< i  pos )) (assert_204_30_10 a  elem  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (while_216_27_8 a  elem  pos  N  i ) (not (< i  pos ))) (assert_239_33_8 a  elem  pos  N  i ))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_204_30_10 a  elem  pos  N  i ) (not (= (select a  i ) elem )))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_204_30_10 a  elem  pos  N  i ) (assign_213_31_10 a  elem  pos  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_213_31_10 a  elem  pos  N  i ) (while_216_27_8 a  elem  pos  N  (+ i  1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_239_33_8 a  elem  pos  N  i ) (or (= (select a  pos ) elem ) (= pos  (- 0 1))))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_239_33_8 a  elem  pos  N  i ) (end a  elem  pos  N  i ))))
(check-sat)
