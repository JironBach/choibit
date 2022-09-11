#!/usr/local/bin/sbcl --script
;#!/usr/bin/sbcl --script

(print (expt 2 3))
(print (expt 2.2 3.3))
;不具合調査
(print (expt 1.03 30))

