#!r6rs

(eval-when (compile)
  (optimize-level 3))

(library (chez packrat)
  (export parse-result?
          parse-result-successful?
          parse-result-semantic-value
          parse-result-next
          parse-result-error

          parse-results?
          parse-results-position
          parse-results-base
          parse-results-next

          parse-error?
          parse-error-position
          parse-error-expected
          parse-error-messages
          parse-error->list

          make-parse-position
          parse-position?
          parse-position-file
          parse-position-line
          parse-position-column

          top-parse-position
          update-parse-position
          parse-position->string

          ;;empty-results
          ;;make-results

          make-error-expected
          make-error-message
          make-result
          parse-error->parse-result
          make-expected-result
          make-message-result

          prepend-base
          prepend-semantic-value

          base-generator->results
          results->result

          parse-position>?
          parse-error-empty?
          merge-parse-errors
          merge-result-errors

          parse-results-token-kind
          parse-results-token-value

          packrat-check-base
          packrat-check
          packrat-or
          packrat-unless

          packrat-parser
          packrat-lambda
          packrat-lambda*
          packrat-parse
          try-packrat-parse-pattern

          packrat-port-results
          packrat-string-results
          packrat-list-results

          <- quote ! ^ /)

  (import
    (except (rnrs) define-record-type error)
    (rnrs r5rs)
    (rnrs mutable-pairs)
    (only (srfi :1 lists) lset-union append-map fold)
    (srfi :6 basic-string-ports)
    (srfi :9 records)
    (srfi :23 error)
    (only (chezscheme) include))

  (include "packrat.scm")
  
  )

