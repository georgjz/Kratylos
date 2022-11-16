; Simple experiments with typed/racket
(module CFG typed/racket
  (provide (all-defined-out))

  ;; CFGs are represented through their own type
  (struct CFG ((nonterminals : (Listof Nonterminal))
               (terminals    : (Listof Terminal))
               (start-sybmol : Nonterminal)
               (productions  : (Listof Production))))

  ;; FIXME: A lot of this is nonsense.
  ;; A Nonterminal is a symbol/atom
  (define-type Nonterminal Symbol)

  ;; A Terminal is a symbol/atom
  (define-type Terminal Symbol)

  ;; A GrammarSymbol is either a Terminal or a Nonterminal
  (define-type GrammarSymbol (U Nonterminal Terminal))

  ;; A SententialForm is a list of GrammarSymbols
  (define-type SententialForm (Listof GrammarSymbol))

  ;; A Production is a tuple of a Nonterminal, and a set of SententialForms
  (define-type Production (Pair Nonterminal (Setof SententialForm)))

  ;; A Context is a list which elements are either Terminals or Nonterminals.
  (define-type Context (Listof (U Nonterminal Terminal)))

  ;;;;;; Property Checks: These functions check properties of a given context-free grammar.

  ; CFG -> Boolean
  ; Checks whether a CFG is ambiguous. UNDECIDABLE.
  (: ambiguous? (-> CFG Boolean))
  (define ambiguous?
    (λ (cfg) #f))

  ; Nonterminal -> CFG -> Boolean
  ; Checks whether a nonterminal is productive in a given CFG
  (: productive? (-> Nonterminal CFG Boolean))
  (define productive?
    (λ (nonterminal cfg) #f))

  ; Nonterminal -> CFG -> Boolean
  ; Checks whether a nonterminal is reachable in a given CFG
  (: reachable? (-> Nonterminal CFG Boolean))
  (define reachable?
    (λ (nonterminal cfg) #f))

  ; Nonterminal -> CFG -> Boolean
  ; Checks whether a nonterminal is useful
  (: useful? (-> Nonterminal CFG Boolean))
  (define useful?
    (λ (nonterminal cfg)
      (or (productive? nonterminal cfg)
          (reachable? nonterminal cfg))))

  ; Nonterminal -> CFG -> Boolean
  ; Checks whether a nonterminal is nullable in a given CFG
  (: nullable? (-> Nonterminal CFG Boolean))
  (define nullable?
    (λ (nonterminal cfg) #f))

  ; CFG -> Boolean
  ; Checks whether there's at least one cycle derivation in a given CFG
  (: cyclic? (-> CFG Boolean))
  (define cyclic?
    (λ (cfg) #f))

  ; CFG -> Boolean
  ; Checks whether the productions in a CFG are left-recursive
  (: left-recursive? (-> CFG Boolean))
  (define left-recursive?
    (λ (cfg) #f))

  ; CFG -> Boolean
  ; Checks whether the productions in a CFG are right-recursive
  (: right-recursive? (-> CFG Boolean))
  (define right-recursive?
    (λ (cfg) #f))

  ;;;;;; Nonterminals:

  ; Nonterminal -> CFG -> (Setof Terminal)
  ; Calculates the FIRST set of a given nonterminal and CFG
  (: first-set (-> Nonterminal CFG (Setof Terminal)))
  (define first-set
    (λ (nt cfg) (set 'empty)))

  ; Nonterminal -> CFG -> (Setof Terminal)
  ; Calculates the FOLLOW set of a given nonterminal and CFG
  (: follow-set (-> Nonterminal CFG (Setof Terminal)))
  (define follow-set
    (λ (nt cfg) (set 'empty)))

  ;;;;;; Manipulation: These functions manipulate a given context-free grammar to return a new one.
  ; is there a difference here?
  ;;;;;; Transformations: These functions transform a given context-free grammar into an equivalent one

  ; CFG -> CFG
  ; Left-factors a given CFG
  (: left-factor (-> CFG CFG))
  (define left-factor
    (λ (cfg) cfg))

  ; CFG -> CFG
  ; Right-factors a given CFG
  (: right-factor (-> CFG CFG))
  (define right-factor
    (λ (cfg) cfg))


) ; module
