; Simple experiments with typed/racket
(module Terminal typed/racket
  (provide (all-defined-out))

  (struct terminal ((symbol : Symbol))
                   #:transparent
                   #:type-name Terminal)

) ; module
