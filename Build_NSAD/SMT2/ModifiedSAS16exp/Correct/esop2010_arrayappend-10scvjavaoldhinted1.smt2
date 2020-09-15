;Number of predicates (nodes) = 15
;Number of variables = 5
;Number of clauses = 21
;
(set-logic HORN)
(declare-fun assign_295_27_11 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_286_26_11 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_265_25_11 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_298_24_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_212_23_8 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_206_21_8 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_161_19_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_152_18_5 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_135_17_12 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_164_16_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_85_15_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_79_12_8 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_67_11_1 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => true (start b  a  Nb  Na  i ))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (start b  a  Nb  Na  i ) (assign_67_11_1 b  a  Nb  Na  i ))))
;
;(assign)  Na := Support.random()
(assert (forall ((rnd Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_67_11_1 b  a  Nb  Na  i ) (assign_79_12_8 b  a  Nb  rnd i ))))
;
;(assign)  Nb := Support.random()
(assert (forall ((rnd Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_79_12_8 b  a  Nb  Na  i ) (assign_85_15_1 b  a  rnd Na  i ))))
;
;(assign)  i := Na
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_85_15_1 b  a  Nb  Na  i ) (while_164_16_1 b  a  Nb  Na  Na ))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => ( and (while_164_16_1 b  a  Nb  Na  i ) (< i  (+ Na  Nb ))) (assert_135_17_12 b  a  Nb  Na  i ))))
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => ( and (while_164_16_1 b  a  Nb  Na  i ) (not (< i  (+ Na  Nb )))) (assert_206_21_8 b  a  Nb  Na  i ))))
;
;(assert)  (((Na<=k)&&(k<i))=>(a[k]==b[(k-Na)]))
(assert (forall ((k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_135_17_12 b  a  Nb  Na  i ) (=> (and (<= Na  k ) (< k  i )) (= (select a  k ) (select b  (- k  Na )))))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_135_17_12 b  a  Nb  Na  i ) (arrayassign_152_18_5 b  a  Nb  Na  i ))))
;
;(aassign) a[i] := b[(i-Na)]
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (arrayassign_152_18_5 b  a  Nb  Na  i ) (assign_161_19_5 b  (store a  i  (select b  (- i  Na ))) Nb  Na  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_161_19_5 b  a  Nb  Na  i ) (while_164_16_1 b  a  Nb  Na  (+ i  1)))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ((k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_206_21_8 b  a  Nb  Na  i ) (=> (and (<= Na  k ) (< k  (+ Na  Nb ))) (= (select a  k ) (select b  (- k  Na )))))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_206_21_8 b  a  Nb  Na  i ) (assign_212_23_8 b  a  Nb  Na  i ))))
;
;(assign)  i := Na
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_212_23_8 b  a  Nb  Na  i ) (while_298_24_1 b  a  Nb  Na  Na ))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => ( and (while_298_24_1 b  a  Nb  Na  i ) (< i  (+ Na  Nb ))) (assert_265_25_11 b  a  Nb  Na  i ))))
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => ( and (while_298_24_1 b  a  Nb  Na  i ) (not (< i  (+ Na  Nb )))) (end b  a  Nb  Na  i ))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ((k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_265_25_11 b  a  Nb  Na  i ) (=> (and (<= Na  k ) (< k  (+ Na  Nb ))) (= (select a  k ) (select b  (- k  Na )))))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_265_25_11 b  a  Nb  Na  i ) (assert_286_26_11 b  a  Nb  Na  i ))))
;
;(assert)  (a[i]==b[(i-Na)])
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_286_26_11 b  a  Nb  Na  i ) (= (select a  i ) (select b  (- i  Na ))))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_286_26_11 b  a  Nb  Na  i ) (assign_295_27_11 b  a  Nb  Na  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_295_27_11 b  a  Nb  Na  i ) (while_298_24_1 b  a  Nb  Na  (+ i  1)))))
(check-sat)
