(defpackage #:aoc.2024.day04.test
  (:use #:cl #:fiveam #:aoc.2024.day04))

(in-package #:aoc.2024.day04.test)

(def-suite day04-2024
  :description "Test suite for AOC 2024 day04"
  :in :aoc-test-suite)

(in-suite day04-2024)

(test day04
  (is (= 18 (solve-part1 (aoc:input-file 2024 4 :test t))))
  (is (= 2562 (solve-part1 (aoc:input-file 2024 4))))
  (is (= 9 (solve-part2 (aoc:input-file 2024 4 :test t))))
  (is (= 1902 (solve-part2 (aoc:input-file 2024 4)))))
