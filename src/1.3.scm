(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (sum-of-squares-of-two-largest x y z)
  (cond ((and (<= x y) (<= x z)) (+ (* y y) (* z z)))
        ((and (<= y x) (<= y z)) (+ (* x x) (* z z)))
        (else (+ (* x x) (* y y)))))