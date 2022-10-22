# Context-Free Language

If $G = (V, \; \Sigma, \; R, \; S)$ is a [[Context-Free Grammar|context-free grammar]], the language of G, denoted as $L(G)$, is the set of terminal strings that have derivations from the start symbol. That is, 

$$
L(G) \; = \; \{ \alpha \;\; \text{in} \;\; \Sigma^{\ast} \; \mid \; S \; \xRightarrow[G]{\ast} \; \alpha\}
$$

Derivations from the start symbol produce sentential forms. Any string $\alpha$ in $(V \; \cup \; \Sigma)^{\ast}$ such that $S \; \xRightarrow{\ast} \; \alpha$ is called a sentential form. The language $L(G)$ is the set of sentential forms that are in $\Sigma^{\ast}$.
