; A function f is defined by the rule that (f)n = n if n < 3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)
; Write a procedure that copmputes f by means of a recursive process. Write a procedure that computes f by means of an
; iterative process

; Recursive process
(define (func n)
  (cond ((< n 3) n)
  (else (+ (func(- n 1))
          (* 2 (func(- n 2)))
          (* 3 (func(- n 3)))))))

; Iterative process
(define (func-two n)
  (if (< n 3)
    n
    (func-iter 2 1 0 n)))

(define (func-iter a b c count)
  (if (< count 3) 
    a
    (func-iter (+ a ( * 2 b) (* 3 c))
      a
      b
      (- count 1))))