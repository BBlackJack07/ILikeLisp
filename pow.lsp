(defun pow (a n)
  (if (= n 0) (return-from pow 1))
  (if (< n 0) 
    (return-from pow (/ 1 (pow a (- n))))
    )
  (* a (pow a (- n 1)))
  )

(defun maxPow (a b)
  (let ((n 0))
    (loop
      (incf n 1)
      (when (< a (pow b n)) (return))
      )
    (return-from maxPow (- n 1))
    )
  ) 

