; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers

(define (square n) 
  (* n n))

(define (maximum a b)
  (if (> a b) a b))

(define (sum-of-max-two x y z)
  (cond ((> x y) (+ (square x) (square (maximum y z))))
        ((> y x) (+ (square y) (square (maximum x z))))
        (else (> z x) (+ (square z) (square (maximum x y))))))