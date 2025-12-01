(in-package #:aoc.2025.day01)

(defun parse-instructions (line)
  (cons (char line 0)
        (parse-integer line :start 1)))

(defun apply-instructions (instructions)
  (loop for (direction . amount) in instructions
        for pos = 50 then new-pos
        for new-pos = (case direction
                        (#\L (mod (- pos amount) 100))
                        (#\R (mod (+ pos amount) 100)))
        collect new-pos))

(defun read-input (input-file)
  (mapcar #'parse-instructions (uiop:read-file-lines input-file)))

(defun solve-part1 (input-file)
  "Solve part 1 of day 01."
  (count 0 (apply-instructions (read-input input-file))))

(defun solve-part2 (input-file)
  "Solve part 2 of day 01."
  (declare (ignore input-file))
  nil)

(defun test-input ()
  (aoc:input-file 2025 1 :test t))

(defun puzzle-input ()
  (aoc:input-file 2025 1))
