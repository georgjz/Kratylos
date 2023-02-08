; Simple experiments with typed/racket
(module Nonterminal typed/racket
  (provide (all-defined-out))

  (struct nonterminal ((symbol : Symbol))
                      #:transparent
                      #:type-name Nonterminal)

  ; Special value Epsilon to denote empty
  (: EPSILON Nonterminal)
  (define EPSILON (nonterminal 'EPSILON))

) ; module
