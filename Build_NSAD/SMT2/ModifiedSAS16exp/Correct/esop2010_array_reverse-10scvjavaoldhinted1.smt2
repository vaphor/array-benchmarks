;Number of predicates (nodes) = 18
;Number of variables = 4
;Number of clauses = 25
;
(set-logic HORN)
(declare-fun assign_296_29_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_287_28_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_263_27_12 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_299_26_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_216_25_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_207_22_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_198_21_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_178_20_12 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_210_19_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_131_18_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_122_15_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun arrayassign_113_14_5 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assert_99_13_12 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun while_125_12_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_58_11_8 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun assign_52_9_1 ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int ) Bool)
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => true (start a_copy  a  N  i ))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (start a_copy  a  N  i ) (assign_52_9_1 a_copy  a  N  i ))))
;
;(assign)  N := Support.random()
(assert (forall ((rnd Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_52_9_1 a_copy  a  N  i ) (assign_58_11_8 a_copy  a  rnd i ))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_58_11_8 a_copy  a  N  i ) (while_125_12_1 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_125_12_1 a_copy  a  N  i ) (< i  N )) (assert_99_13_12 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_125_12_1 a_copy  a  N  i ) (not (< i  N ))) (assign_131_18_1 a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[k]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_99_13_12 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a_copy  k ) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_99_13_12 a_copy  a  N  i ) (arrayassign_113_14_5 a_copy  a  N  i ))))
;
;(aassign) a_copy[i] := a[i]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_113_14_5 a_copy  a  N  i ) (assign_122_15_5 (store a_copy  i  (select a  i )) a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_122_15_5 a_copy  a  N  i ) (while_125_12_1 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_131_18_1 a_copy  a  N  i ) (while_210_19_1 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_210_19_1 a_copy  a  N  i ) (< i  N )) (assert_178_20_12 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_210_19_1 a_copy  a  N  i ) (not (< i  N ))) (assign_216_25_1 a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<i))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_178_20_12 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  i )) (= (select a_copy  (- (- N  k ) 1)) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_178_20_12 a_copy  a  N  i ) (arrayassign_198_21_5 a_copy  a  N  i ))))
;
;(aassign) a[i] := a_copy[((N-i)-1)]
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (arrayassign_198_21_5 a_copy  a  N  i ) (assign_207_22_5 a_copy  (store a  i  (select a_copy  (- (- N  i ) 1))) N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_207_22_5 a_copy  a  N  i ) (while_210_19_1 a_copy  a  N  (+ i  1)))))
;
;(assign)  i := 0
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_216_25_1 a_copy  a  N  i ) (while_299_26_1 a_copy  a  N  0))))
;
;(while)   while((i<N))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_299_26_1 a_copy  a  N  i ) (< i  N )) (assert_263_27_12 a_copy  a  N  i ))))
(assert (forall ((a_copy (Array Int Int)) (a (Array Int Int)) (N Int) (i Int) ) ( => ( and (while_299_26_1 a_copy  a  N  i ) (not (< i  N ))) (end a_copy  a  N  i ))))
;
;(assert)  (((0<=k)&&(k<N))=>(a_copy[((N-k)-1)]==a[k]))
(assert (forall ((k Int) (i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_263_27_12 a_copy  a  N  i ) (=> (and (<= 0 k ) (< k  N )) (= (select a_copy  (- (- N  k ) 1)) (select a  k ))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_263_27_12 a_copy  a  N  i ) (assert_287_28_5 a_copy  a  N  i ))))
;
;(assert)  (a[i]==a_copy[((N-i)-1)])
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_287_28_5 a_copy  a  N  i ) (= (select a  i ) (select a_copy  (- (- N  i ) 1))))))
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assert_287_28_5 a_copy  a  N  i ) (assign_296_29_5 a_copy  a  N  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (N Int) (a (Array Int Int)) (a_copy (Array Int Int)) ) ( => (assign_296_29_5 a_copy  a  N  i ) (while_299_26_1 a_copy  a  N  (+ i  1)))))
(check-sat)
