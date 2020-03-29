; Exercise 1.22 1.23 1.24
(load "sicp.1.21.scm")
(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes n)
  (define (next n)
    (if (even? n) (1+ n) (+ n 2)))
  (define st (runtime))
  (define (report-prime n)
    (newline)
    (display n)
    (display " *** ")
    (display (- (runtime) st)))

  (define (search n c)
    (cond ((= c 0)
            (newline)
            (display "DONE"))
          ((prime? n)
            (report-prime n)
            (search (next n) (-1+ c)))
          (else
            (search (next n) c))))
  (search n 300))

; test
(search-for-primes 1000000)
