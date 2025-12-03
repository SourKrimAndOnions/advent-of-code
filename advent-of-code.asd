(defsystem "advent-of-code"
  :description "Advent of Code solutions"
  :author "Karim Vedelkvist"
  :version "1.0.0"
  :license "MIT"
  :depends-on (#:alexandria
               #:str
               #:fiveam)
  :serial t
  :components ((:file "package")
               (:file "utils")
               (:module "src"
                :components
                ((:module "2024"
                  :components
                  ((:module "day01"
                    :components ((:file "package")
                                 (:file "solution")))
                   (:module "day02"
                    :components ((:file "package")
                                 (:file "solution")))
                   (:module "day03"
                    :components ((:file "package")
                                 (:file "solution")))
                   (:module "day04"
                    :components ((:file "package")
                                 (:file "solution")))
                   (:module "day05"
                    :components ((:file "package")
                                 (:file "solution")))))
                 (:module "2025"
                  :components
                  ((:module "day01"
                    :components ((:file "package")
                                 (:file "solution"))))
                  ((:module "day02"
                    :components ((:file "package")
                                 (:file "solution"))))
                  ((:module "day03"
                    :components ((:file "package")
                                 (:file "solution"))))))))
  :in-order-to ((test-op (test-op "advent-of-code/tests"))))

(defsystem "advent-of-code/tests"
  :depends-on (#:advent-of-code
               #:fiveam)
  :serial t
  :components ((:module "tests"
                :components
                ((:file "suite")
                 (:module "2024"
                  :components
                  ((:file "day01")
                   (:file "day02")
                   (:file "day03")
                   (:file "day04")
                   (:file "day05")))
                 (:module "2025"
                  :components
                  ((:file "day01")
                   (:file "day02"))))))
  :perform (asdf:test-op (o c)
                         (uiop:symbol-call :fiveam '#:run! :aoc-test-suite)))