;Number of predicates (nodes) = 17
;Number of variables = 4
;Number of clauses = 24
;
(set-logic HORN)
(declare-fun assert_241_29_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_214_27_3 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_205_26_10 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_191_25_10 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_217_23_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_154_22_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_145_20_5 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_133_18_2 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_124_17_2 ((Array Int Int) Int Int Int ) Bool)
(declare-fun if_137_16_5 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_105_15_13 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_148_14_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_68_13_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_62_12_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_53_11_1 ((Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => true (start a  pos  N  i ))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (start a  pos  N  i ) (assign_53_11_1 a  pos  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_53_11_1 a  pos  N  i ) (assign_62_12_1 a  pos  rnd i ))))
;
;(assign)  pos := (0-1)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_62_12_1 a  pos  N  i ) (assign_68_13_8 a  (- 0 1) N  i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_68_13_8 a  pos  N  i ) (while_148_14_1 a  pos  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (while_148_14_1 a  pos  N  i ) (< i  N )) (assert_105_15_13 a  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (while_148_14_1 a  pos  N  i ) (not (< i  N ))) (assign_154_22_8 a  pos  N  i ))))
;
;(assert)  (((k>=0)&&(k<i))=>(a[k]==0))
(assert (forall ((k Int) (i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_105_15_13 a  pos  N  i ) (=> (and (>= k  0) (< k  i )) (= (select a  k ) 0)))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_105_15_13 a  pos  N  i ) (if_137_16_5 a  pos  N  i ))))
;
;(if)      if((!(a[i]==0)))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (if_137_16_5 a  pos  N  i ) (not (= (select a  i ) 0))) (assign_124_17_2 a  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (if_137_16_5 a  pos  N  i ) (not (not (= (select a  i ) 0)))) (assign_145_20_5 a  pos  N  i ))))
;
;(assign)  pos := i
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_124_17_2 a  pos  N  i ) (assign_133_18_2 a  i  N  i ))))
;
;(assign)  i := (N+2)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_133_18_2 a  pos  N  i ) (assign_145_20_5 a  pos  N  (+ N  2)))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_145_20_5 a  pos  N  i ) (while_148_14_1 a  pos  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_154_22_8 a  pos  N  i ) (while_217_23_1 a  pos  N  0))))
;
;(while)   while((i<pos))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (while_217_23_1 a  pos  N  i ) (< i  pos )) (assert_191_25_10 a  pos  N  i ))))
(assert (forall ((a (Array Int Int)) (pos Int) (N Int) (i Int) ) ( => ( and (while_217_23_1 a  pos  N  i ) (not (< i  pos ))) (assert_241_29_8 a  pos  N  i ))))
;
;(assert)  (((k>=0)&&(k<pos))=>(a[k]==0))
(assert (forall ((k Int) (i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_191_25_10 a  pos  N  i ) (=> (and (>= k  0) (< k  pos )) (= (select a  k ) 0)))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_191_25_10 a  pos  N  i ) (assert_205_26_10 a  pos  N  i ))))
;
;(assert)  (a[i]==0)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_205_26_10 a  pos  N  i ) (= (select a  i ) 0))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_205_26_10 a  pos  N  i ) (assign_214_27_3 a  pos  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assign_214_27_3 a  pos  N  i ) (while_217_23_1 a  pos  N  (+ i  1)))))
;
;(assert)  ((!(a[pos]==0))||(pos==(0-1)))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_241_29_8 a  pos  N  i ) (or (not (= (select a  pos ) 0)) (= pos  (- 0 1))))))
(assert (forall ((i Int) (N Int) (pos Int) (a (Array Int Int)) ) ( => (assert_241_29_8 a  pos  N  i ) (end a  pos  N  i ))))
(check-sat)
