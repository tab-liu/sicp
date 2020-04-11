(define (make-monitored f)
  (let ((count 0))
    (lambda (input)
      (cond ((eq? input 'how-many-calls?) count)
            ((eq? input 'rest-count)
                (begin (set! count 0) count))
             (else (begin (set! count (+ count 1))
                          (f input)))))))

(define s (make-monitored sqrt))
(s 100)
(s 'how-many-calls?)
