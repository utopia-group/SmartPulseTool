(set-option :produce-proofs true)
(set-info :source "{ SMT-COMP'06 organizers }")
(set-info :status sat)
(set-info :category "{ check }")
(set-info :difficulty "{ 0 }")
(set-logic QF_LRA)
(declare-fun x1 () Real)
(declare-fun x2 () Real)
(declare-fun x3 () Real)
(declare-fun x4 () Real)
(declare-fun x5 () Real)
(declare-fun x6 () Real)
(assert (and (or (= x1 (/ 1 100000)) (= x1 (/ 1 100002))) (or (= x2 (* (/ 1 120030) x1)) (= x2 (* (/ 1 10003) x1))) (or (= x3 (* (/ 1 100310) x2)) (= x3 (* (/ 1 199900) x2))) (or (= x4 (* (/ 1 400000) x3)) (= x4 (* (/ 1 800000) x3))) (or (= x5 (* (- (/ 1 40000)) x4)) (= x5 (* (- (/ 1 8000)) x4))) (or (= x6 (* (- (/ 1 3000)) x5)) (= x6 (* (- (/ 1 2000)) x5))) (> x6 0)))
(check-sat)
(exit)