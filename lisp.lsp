(defun
  second   (l)
    (car (cdr l))
)

(defun
   third (l)
     (car (cdr (cdr l)))
)

(defun
  list3 (l1 l2 l3)
    (cons l1 (cons l2 (cons l3 nil)))
)

(defun
  cube (a)
    (* a (* a a))
)

(defun
  one (l)
    (cond
      ((null l) nil)
      ((null (cdr l)) t)
      (t nil)
    )
)

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
  power (a b)
    (cond
      ((eq b 1) a)
      (t (* a (power a (- b 1))))
    )
)

(defun
  swap1&3 (l)
    (cons (third l) 
      (cons (second l)
        (cons (car l)
          (cdr (cdr (cdr l)))
        )
      )
    )
)

(defun
  count (a l)
    (cond
      ((null l) 0)
      ((eq (car l) a) (+ 1 (count a (cdr l))))
      (t (count a (cdr l)))
    )
)

(defun
  or (x y)
    (cond
      (x t)
      (y t)
     )
)

(defun
  and (x y)
    (cond
      (x y)
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
  equalsimp (l1 l2)  ;return whether 2 simple lists are equal
    (cond
      ((null l1) (null l2))
      ((null l2) nil)
      ((eq (car l1) (car l2)) (equalsimp (cdr l1) (cdr l2)))
      (t nil)
     )
 )

(defun
  equal (x y) ;returns whether two parameters are equal
    (cond
      ((atom x) (eq x y))
      ((atom y) nil)
      ((equal (car x) (car y)) (equal (cdr x) (cdr y)))
      (t nil)
     )
 )

(defun
  mod3 (n)
  (cond
    ((>= n 3) (mod3 (- n 3)))
    (t n)
   )
 )

(defun
  nth (n l)
  (cond
    ((> n 1) (nth (- n 1) (cdr l)))
    (t (car l))
   )
 )

(defun
  remove (a l)
  (cond
    ((eq (car l) a) (cdr l))
    (t (cons (car l) (remove a (cdr l))))
   )
 )

(defun
  min (l)
  (cond
    ((eq (length l) 1) (car l))
    ((> (car l) (car (cdr l))) (min (cdr l)))
    (t (min (cons (car l) (cdr (cdr l)))))
   )
 )

;BROKEN
(defun
  flatten (l)
    (cond
      ((atom (car l)) (cons (car l) (flatten (cdr l))))
      (t (cons (flatten (car l)) (cons (flatten (cdr l)) nil)))
     )
 )

(defun
  flatten (l)
    (cond
      ((atom (car l)) (car l))
      (t (cons (flatten (car l)) (cons (flatten (cdr l)) nil)))
     )
 )