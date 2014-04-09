;; pascal's triangle, computed recursively.
;; for simplicity's sake, index and row are both 0-indexed

(define (pascal-element index row)
  (cond ((= index 0) 1)
        ((< index 0) 0)
        ((= index row) 1)
        ((> index row) 0)
        (else
         (+ (pascal-element index (- row 1)) (pascal-element (- index 1) (- row 1))))))
