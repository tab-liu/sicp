; Exercise 1.12
; --- Question ---
; The following pattern of numbers is called Pascal's triangle.
; 1
; 1 1
; 1 2 1
; 1 3 3 1
; 1 4 6 4 1
; ... ... ...

; The numbers at the edge of the triangle are all 1, and each number inside the
; triangle is the sum of the two numbers above it. Write a procedure that
; computes elements of Pascal's triangle by means of a recursive process.

; --- Answer ---

(define (pascal r c)
  (cond ((= c 0) 1)
        ((= c r) 1)
        (else (+ (pascal (-1+ r) c)
                 (pascal (-1+ r) (-1+ c))))))

; test
(= (pascal 0 0) 1)
(= (pascal 7 0) 1)
(= (pascal 2 1) 2)
(= (pascal 4 2) 6)
