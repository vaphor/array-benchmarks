;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 20
;
(set-logic HORN)
(declare-fun assign_266_35_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_257_34_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_269_31_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_200_30_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_191_26_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_182_25_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_194_22_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_125_21_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_116_17_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_107_16_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_94_15_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_119_12_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_42_11_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_36_8_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => true (start a  v  N  i ))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (start a  v  N  i ) (assign_36_8_6 a  v  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_36_8_6 a  v  N  i ) (assign_42_11_6 a  v  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_42_11_6 a  v  N  i ) (while_119_12_6 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_119_12_6 a  v  N  i ) (< i  N )) (assign_94_15_8 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_119_12_6 a  v  N  i ) (not (< i  N ))) (assign_125_21_6 a  v  N  i ))))
;
;(assign)  v := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_94_15_8 a  v  N  i ) (arrayassign_107_16_8 a  rnd N  i ))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (arrayassign_107_16_8 a  v  N  i ) (assign_116_17_8 (store a  i  (* v  2)) v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_116_17_8 a  v  N  i ) (while_119_12_6 a  v  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_125_21_6 a  v  N  i ) (while_194_22_6 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_194_22_6 a  v  N  i ) (< i  N )) (arrayassign_182_25_8 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_194_22_6 a  v  N  i ) (not (< i  N ))) (assign_200_30_6 a  v  N  i ))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (arrayassign_182_25_8 a  v  N  i ) (assign_191_26_8 (store a  i  (+ (select a  i ) 1)) v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_191_26_8 a  v  N  i ) (while_194_22_6 a  v  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_200_30_6 a  v  N  i ) (while_269_31_6 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_269_31_6 a  v  N  i ) (< i  N )) (assert_257_34_8 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_269_31_6 a  v  N  i ) (not (< i  N ))) (end a  v  N  i ))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_257_34_8 a  v  N  i ) (= (mod (select a  i ) 2) 1))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_257_34_8 a  v  N  i ) (assign_266_35_8 a  v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_266_35_8 a  v  N  i ) (while_269_31_6 a  v  N  (+ i  1)))))
(check-sat)
