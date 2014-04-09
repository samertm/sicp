(define (rec-fib num)
  (cond ((= num 0) 0)
        ((= num 1) 1)
        (else (+ (fib (- num 1))
                 (fib (- num 2))))))

(define (iter-fib num)
  (define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))
  (fib-iter 1 0 num))
