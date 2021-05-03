;Number of predicates (nodes) = 16
;Number of variables = 4
;Number of clauses = 20
;
(set-logic HORN)
(declare-fun assign_32_8_266 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_31_8_257 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_28_6_269 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_27_6_200 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_24_8_191 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_23_8_182 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_20_6_194 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_19_6_125 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_16_8_116 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_15_8_107 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_14_8_94 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_11_6_119 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_10_6_42 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_8_6_36 ((Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => true (start a  v  N  i ))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (start a  v  N  i ) (assign_8_6_36 a  v  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_8_6_36 a  v  N  i ) (assign_10_6_42 a  v  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_10_6_42 a  v  N  i ) (while_11_6_119 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_11_6_119 a  v  N  i ) (< i  N )) (assign_14_8_94 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_11_6_119 a  v  N  i ) (not (< i  N ))) (assign_19_6_125 a  v  N  i ))))
;
;(assign)  v := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_14_8_94 a  v  N  i ) (arrayassign_15_8_107 a  rnd N  i ))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (arrayassign_15_8_107 a  v  N  i ) (assign_16_8_116 (store a  i  (* v  2)) v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_16_8_116 a  v  N  i ) (while_11_6_119 a  v  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_19_6_125 a  v  N  i ) (while_20_6_194 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_20_6_194 a  v  N  i ) (< i  N )) (arrayassign_23_8_182 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_20_6_194 a  v  N  i ) (not (< i  N ))) (assign_27_6_200 a  v  N  i ))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (arrayassign_23_8_182 a  v  N  i ) (assign_24_8_191 (store a  i  (+ (select a  i ) 1)) v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_24_8_191 a  v  N  i ) (while_20_6_194 a  v  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_27_6_200 a  v  N  i ) (while_28_6_269 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_28_6_269 a  v  N  i ) (< i  N )) (assert_31_8_257 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_28_6_269 a  v  N  i ) (not (< i  N ))) (end a  v  N  i ))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_31_8_257 a  v  N  i ) (= (mod (select a  i ) 2) 1))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_31_8_257 a  v  N  i ) (assign_32_8_266 a  v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_32_8_266 a  v  N  i ) (while_28_6_269 a  v  N  (+ i  1)))))
(check-sat)
