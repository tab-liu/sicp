(define (exp b n)
  (define (exp-iter a b n)
    (cond ((= n 0) a)
          ((even? n) (exp-iter a (square b) (/ n 2)))
          (else (exp-iter (* a b) b (-1+ n)))))
  (exp-iter 1 b n))

; test
(= (exp 2 3) 8)
(= (exp 3 3) 27)
(= (exp 2 8) 256)
