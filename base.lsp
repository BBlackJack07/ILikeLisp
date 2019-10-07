(load 'pow.lsp)

(defun read-base-2 (bits)
  (let ((ret 0) (b 0) (i 0))
    (loop
      (setq b (mod bits 10))
      (decf bits b)
      (setq bits (/ bits 10))
      (if (= b 1) (incf ret (pow 2 i)))
      (incf i 1)
      (if (= bits 0) (return))
      )
    (return-from read-base-2 ret)
    )
  )

(defun write-base-2 (num)
  (let ((len (+ (maxPow num 2) 1)) (bits))
    (setq bits (make-array len :initial-element '0 ))
    (loop
      (if (= num 0) (return))
      (setq x (maxPow num 2))
      (decf num (pow 2 x))
      (setf (aref bits (- len 1 x)) 1)
      )
    (return-from write-base-2 bits)
    )
  )

(defun print-array (a)
  (loop for i from 0 to (- (length a) 1) do (write (aref a i)))
  )

