;; exponent functions in O(n) and O(ln(n))

(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(define (iterexpt b n)
  (define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter b (- counter 1) (* b product))))
  (expt-iter b n 1))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

