(in-package #:aoc.2025.day02)

(defun read-input (input-file)
  (mapcar #'(lambda (str) (str:split #\- str))
          (str:split #\, (uiop:read-file-string input-file))))

(defun string->int (pair)
  (cons (parse-integer (car pair))
        (parse-integer (cadr pair))))

(defun generate-range (pair)
  (destructuring-bind (beg . end) pair
    (loop for i from beg to end collect i)))

(defun symmetric-p (num)
  (let* ((str (princ-to-string num))
         (middle (floor (length str) 2))
         (first (subseq str 0 middle))
         (second (subseq str middle)))
    (if (string= first second)
        num)))

(defun solve-part1 (input-file)
  "Solve part 1 of day 01."
  (loop for str-pair in (read-input input-file)
        for (beg . end) = (string->int str-pair)
        sum (loop for num from beg to end
                  when (symmetric-p num)
                    sum num)))

(defun solve-part2 (input-file)
  "Solve part 2 of day 01."
  (loop for str-pair in (read-input input-file)
        for (beg . end) = (string->int str-pair)
        sum (loop for num from beg to end
                  when (repeating-p num)
                    sum num)))

(defun repeating-p (num)
  (let* ((str (princ-to-string num))
         (middle (floor (length str) 2)))
    (loop for len from 1 to middle
          when (and (zerop (mod (length str) len))
                    (all-equal-p (split-every str len)))
            collect num)))

(defun all-equal-p (list)
  (or (null list)
      (every #'(lambda (x) (string= x (car list)))
             (cdr list))))

(defun split-every (str len)
  (loop for i from 0 below (length str) by len
        collect (subseq str i (+ i len))))

(defun test-input ()
  (aoc:input-file 2025 2 :test t))

(defun puzzle-input ()
  (aoc:input-file 2025 2))
