;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (square a) 
  (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (larger a b)
  (if (> a b) a b))

(define (proc a b c)
  (if (= a (larger a b))
      (sum-of-squares a (larger b c))
      (sum-of-squares b (larger a c))))

(proc 3 4 1)
         
  