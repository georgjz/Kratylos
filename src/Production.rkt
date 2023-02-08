; Simple experiments with typed/racket
(module Production typed/racket
  (provide (all-defined-out))
  (require "Nonterminal.rkt"
           "Terminal.rkt")

  ;; TODO: functions for head and body
  (struct production ((head : Nonterminal)
                      (body : SententialForm))
                     #:transparent
                     #:type-name Production)

  ;; A GrammarSymbol is either a Terminal or a Nonterminal
  (define-type GrammarSymbol (U Nonterminal Terminal))

  ;; A SententialForm is a list of GrammarSymbols
  (define-type SententialForm (Listof GrammarSymbol))

) ; module
