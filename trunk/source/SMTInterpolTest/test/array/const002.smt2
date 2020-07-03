(set-option :produce-proofs true)
(set-option :proof-check-mode true)

(set-logic QF_ALIA)
(declare-sort U 0)
(declare-fun v1 () U)
(declare-fun v2 () U)
(declare-fun i () Int)
(declare-fun w () U)
(declare-fun a () (Array Int U))

(assert (= a (store ((as const (Array Int U)) v1) i w)))
(assert (= a (store ((as const (Array Int U)) v2) i w)))
(assert (not (= v1 v2)))
(check-sat)
(get-proof)
(exit)