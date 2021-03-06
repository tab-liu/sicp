(define (make-account balance passwd)
  (let ((times 0))
    (define (withdraw amount)
      (if (>= balance amount)
        (begin (set! balance (- balance amount))
              balance)
        "Insufficient funds"))
    (define (deposit amount)
      (set! balance (+ balance amount))
      balance)
    (define (dispatch pass m)
      (cond ((>= times 7) (lambda (x) "call-the-cops"))
            ((not (eq? pass passwd))
              (begin (set! times (+ 1 times)) (lambda (x) "Incorrect passwd")))
            (else (begin (set! times 0)
              (cond ((eq? m 'withdraw ) withdraw)
                    ((eq? m 'deposit ) deposit)
                    (else (error "Unknown request -- MAKE-ACCOUNT" m)))))))
  dispatch))

(define acc (make-account 100 'hange ))
((acc 'hange 'withdraw ) 10)
((acc 'hange 'deposit ) 1000)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
((acc 'haha 'withdraw ) 10)
