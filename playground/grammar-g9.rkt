(module grammar-g9 typed/racket
  (provide (all-defined-out))
  (require racket/set
           "../src/CFG.rkt"
           "../src/Nonterminal.rkt"
           "../src/Production.rkt"
           "../src/Terminal.rkt")

  ; Nonterminals for grammar g9
  (: nonterminals-g9 (Setof Nonterminal))
  (define nonterminals-g9
   (set (nonterminal 'P)
        (nonterminal 'E)
        (nonterminal 'E-prime)
        (nonterminal 'T)
        (nonterminal 'T-prime)
        (nonterminal 'F)))

  ; Productions for grammar g9
  (: productions-g9 (Setof Production))
  (define productions-g9
   (set (production (nonterminal 'P)
                    (list (nonterminal 'E)))
        (production (nonterminal 'E)
                    (list (nonterminal 'T) (nonterminal 'E-prime)))
        (production (nonterminal 'E-prime)
                    (list (terminal '+) (nonterminal 'T) (nonterminal 'E-prime)))
        (production (nonterminal 'E-prime)
                    (list EPSILON))
        (production (nonterminal 'T)
                    (list (nonterminal 'F) (nonterminal 'T-prime)))
        (production (nonterminal 'T-prime)
                    (list (terminal '*) (nonterminal 'F) (nonterminal 'T-prime)))
        (production (nonterminal 'T-prime)
                    (list EPSILON))
        (production (nonterminal 'F)
                    (list (terminal 'lparen) (nonterminal 'E) (nonterminal 'rparen)))
        (production (nonterminal 'F)
                    (list (terminal 'int)))
                    ))

  ; Terminals for grammar g9
  (: terminals-g9 (Setof Terminal))
  (define terminals-g9
   (set (terminal '+)
        (terminal '*)
        (terminal 'lparen)
        (terminal 'rparen)))

  ; Grammar g9
  (: g9 CFG)
  (define g9
   (cfg nonterminals-g9
        terminals-g9
        (nonterminal 'P)
        productions-g9))


) ; module
