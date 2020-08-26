(set-option :produce-proofs true)
(set-option :interpolant-check-mode true)

(set-logic QF_AX)
(declare-sort U 0)
(declare-fun i () U)
(declare-fun j () U)
(declare-fun k1 () U)
(declare-fun k2 () U)
(declare-fun v1 () U)
(declare-fun v2 () U)
(declare-fun x1 () U)
(declare-fun x2 () U)
(declare-fun a () (Array U U))
(declare-fun b () (Array U U))
(declare-fun s1 () (Array U U))
(declare-fun s2 () (Array U U))

(assert (! (and	(not (= v1 v2)) (and (= k1 x1) (and (= k2 x2)
(= s1 (store (store s2 k1 v1) k2 v2))))) :named A))
(assert (! (and	(not (= (select a i) (select b j))) (and (= i j) (and (= b s2)
(and (= a s1) (and (not (= i x1)) (not (= i x2))))))) :named B))

(check-sat)
(set-option :print-terms-cse false)
(get-proof)
(get-interpolants A B)
(exit)