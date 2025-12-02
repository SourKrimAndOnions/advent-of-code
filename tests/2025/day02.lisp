(defpackage #:aoc.2025.day02.test
  (:use #:cl #:fiveam #:aoc.2025.day02))

(in-package #:aoc.2025.day02.test)

(def-suite day02-2025
  :description "Test suite for AOC 2025 day02"
  :in :aoc-test-suite)

(in-suite day02-2025)

(test day02-part1
  (is (eql 18952700150 (solve-part1 (aoc:input-file 2025 2)))))

(test day02-part2
  (is (eql 28858486244 (solve-part2 (aoc:input-file 2025 2)))))
