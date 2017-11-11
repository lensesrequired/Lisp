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