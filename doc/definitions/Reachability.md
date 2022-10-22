# Reachability of Nonterminals

Given a [[Context-Free Grammar|context-free grammar]] $G = (V, \; \Sigma, \; R, \; S)$, a nonterminal $X \in V$ is **reachable** if there is a derivation $S\;\xRightarrow[G]{\ast}\;\alpha X \beta$, where $\alpha$ and $\beta$ are strings of nonterminals and terminals, and $S$ the start symbol. Otherwise, it's **unreachable**.

Reachability is [[Decidability|decidable]].

## Elimination of Unreachable Nonterminals
