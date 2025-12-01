(defpackage #:aoc.2024.day05.test
  (:use #:cl #:fiveam #:aoc.2024.day05))

(in-package #:aoc.2024.day05.test)

(def-suite day05-2024
  :description "Test suite for AOC 2024 day05"
  :in :aoc-test-suite)

(in-suite day05-2024)

(test day05
  (is (= 143 (solve-part1 (aoc:input-file 2024 5 :test t))))
  (is (= 5955 (solve-part1 (aoc:input-file 2024 5))))
  (is (= 123 (solve-part2 (aoc:input-file 2024 5 :test t))))
  (is (= 4030 (solve-part2 (aoc:input-file 2024 5)))))
