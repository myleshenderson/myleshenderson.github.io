;code from previous sections
(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (show-diff x)
  (- x (square (sqrt x))))

;write a new version of good-enough? that uses the change in guess as a stopping condition
(define (good-enough?-new guess x)
  (< (abs (- guess (improve guess x))) 0.001))

;add the new version of good-enough? to the sqrt procedure
(define (sqrt x)
  (sqrt-iter-new 1.0 x))

(define (sqrt-iter-new guess x)
  (if (good-enough?-new guess x)
      guess
      (sqrt-iter-new (improve guess x) x)))