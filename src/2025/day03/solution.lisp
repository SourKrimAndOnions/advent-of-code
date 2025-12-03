(in-package #:aoc.2025.day03)

(defun read-input (input-file)
  (uiop:read-file-lines input-file))


(defun solve-part1 (input-file)
  "Solve part 1 of day 03."
  (loop for line in (read-input input-file)
        sum (loop for i from (1- (length line)) downto 0
                  for max-tail = 0 then (max max-tail num)
                  for num = (digit-char-p (char line i))
                  when (> max-tail 0)
                    maximize (+ (* 10 num) max-tail))))

(defun solve-part2 (input-file)
  "Solve part 2 of day 03."
  (loop for line in (read-input input-file)
        for line-length = (length line)
        sum (loop for digits-left from 12 downto 1
                  for search-start = 0 then (1+ picked-pos)
                  for search-end = (- line-length digits-left)
                  for best-digit = (loop for i from search-start to search-end
                                         maximize (digit-char-p (char line i)))
                  for picked-pos = (loop for i from search-start to search-end
                                         when (= (digit-char-p (char line i)) best-digit)
                                           return i)
                  sum (* best-digit (expt 10 (1- digits-left))))))

(defun test-input ()
  (aoc:input-file 2025 3 :test t))
(defun puzzle-input ()
  (aoc:input-file 2025 3))
