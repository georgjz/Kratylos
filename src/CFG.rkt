; Simple experiments with typed/racket
(module CFG typed/racket
  (provide (all-defined-out))
  (require "Nonterminal.rkt"
           "Terminal.rkt"
           "Production.rkt")

  ;; CFGs are represented through their own type
  (struct cfg ((nonterminals : (Setof Nonterminal))
               (terminals    : (Setof Terminal))
               (start-symbol : Nonterminal)
               (productions  : (Setof Production)))
              #:transparent  ; this is going to come back to haunt me, isn't it
              #:type-name CFG)


  ;;;;;; Property Checks: These functions check properties of a given context-free grammar.

  ; CFG -> Boolean
  ; Checks whether a CFG is ambiguous. UNDECIDABLE.
  (: ambiguous? (CFG -> Boolean))
  (define ambiguous?
    (λ (cfg) #f))

  ; (U GrammarSymbol Production) -> CFG -> Boolean
  ; Checks whether a nonterminal is productive in a given CFG
  (: productive? (Nonterminal CFG -> Boolean))
  (define productive?
    (λ (nt cfg)
      (cond
        ((nonterminal? nt)  #f)
        (else               #f))))

  ; Nonterminal -> CFG -> Boolean
  ; Checks whether a nonterminal is reachable in a given CFG
  (: reachable? (Nonterminal CFG -> Boolean))
  (define reachable?
    (λ (nonterminal cfg) #f))

  ; Nonterminal -> CFG -> Boolean
  ; Checks whether a nonterminal is useful
  (: useful? (Nonterminal CFG -> Boolean))
  (define useful?
    (λ (nonterminal cfg)
      (or (productive? nonterminal cfg)
          (reachable? nonterminal cfg))))

  ; Nonterminal -> CFG -> Boolean
  ; Checks whether a nonterminal is nullable in a given CFG
  (: nullable? (Nonterminal CFG -> Boolean))
  (define nullable?
    (λ (nonterminal cfg) #f))

  ; CFG -> Boolean
  ; Checks whether there's at least one cycle derivation in a given CFG
  (: cyclic? (CFG -> Boolean))
  (define cyclic?
    (λ (cfg) #f))

  ; CFG -> Boolean
  ; Checks whether the productions in a CFG are left-recursive
  (: left-recursive? (CFG -> Boolean))
  (define left-recursive?
    (λ (cfg) #f))

  ; CFG -> Boolean
  ; Checks whether the productions in a CFG are right-recursive
  (: right-recursive? (CFG -> Boolean))
  (define right-recursive?
    (λ (cfg) #f))

  ;;;;;; Nonterminals:

  ; Nonterminal -> CFG -> (Setof Terminal)
  ; Calculates the FIRST set of a given nonterminal and CFG
  (: first-set (Nonterminal CFG -> (Setof Terminal)))
  (define first-set
    (λ (nt cfg) (set (terminal 'terminal))))

  ; Nonterminal -> CFG -> (Setof Terminal)
  ; Calculates the FOLLOW set of a given nonterminal and CFG
  (: follow-set (Nonterminal CFG -> (Setof Terminal)))
  (define follow-set
    (λ (nt cfg) (set (terminal 'terminal))))

  ;;;;;; Manipulation: These functions manipulate a given context-free grammar to return a new one.
  ; is there a difference here?
  ;;;;;; Transformations: These functions transform a given context-free grammar into an equivalent one

  ; CFG -> CFG
  ; Left-factors a given CFG
  (: left-factor (CFG -> CFG))
  (define left-factor
    (λ (cfg) cfg))

  ; CFG -> CFG
  ; Right-factors a given CFG
  (: right-factor (CFG -> CFG))
  (define right-factor
    (λ (cfg) cfg))

  ;;;;;; Helpers

  ; Nonterminal -> CFG -> (Setof Production)
  ; All productions of a CFG that have the given nonterminal in its head
  (: productions-with-head (Nonterminal CFG -> (Setof Production)))
  (define productions-with-head
    (λ (nt cfg)
      (letrec ((F : ((Setof Production) (Setof Production) -> (Setof Production))
                 (λ (productions acc)
                   (if (set-empty? productions)
                       acc
                       (let ((prod (set-first productions)))
                         (F (set-remove productions prod)
                           (if (equal? (production-head prod) nt)
                               (set-add acc prod)
                               acc))))))
                      )
        (F (cfg-productions cfg) (set))
                      )))

) ; module
