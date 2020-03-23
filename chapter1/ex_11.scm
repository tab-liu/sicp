; Exercise 1.11
; --- Question ---
; A function `f` is defined by the rule that
; f(n) = n; if n < 3,
; f(n) = f(n-1) + 2f(n-2) + 3f(n-3); n>=3
; Write a procedure that computes `f` means of a recursive process.
; Write a procedure that computes `f` means of an iterative process.

; --- Answer ---

; recursive

(define (func-recursive n)
  (if (< n 3)
      n
      (+ (func-recursive (- n 1))
         (* 2 (func-recursive (- n 2)))
         (* 3 (func-recursive (- n 3))))))

; iterative
(define (func-iterative n)
  (define (iter a b c counter)
    (if (= counter n)
        c
        (iter b c (+ c (* 2 b) (* 3 a)) (1+ counter))))
  (if (< n 3)
      n
      (iter 0 1 2 2)))


; test
(= (func-recursive 0) 0)
(= (func-recursive 1) 1)
(= (func-recursive 2) 2)
(= (func-recursive 3) 4)
(= (func-recursive 4) 11)
(= (func-recursive 5) 25)

(= (func-iterative 6) 59)
(func-iterative 6)
(= (func-iterative 7) 142)

