(set-option :produce-proofs true)
(set-logic AUFLIA)
(declare-sort U 0)
(declare-fun a () U)
(declare-fun b () U)
(declare-fun s1 () U)
(declare-fun s2 () U)
(declare-fun c1 () U)
(declare-fun c2 () U)
(assert (forall ((x U)) (or (= x c1) (= x c2))))
(assert (distinct c1 c2))
(assert (distinct s1 s2))
(assert (and (distinct b s1) (distinct b s2)))
(check-sat)
(exit)