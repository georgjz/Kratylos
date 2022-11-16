# First Set

Let $\alpha$ be a string of grammar symbols, then $\text{FIRST}(\alpha)$ is the set of terminals that appear as the first symbols of one or more strings (of terminals) derived from $\alpha$.

Put differently, let $\alpha$ be a string derived from a [[Context-Free Grammar|context-free grammar]] $G = (V, \; \Sigma, \; R, \; S)$, then a terminal $X \in \Sigma$ is element of $\text{FIRST}(\alpha)$ iff there is a derivation $\alpha \xRightarrow{\ast} X \beta$, for any string $\beta$.

## Computation
To compute $\text{FIRST}(X)$ for all grammar symbols $X$, apply the following rules until no more terminal or the empty string $\epsilon$ can be added to the set $\text{FIRST}(X)$:

1. If $X$ is a terminal (i.e., $X \in \Sigma$), then add $X$ to $\text{FIRST}$.
2. If $X \to \epsilon$ is a production in $R$, then add $\epsilon$ to $\text{FIRST}$.
3. If $X$ is a nonterminal (i.e., $X \in V$) and $X \to Y_1 Y_2 ... Y_k$ is a production in $R$, then add terminal $A \in \Sigma$ to $\text{FIRST}$ if for some $i$, $A \in \text{FIRST}(Y_i)$ and $\epsilon \in \{ \; \text{FIRST}(Y_1) \; \cup \; ... \; \cup \; \text{FIRST}(Y_{i-1}) \; \}$, i.e., $Y_1, ...,Y_{i-1} \xRightarrow{\ast} \epsilon$. If $\epsilon \in \text{FIRST}(Y_j)$, for all $j = 1,2,...,k$ then add $\epsilon$ to $\text{FIRST}$.

To compute $\text{FIRST}(\alpha)$, where $\alpha = X_1 X_2 ... X_n$ is a string:

1. Add all non-empty symbols of $\text{FIRST}(X_1)$ to $\text{FIRST}(\alpha)$
2. For each $X_k$, where $1 < k \leq n$, add all non-empty symbols of $\text{FIRST}(X_k)$ if $\epsilon$ is in all $\text{FIRST}(X_i)$, where $i<k$
3. If $\epsilon$ is $\text{FIRST}(X_k)$ for all $k \leq n$, then add $\epsilon$ to $\text{FIRST}(\alpha)$
