;Average of two Numbers
(define (average a b)
  (/ (+ a b) 2))

;Square of a Number
(define (square x)
  (* x x))

(define (close-enough? x y epsilon)
  (< (abs (- x y)) epsilon))

;Generic Try Function - Useful for more stuff
(define (try good-enough? improve guess x)
  (if (good-enough? guess x) guess
    (try good-enough? improve (improve guess x) x)))

;Generic User Input Function
(define (user-input message)
  (display message) (newline)
  (read))