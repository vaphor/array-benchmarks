;Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_35_8_266 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_34_8_257 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_33_8_240 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_31_6_269 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_30_6_200 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_26_8_191 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_25_8_182 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_24_8_165 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_22_6_194 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_21_6_125 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_17_8_116 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_16_8_107 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_15_8_94 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_14_8_82 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_12_6_119 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_11_6_42 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_8_6_36 ((Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) Int Int Int ) Bool)
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => true (start a  v  N  i ))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (start a  v  N  i ) (assign_8_6_36 a  v  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_8_6_36 a  v  N  i ) (assign_11_6_42 a  v  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_11_6_42 a  v  N  i ) (while_12_6_119 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_12_6_119 a  v  N  i ) (< i  N )) (assert_14_8_82 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_12_6_119 a  v  N  i ) (not (< i  N ))) (assign_21_6_125 a  v  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ((k Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_14_8_82 a  v  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (mod (select a  k ) 2) 0)))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_14_8_82 a  v  N  i ) (assign_15_8_94 a  v  N  i ))))
;
;(assign)  v := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_15_8_94 a  v  N  i ) (arrayassign_16_8_107 a  rnd N  i ))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (arrayassign_16_8_107 a  v  N  i ) (assign_17_8_116 (store a  i  (* v  2)) v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_17_8_116 a  v  N  i ) (while_12_6_119 a  v  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_21_6_125 a  v  N  i ) (while_22_6_194 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_22_6_194 a  v  N  i ) (< i  N )) (assert_24_8_165 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_22_6_194 a  v  N  i ) (not (< i  N ))) (assign_30_6_200 a  v  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ((k Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_24_8_165 a  v  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (mod (select a  k ) 2) 1)))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_24_8_165 a  v  N  i ) (arrayassign_25_8_182 a  v  N  i ))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (arrayassign_25_8_182 a  v  N  i ) (assign_26_8_191 (store a  i  (+ (select a  i ) 1)) v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_26_8_191 a  v  N  i ) (while_22_6_194 a  v  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_30_6_200 a  v  N  i ) (while_31_6_269 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_31_6_269 a  v  N  i ) (< i  N )) (assert_33_8_240 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_31_6_269 a  v  N  i ) (not (< i  N ))) (end a  v  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ((k Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_33_8_240 a  v  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (mod (select a  k ) 2) 1)))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_33_8_240 a  v  N  i ) (assert_34_8_257 a  v  N  i ))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_34_8_257 a  v  N  i ) (= (mod (select a  i ) 2) 1))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_34_8_257 a  v  N  i ) (assign_35_8_266 a  v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_35_8_266 a  v  N  i ) (while_31_6_269 a  v  N  (+ i  1)))))
(check-sat)
