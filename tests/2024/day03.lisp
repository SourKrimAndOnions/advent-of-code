(defpackage #:aoc.2024.day03.test
  (:use #:cl #:fiveam #:aoc.2024.day03))

(in-package #:aoc.2024.day03.test)

(def-suite day03-2024
  :description "Test suite for AOC 2024 day03"
  :in :aoc-test-suite)

(in-suite day03-2024)

(test day03
  (is (= 161 (solve-part1 (aoc:input-file 2024 3 :test t))))
  (is (= 178886550 (solve-part1 (aoc:input-file 2024 3))))
  (is (= 48 (solve-part2 (aoc:input-file 2024 3 :test t))))
  (is (= 87163705 (solve-part2 (aoc:input-file 2024 3)))))
