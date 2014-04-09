;; A function f is defined by the rule that
;; f(n) = n if n < 3, and
;; f(n) = f(n - 1) + 2*f(n - 2) + 3*f(n - 3) if n >= 3
;; Write a recursive and an interative procedure for computing f.

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(define (f n)
  (define (f-iter a b c n)
    (cond ((= n 0) c)
          (else
           (f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1)))))
  (f-iter 2 1 0 n))
  
