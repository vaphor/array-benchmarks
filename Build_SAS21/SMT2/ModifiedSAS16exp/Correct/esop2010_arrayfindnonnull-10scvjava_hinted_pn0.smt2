;Number of predicates (nodes) = 17
;Number of variables = 4
;Number of clauses = 24
;
(set-logic HORN)
(declare-fun assert_29_8_241 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_27_3_214 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_26_10_205 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_25_10_191 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_23_1_217 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_22_8_154 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_20_5_145 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_18_2_133 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_17_2_124 ((Array Int Int) Int Int Int ) Bool)
(declare-fun if_16_5_137 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_15_13_105 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_14_1_148 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_13_8_68 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_12_1_62 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_11_1_53 ((Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => true (start a  pos  N  i ))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (start a  pos  N  i ) (assign_11_1_53 a  pos  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_11_1_53 a  pos  N  i ) (assign_12_1_62 a  pos  rnd i ))))
;
;(assign)  pos := (0-1)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_12_1_62 a  pos  N  i ) (assign_13_8_68 a  (- 0 1) N  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_13_8_68 a  pos  N  i ) (while_14_1_148 a  pos  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (while_14_1_148 a  pos  N  i ) (< i  N )) (assert_15_13_105 a  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (while_14_1_148 a  pos  N  i ) (not (< i  N ))) (assign_22_8_154 a  pos  N  i ))))
;
;(assert)  (((k>=0)&&(k<i))=>(a[k]==0))
(assert (forall ((k Int) (i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_15_13_105 a  pos  N  i ) (=> (and (>= k  0) (< k  i )) (= (select a  k ) 0)))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_15_13_105 a  pos  N  i ) (if_16_5_137 a  pos  N  i ))))
;
;(if)      if((!(a[i]==0)))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (if_16_5_137 a  pos  N  i ) (not (= (select a  i ) 0))) (assign_17_2_124 a  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (if_16_5_137 a  pos  N  i ) (not (not (= (select a  i ) 0)))) (assign_20_5_145 a  pos  N  i ))))
;
;(assign)  pos := i
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_17_2_124 a  pos  N  i ) (assign_18_2_133 a  i  N  i ))))
;
;(assign)  i := (N+2)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_18_2_133 a  pos  N  i ) (assign_20_5_145 a  pos  N  (+ N  2)))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_20_5_145 a  pos  N  i ) (while_14_1_148 a  pos  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_22_8_154 a  pos  N  i ) (while_23_1_217 a  pos  N  0))))
;
;(while)   while((i<pos))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (while_23_1_217 a  pos  N  i ) (< i  pos )) (assert_25_10_191 a  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (while_23_1_217 a  pos  N  i ) (not (< i  pos ))) (assert_29_8_241 a  pos  N  i ))))
;
;(assert)  (((k>=0)&&(k<pos))=>(a[k]==0))
(assert (forall ((k Int) (i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_25_10_191 a  pos  N  i ) (=> (and (>= k  0) (< k  pos )) (= (select a  k ) 0)))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_25_10_191 a  pos  N  i ) (assert_26_10_205 a  pos  N  i ))))
;
;(assert)  (a[i]==0)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_26_10_205 a  pos  N  i ) (= (select a  i ) 0))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_26_10_205 a  pos  N  i ) (assign_27_3_214 a  pos  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_27_3_214 a  pos  N  i ) (while_23_1_217 a  pos  N  (+ i  1)))))
;
;(assert)  ((!(a[pos]==0))||(pos==(0-1)))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_29_8_241 a  pos  N  i ) (or (not (= (select a  pos ) 0)) (= pos  (- 0 1))))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_29_8_241 a  pos  N  i ) (end a  pos  N  i ))))
(check-sat)