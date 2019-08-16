; --- Question ---
; Define a procedure that takes three numbersas arguments and
; returns the sum of the squares of the two larger numbers.

; --- Answer ---

(define (ex13 a b c)
    (+ (square (max a b))
       (square (max (min a b) c))))

; --- test ---
(= (ex13 2 4 1) 20)
(= (ex13 1 0 5) 26)
