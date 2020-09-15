;Number of predicates (nodes) = 18
;Number of variables = 5
;Number of clauses = 25
;
(set-logic HORN)
(declare-fun assert_33_8_239 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_31_10_213 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assert_30_10_204 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assert_29_10_189 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun while_27_8_216 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_26_8_151 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_23_5_142 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_21_2_130 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_20_2_121 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun if_19_5_134 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assert_18_12_103 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun while_17_1_145 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_15_1_65 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_14_1_56 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_13_1_44 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun assign_12_1_32 ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => true (start a  elem  pos  N  i ))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (start a  elem  pos  N  i ) (assign_12_1_32 a  elem  pos  N  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_12_1_32 a  elem  pos  N  i ) (assign_13_1_44 a  elem  pos  N  0))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_13_1_44 a  elem  pos  N  i ) (assign_14_1_56 a  elem  pos  rnd i ))))
;
;(assign)  elem := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_14_1_56 a  elem  pos  N  i ) (assign_15_1_65 a  rnd pos  N  i ))))
;
;(assign)  pos := (0-1)
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_15_1_65 a  elem  pos  N  i ) (while_17_1_145 a  elem  (- 0 1) N  i ))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (while_17_1_145 a  elem  pos  N  i ) (< i  N )) (assert_18_12_103 a  elem  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (while_17_1_145 a  elem  pos  N  i ) (not (< i  N ))) (assign_26_8_151 a  elem  pos  N  i ))))
;
;(assert)  (((k>=0)&&(k<i))=>(!(a[k]==elem)))
(assert (forall ((k Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_18_12_103 a  elem  pos  N  i ) (=> (and (>= k  0) (< k  i )) (not (= (select a  k ) elem ))))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_18_12_103 a  elem  pos  N  i ) (if_19_5_134 a  elem  pos  N  i ))))
;
;(if)      if((a[i]==elem))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (if_19_5_134 a  elem  pos  N  i ) (= (select a  i ) elem )) (assign_20_2_121 a  elem  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (if_19_5_134 a  elem  pos  N  i ) (not (= (select a  i ) elem ))) (assign_23_5_142 a  elem  pos  N  i ))))
;
;(assign)  pos := i
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_20_2_121 a  elem  pos  N  i ) (assign_21_2_130 a  elem  i  N  i ))))
;
;(assign)  i := (N+2)
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_21_2_130 a  elem  pos  N  i ) (assign_23_5_142 a  elem  pos  N  (+ N  2)))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_23_5_142 a  elem  pos  N  i ) (while_17_1_145 a  elem  pos  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_26_8_151 a  elem  pos  N  i ) (while_27_8_216 a  elem  pos  N  0))))
;
;(while)   while((i<pos))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (while_27_8_216 a  elem  pos  N  i ) (< i  pos )) (assert_29_10_189 a  elem  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (elem Int) (pos Int) (N Int) (i Int) ) ( => ( and (while_27_8_216 a  elem  pos  N  i ) (not (< i  pos ))) (assert_33_8_239 a  elem  pos  N  i ))))
;
;(assert)  (((k>=0)&&(k<pos))=>(!(a[k]==elem)))
(assert (forall ((k Int) (i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_29_10_189 a  elem  pos  N  i ) (=> (and (>= k  0) (< k  pos )) (not (= (select a  k ) elem ))))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_29_10_189 a  elem  pos  N  i ) (assert_30_10_204 a  elem  pos  N  i ))))
;
;(assert)  (!(a[i]==elem))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_30_10_204 a  elem  pos  N  i ) (not (= (select a  i ) elem )))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_30_10_204 a  elem  pos  N  i ) (assign_31_10_213 a  elem  pos  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assign_31_10_213 a  elem  pos  N  i ) (while_27_8_216 a  elem  pos  N  (+ i  1)))))
;
;(assert)  ((a[pos]==elem)||(pos==(0-1)))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_33_8_239 a  elem  pos  N  i ) (or (= (select a  pos ) elem ) (= pos  (- 0 1))))))
(assert (forall ((i Int) (N Int) (pos Int) (elem Int) (a (Array Int Int)) ) ( => (assert_33_8_239 a  elem  pos  N  i ) (end a  elem  pos  N  i ))))
(check-sat)
