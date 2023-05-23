(defpackage :install-lem
  (:use :cl))
(in-package :install-lem)

#+ros.init
(defun install-dependencies ()
  (loop for l in '(("checkout" "log4cl")
                   ("install" "lem-project/lem-base16-themes")
                   ("install" "lem-project/lem"))
        do (ignore-errors (ros:roswell l))))
  
#+ros.init
(ignore-errors
  (setf roswell.install::*build-hook* 'install-dependencies))
