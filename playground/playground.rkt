(module playground typed/racket
  (provide (all-defined-out))
  (require racket/set)

  ;; CFGs are represented through their own type
  (struct CFG ((nonterminals : (Listof Nonterminal))
               (terminals    : (Listof Terminal))
               (start-sybmol : Nonterminal)
               (productions  : (Listof Production))))

  ;; A Nonterminal is a symbol/atom
  (define-type Nonterminal Symbol)

  ;; A Terminal is a string
  (define-type Terminal Symbol)

  ;; A GrammarSymbol is either a Terminal or a Nonterminal
  (define-type GrammarSymbol (U Nonterminal Terminal))

  ;; A SententialForm is a list of GrammarSymbols
  (define-type SententialForm (Listof GrammarSymbol))

  ;; A Production is a tuple of a Nonterminal, and a list of SententialForms
  (define-type Production (Pair Nonterminal (Listof SententialForm)))

  ;; A Context is a list which elements are either Terminals or Nonterminals.
  (define-type Context (Listof (U Nonterminal Terminal)))


  (: mumu (Setof Terminal))
  (define mumu (set 'a 'b 'c))

  (: antimumu (Setof Nonterminal))
  (define antimumu (set 'd 'e 'c))
)