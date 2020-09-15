;Number of predicates (nodes) = 15
;Number of variables = 5
;Number of clauses = 21
;
(set-logic HORN)
(declare-fun assign_27_11_295 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_26_11_286 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_25_11_265 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_24_1_298 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_23_8_212 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_21_8_206 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_19_5_161 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun arrayassign_18_5_152 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assert_17_12_135 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun while_16_1_164 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_15_1_85 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_12_8_79 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun assign_11_1_67 ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun end ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(declare-fun start ((Array Int Int) (Array Int Int) Int Int Int ) Bool)
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => true (start b  a  Nb  Na  i ))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (start b  a  Nb  Na  i ) (assign_11_1_67 b  a  Nb  Na  i ))))
;
;(assign)  Na := Support.random()
(assert (forall ((rnd Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_11_1_67 b  a  Nb  Na  i ) (assign_12_8_79 b  a  Nb  rnd i ))))
;
;(assign)  Nb := Support.random()
(assert (forall ((rnd Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_12_8_79 b  a  Nb  Na  i ) (assign_15_1_85 b  a  rnd Na  i ))))
;
;(assign)  i := Na
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_15_1_85 b  a  Nb  Na  i ) (while_16_1_164 b  a  Nb  Na  Na ))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => ( and (while_16_1_164 b  a  Nb  Na  i ) (< i  (+ Na  Nb ))) (assert_17_12_135 b  a  Nb  Na  i ))))
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => ( and (while_16_1_164 b  a  Nb  Na  i ) (not (< i  (+ Na  Nb )))) (assert_21_8_206 b  a  Nb  Na  i ))))
;
;(assert)  (((Na<=k)&&(k<i))=>(a[k]==b[(k-Na)]))
(assert (forall ((k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_17_12_135 b  a  Nb  Na  i ) (=> (and (<= Na  k ) (< k  i )) (= (select a  k ) (select b  (- k  Na )))))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_17_12_135 b  a  Nb  Na  i ) (arrayassign_18_5_152 b  a  Nb  Na  i ))))
;
;(aassign) a[i] := b[(i-Na)]
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (arrayassign_18_5_152 b  a  Nb  Na  i ) (assign_19_5_161 b  (store a  i  (select b  (- i  Na ))) Nb  Na  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_19_5_161 b  a  Nb  Na  i ) (while_16_1_164 b  a  Nb  Na  (+ i  1)))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ((k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_21_8_206 b  a  Nb  Na  i ) (=> (and (<= Na  k ) (< k  (+ Na  Nb ))) (= (select a  k ) (select b  (- k  Na )))))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_21_8_206 b  a  Nb  Na  i ) (assign_23_8_212 b  a  Nb  Na  i ))))
;
;(assign)  i := Na
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_23_8_212 b  a  Nb  Na  i ) (while_24_1_298 b  a  Nb  Na  Na ))))
;
;(while)   while((i<(Na+Nb)))
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => ( and (while_24_1_298 b  a  Nb  Na  i ) (< i  (+ Na  Nb ))) (assert_25_11_265 b  a  Nb  Na  i ))))
(assert (forall ((b (Array Int Int)) (a (Array Int Int)) (Nb Int) (Na Int) (i Int) ) ( => ( and (while_24_1_298 b  a  Nb  Na  i ) (not (< i  (+ Na  Nb )))) (end b  a  Nb  Na  i ))))
;
;(assert)  (((Na<=k)&&(k<(Na+Nb)))=>(a[k]==b[(k-Na)]))
(assert (forall ((k Int) (i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_25_11_265 b  a  Nb  Na  i ) (=> (and (<= Na  k ) (< k  (+ Na  Nb ))) (= (select a  k ) (select b  (- k  Na )))))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_25_11_265 b  a  Nb  Na  i ) (assert_26_11_286 b  a  Nb  Na  i ))))
;
;(assert)  (a[i]==b[(i-Na)])
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_26_11_286 b  a  Nb  Na  i ) (= (select a  i ) (select b  (- i  Na ))))))
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assert_26_11_286 b  a  Nb  Na  i ) (assign_27_11_295 b  a  Nb  Na  i ))))
;
;(assign)  i := (i+1)
(assert (forall ((i Int) (Na Int) (Nb Int) (a (Array Int Int)) (b (Array Int Int)) ) ( => (assign_27_11_295 b  a  Nb  Na  i ) (while_24_1_298 b  a  Nb  Na  (+ i  1)))))
(check-sat)
