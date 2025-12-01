(defpackage #:aoc.2024.day01.test
  (:use #:cl #:fiveam #:aoc.2024.day01))

(in-package #:aoc.2024.day01.test)

(def-suite day01-2024
  :description "Test suite for AOC 2024 day01"
  :in :aoc-test-suite)

(in-suite day01-2024)

(test day01
  (is (= 11 (solve-part1 (aoc:input-file 2024 1 :test t))))
  (is (= 1189304 (solve-part1 (aoc:input-file 2024 1))))
  (is (= 31 (solve-part2 (aoc:input-file 2024 1 :test t))))
  (is (= 24349736 (solve-part2 (aoc:input-file 2024 1)))))
