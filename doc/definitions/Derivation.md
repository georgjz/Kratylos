# Derivation

Given a [[Context-Free Grammar|context-free grammar]] $G = (V, \; \Sigma, \; R, \; S)$, a derivation is the process of applying productions from head to body to form strings. It is denoted with $\Rightarrow$. Let $\alpha A \beta$ be a string of terminals and nonterminals, where $A$ is a nonterminal. Let $\alpha$ and $\beta$ be strings in $(V \; \cup \; \Sigma)^{\ast}$, $A \in V$, the production $A \to \gamma$ is element of $R$. Then we write 

$$\alpha A \beta \; \xRightarrow[G] \; \alpha\gamma\beta$$

to denote a derivation where the productions $A \to \gamma$ is applied, that is, the head $A$ is replaced with the body $\gamma$ (in a given string).

For derivations that take zero or more steps/replacements, we write $\alpha \; \xRightarrow[G]{\ast} \; \beta$, where $G$ is a context-free grammar and $\alpha, \beta \in (V \; \cup \; \Sigma)^{\ast}$. 

A derivation that takes (at least) one or more steps, is denoted as $\alpha \; \xRightarrow[G]{+} \; \beta$.

Any string of $G$ always derives itself (in zero steps), that is, $\alpha \; \xRightarrow[G]{\ast} \; \alpha$.

## Leftmost and Rightmost Derivations
It can be practical to restrict the choices we have when deriving strings. One such method is defining the left- and rightmost derivation. We denote such a derivation with 

$$
\begin{aligned}

\xRightarrow[lm]{}, \; \xRightarrow[lm]{*}, \; \xRightarrow[lm]{+}  \\
\xRightarrow[rm]{}, \; \xRightarrow[rm]{*}, \; \xRightarrow[rm]{+}  \\

\end{aligned}
$$

This method requires that the left-/rightmost nonterminal in a string be replaced (until there's only terminals).
