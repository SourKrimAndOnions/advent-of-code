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

(defun read-input (year day &key test)
  "Read raw input for a year/day as a string."
  (uiop:read-file-string (input-file year day :test test)))

(defun read-lines (year day &key test)
  "Read input as a list of lines."
  (uiop:read-file-lines (input-file year day :test test)))

(defun read-integers (year day &key test)
  "Read input as a list of integers."
  (mapcar #'parse-integer (read-lines year day :test test)))
