(set-info :souce |A tight rhombus without solutions.  This benchmark is designed to be hard for cut engines.
Authors: The SMTInterpol team|)
(set-info :status unsat)
(set-info :category "crafted")
(set-logic QF_LIRA)
(declare-fun x () Int)
(declare-fun y () Real)
(declare-fun z () Int)
(assert (and
	(<= 0 (- (* 2730000000000 x) (* 2450000000001 y)))
	(<= (- (* 2730000000000 x) (* 2450000000001 y)) 9999999999)
	(<= 1 (- (* 2730000000001 x) (* 2450000000000 y)))
	(<= (- (* 2730000000001 x) (* 2450000000000 y)) 10000000000)))
(assert (<= 0 (- y z)))
(assert (<= (- y z) (- (/ 60000000009 2450000000000) (/ 1 100000000000))))
(check-sat)
(exit)
