;Number of predicates (nodes) = 19
;Number of variables = 4
;Number of clauses = 26
;
(set-logic HORN)
(declare-fun assign_275_35_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_266_34_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_249_33_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_278_31_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_206_30_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_197_26_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_188_25_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_171_24_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_200_22_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_128_21_6 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_119_17_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_110_16_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assign_97_15_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun assert_85_14_8 ((Array Int Int) Int Int Int ) Bool)
(declare-fun while_122_12_6 ((Array Int Int) Int Int Int ) Bool)
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
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_42_11_6 a  v  N  i ) (while_122_12_6 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_122_12_6 a  v  N  i ) (< i  N )) (assert_85_14_8 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_122_12_6 a  v  N  i ) (not (< i  N ))) (assign_128_21_6 a  v  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==0))
(assert (forall ((k Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_85_14_8 a  v  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (mod (select a  k ) 2) 0)))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_85_14_8 a  v  N  i ) (assign_97_15_8 a  v  N  i ))))
;
;(assign)  v := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_97_15_8 a  v  N  i ) (arrayassign_110_16_8 a  rnd N  i ))))
;
;(aassign) a[i] := (v*2)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (arrayassign_110_16_8 a  v  N  i ) (assign_119_17_8 (store a  i  (* v  2)) v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_119_17_8 a  v  N  i ) (while_122_12_6 a  v  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_128_21_6 a  v  N  i ) (while_200_22_6 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_200_22_6 a  v  N  i ) (< i  N )) (assert_171_24_8 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_200_22_6 a  v  N  i ) (not (< i  N ))) (assign_206_30_6 a  v  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>((a[k]%2)==1))
(assert (forall ((k Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_171_24_8 a  v  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (mod (select a  k ) 2) 1)))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_171_24_8 a  v  N  i ) (arrayassign_188_25_8 a  v  N  i ))))
;
;(aassign) a[i] := (a[i]+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (arrayassign_188_25_8 a  v  N  i ) (assign_197_26_8 (store a  i  (+ (select a  i ) 1)) v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_197_26_8 a  v  N  i ) (while_200_22_6 a  v  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_206_30_6 a  v  N  i ) (while_278_31_6 a  v  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_278_31_6 a  v  N  i ) (< i  N )) (assert_249_33_8 a  v  N  i ))))
(assert (forall ((a (Array Int Int)) (v Int) (N Int) (i Int) ) ( => ( and (while_278_31_6 a  v  N  i ) (not (< i  N ))) (end a  v  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>((a[k]%2)==1))
(assert (forall ((k Int) (i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_249_33_8 a  v  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (mod (select a  k ) 2) 1)))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_249_33_8 a  v  N  i ) (assert_266_34_8 a  v  N  i ))))
;
;(assert)  ((a[i]%2)==1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_266_34_8 a  v  N  i ) (= (mod (select a  i ) 2) 1))))
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assert_266_34_8 a  v  N  i ) (assign_275_35_8 a  v  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (v Int) (a (Array Int Int)) ) ( => (assign_275_35_8 a  v  N  i ) (while_278_31_6 a  v  N  (+ i  1)))))
(check-sat)
