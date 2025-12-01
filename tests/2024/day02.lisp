(defpackage #:aoc.2024.day02.test
  (:use #:cl #:fiveam #:aoc.2024.day02))

(in-package #:aoc.2024.day02.test)

(def-suite day02-2024
  :description "Test suite for AOC 2024 day02"
  :in :aoc-test-suite)

(in-suite day02-2024)

(test day02
  (is (= 2 (solve-part1 (aoc:input-file 2024 2 :test t))))
  (is (= 572 (solve-part1 (aoc:input-file 2024 2))))
  (is (= 4 (solve-part2 (aoc:input-file 2024 2 :test t))))
  (is (= 612 (solve-part2 (aoc:input-file 2024 2)))))
