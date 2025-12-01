(in-package #:aoc)

(defparameter *input-dir*
  (asdf:system-relative-pathname :advent-of-code "inputs/"))

(defun input-file (year day &key test)
  "Get the path to an input file for a given year and day.
   If :test is t, returns the test input file instead."
  (let ((filename (if test
                      (format nil "day~2,'0d-test.txt" day)
                      (format nil "day~2,'0d.txt" day))))
    (merge-pathnames filename
                     (merge-pathnames (format nil "~d/" year) *input-dir*))))
