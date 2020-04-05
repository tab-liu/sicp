(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

(define (weight? structure)
  (not (pair? structure)))

(define (branch-weight branch)
  (let ((structure (branch-structure branch)))
    (if (weight? structure)
      structure
      (+ (branch-weight (left-branch structure))
         (branch-weight (right-branch structure))))))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (balanced? mobile)
  (let ((left (left-branch mobile))
        (right (right-branch mobile)))
    (and (= (* (branch-length left) (branch-weight left))
            (* (branch-length right) (branch-weight right)))
         (if (pair? (branch-structure left))
            (balanced? (branch-structure left))
            true)
         (if (pair? (branch-structure right))
            (balanced? (branch-structure right))
            true))))

; test
;         b3--(1)--m2----(2)----b4
;          |                    |
; b1--(1)--m1----(2)----b2      6
;  |                    |
;  8                    4

(define b1 (make-branch 1 8))
(define b2 (make-branch 2 4))
(define m1 (make-mobile b1 b2))
(define b3 (make-branch 1 m1))
(define b4 (make-branch 2 6))
(define m2 (make-mobile b3 b4))

(total-weight m2)
(balanced? m2)

; if use 'cons' to replace 'list' in 'make-*'
; just replace 'cadr' to 'cdr' while get right element
