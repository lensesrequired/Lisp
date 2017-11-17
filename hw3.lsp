(defun
  length (l)
    (cond
      ((null l) 0)
      (t (+ 1 (length (cdr l))))
    )
)

(defun
  last (l)
    (cond
      ((null (cdr l)) l)
      (t (last (cdr l)))
    )
)

(defun
  pred (a l)
  (cond
    ((eq a (last l)) (car l))
  	((eq a (car l)) (car (cdr l)))
    (t (pred a (cdr l)))
   )
 )

(defun
  succ (a l)
  (cond
    ((eq a (car l)) (last l))
    ((eq a (car (cdr l))) (car l))
    (t (succ a (cdr l)))
   )
 )

(defun
  mod (a b)
  (cond
    ((>= a b) (mod (- a b) b))
    (t a)
   )
 )

(defun
  append (l1 l2)
    (cond
      ((null l1) l2)
      (t (cons (car l1) (append (cdr l1) l2)))
     )
 )

(defun
  rotn (l n)
  (cond
    ((= n 0) l)
    ((< n 0) (rotn l 
      (+ (length l) 
        (* -1 (mod (* -1 (- n 1)) (length l))))
       )
     )
    ((> n (- (length l) 1)) (rotn l (mod n (length l))))
    (t (rotn (append (cdr l) (cons (car l) nil)) (- n 1)))
   )
 )