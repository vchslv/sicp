(define (square a) (* a a))

(define (sumsquare b c) (+ (square b) (square c)))

(define (f x y z)
  (cond ((and (> x z) (> y z)) (sumsquare x y))
        ((and (> y x) (> z x)) (sumsquare y z))
        ((and (> x y) (> z y)) (sumsquare x z))))

(check-equal? (f 1 2 3) 13)

(check-equal? (f 5 4 3) 41)

(check-equal? (f 1 -2 3) 10)
