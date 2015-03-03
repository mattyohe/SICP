;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-1.11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (f n)
  (cond ((< n 3) n) 
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2))) 
                 (* 3 (f (- n 3)))))))

(f 4)
(f 5)
(f 6)
(f 7)
(f 8)

;; f(n-1) + 2f(n-2) + 3f(n-3) if  n>=3

(define (iter a b c count)
    (if (= count 0)
        a
        (iter b c (+ c (* 2 b) (* 3 a)) (- count 1 ))))

(iter 0 1 2 4)
(iter 0 1 2 5)
(iter 0 1 2 6)
(iter 0 1 2 7)
(iter 0 1 2 8)

