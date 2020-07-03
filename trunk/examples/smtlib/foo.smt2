(set-option :produce-proofs true)
(set-info :status sat)
(set-info :difficulty "{ 0 }")
(set-logic AUFLIRA)
(declare-fun x () Real)
(declare-fun y () Real)
(assert (! (< 1.0 (- (* 3.0 x) (* 3.0 y))) :named IP_0))
(assert (! (< (- (* 3.0 x) (* 3.0 y)) 2.0) :named IP_1))
(check-sat)
(get-interpolants IP_0 IP_1)
(exit)
