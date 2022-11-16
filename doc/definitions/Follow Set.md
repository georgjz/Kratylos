# Follow Set

Let $A$ be a nonterminal from a [[Context-Free Grammar|context-free grammar]] $G = (V, \; \Sigma, \; R, \; S)$, then $\text{FOLLOW}(A)$ is the set of terminals that appear immediately to the right of $A$ in some derived string. That is, the set of terminals such that $S \xRightarrow{\ast} \alpha A a \beta$, for some strings $\alpha$ and $\beta$. If $A$ is the rightmost terminal in some string, then add the "endmarker" $\$$ to $\text{FOLLOW}(A)$.

## Computation
To compute $\text{FOLLOW}(A)$ for all nonterminals $A$, apply the following rules until no more terminals can be added to $\text{FOLLOW}$:

1. Place $\$$ in $\text{FOLLOW}(S)$, where $S$ is the start symbol
2. If there is a production $A \to \alpha B \beta$, then everything in $\text{FIRST}(\beta) \setminus \{ \epsilon \}$ is in $\text{FOLLOW}(B)$
3. If there is a production $A \to \alpha B$ or $A \to \alpha B \beta$, where $\epsilon \in \text{FIRST}(\beta)$, then everything if $\text{FOLLOW}(A)$ is in $\text{FOLLOW}(B)$
