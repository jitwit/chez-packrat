;; JSON implementation for Scheme
;; See http://www.json.org/ or http://www.crockford.com/JSON/index.html
;;
;; Copyright (c) 2005 Tony Garnock-Jones <tonyg@kcbbs.gen.nz>
;; Copyright (c) 2005 LShift Ltd. <query@lshift.net>
;; 
;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;; 
;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.
;; 
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;; SPDX-License-Identifier: MIT

;; JSON Structures are represented as vectors: #((symbol . value) (symbol . value) ...)
;; JSON Arrays are lists
;;
#!r6rs

(eval-when (compile)
  (optimize-level 3))

(library (chez json)
  (export json-write
	  json-read)
  
  (import
    (except (rnrs) define-record-type error)
    (rnrs r5rs)
    (rnrs mutable-pairs)
    (only (srfi :1 lists) lset-union append-map fold)
    (srfi :6 basic-string-ports)
    (srfi :9 records)
    (srfi :23 error)
    (only (chezscheme) include hash-table? hashtable-cells))

  (include "packrat.scm")
  (include "json.scm")

  )
