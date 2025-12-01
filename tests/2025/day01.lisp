(defpackage #:aoc.2025.day01.test
  (:use #:cl #:fiveam #:aoc.2025.day01))

(in-package #:aoc.2025.day01.test)

(def-suite day01-2025
  :description "Test suite for AOC 2025 day01"
  :in :aoc-test-suite)

(in-suite day01-2025)

(test day01-part1
  (is (eql nil (solve-part1 (aoc:input-file 2025 1 :test t)))))

(test day01-part2
  (is (eql nil (solve-part2 (aoc:input-file 2025 1 :test t)))))
