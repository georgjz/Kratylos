# Design
*Kratylos* needs to support a varity of functions that can operate on grammars as a whole:

```scheme
;; CFGs are represented through their own type
(struct CFG ((nonterminals : (Listof Nonterminal))
			 (terminals    : (Listof Terminal))
			 (start-sybmol : Nonterminal)
			 (productions  : (Listof Production))))

;; A Nonterminal is a symbol/atom
(define-type Nonterminal Symbol)

;; A Terminal is a string
(define-type Terminal String)

;; A GrammarSymbol is either a Terminal or a Nonterminal
(define-type GrammarSymbol (U Nonterminal Terminal))

;; A SententialForm is a list of GrammarSymbols
(define-type SententialForm (Listof GrammarSymbol))

;; A Production is a tuple of a Nonterminal, and a (possibly empty) list of SententialForms
(define-type Production (Pair Nonterminal (Listof SententialForm)))

;; A Context is a list which elements are either Terminals or Nonterminals.
(define-type Context (Listof (U Nonterminal Terminal)))

;; A Derivation 
(define-type Derivation '())

; ? this doesn't make sense
; Nonterminal -> Production -> Context
; Applies a production to a nonterminal 

; Context -> CFG -> Context
; Left/Right-derive a given context from a CFG

; String -> CFG -> Bool
; Checks whether an input string is element of L(G), aka, can be derived from a given CFG

; String -> CFG -> AST
; Derivation of a given String from a given CFG
(: derive (-> String CFG AST))
(define derive
  (lambda (string cfg) '()))
  
; Nonterminal -> CFG -> Bool
; Checks whether a nonterminal is reachable in a given CFG
(: reachable? (-> Nonterminal CFG Bool))
(define reachable?
  (lambda (nonterminal cfg) #f))

; CFG -> Bool 
; Checks whether a CFG is ambiguous 
(: ambiguous? (-> CFG Bool))
(define ambiguous? 
  (lambda (cfg) #f))

; CFG -> Bool
; Checks whether there's at least one cycle derivation in a given CFG
(: cyclic? (-> CFG Bool))
(define cyclic?
  (lambda (cfg) #f))

; CFG -> CFG 
; Left-factors a given CFG 
(: left-factor (-> CFG CFG))
(define left-factor
  (lambda (cfg) cfg))

; CFG -> Bool 
; Checks whether the productions in a CFG are left-recursive
(: left-recursive? (-> CFG Bool))
(define left-recursive?
  (lambda (cfg) #f))
```

Functions to operate on nonterminal:

```scheme
; 
```