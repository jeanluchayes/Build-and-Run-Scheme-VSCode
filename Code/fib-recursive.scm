;Recursive Fibonannci

(load "Functions.scm")

(define (fib-recursive n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
  (else
    (+ (fib-recursive (- n 1)) (fib-recursive (- n 2))))))


(print (fib-recursive(user-input "Please enter a Number")))
    