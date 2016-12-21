#lang racket

;; example taken from the feature-profiler docs

(require profile-flame-graph
         racket/port)

(define (divisible x n)
  (= 0 (modulo x n)))

(define (fizzbuzz n)
  (for ([i (range n)])
    (cond [(divisible i 15) (printf "FizzBuzz\n")]
          [(divisible i 5)  (printf "Buzz\n")]
          [(divisible i 3)  (printf "Fizz\n")]
          [else             (printf "~a\n" i)])))

(profile (parameterize ([current-output-port (open-output-nowhere)])
           (fizzbuzz 10000000))
         #:svg-path "fizzbuzz.svg"
         #:preview? #t
         #:width 1000
         #:font-size 18)
