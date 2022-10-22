# Kleene Closure

The Kleene star operator $^{\ast}$, also called Kleene closure, is a unary operator on sets of symbols or set of strings. The Kleene closure of a set $V$ is denoted as 

$$
V^{\ast}
$$

The set $V^{\ast}$ represents

1. If $V$ is a set of strings, $V^{\ast}$ is the smallest superset of $V$ containing the empty string $\epsilon$ and is closed under string concatenation.
2. If $V$ is a set of symbols, then $V^{\ast}$ is the set of all strings over symbols in $V$, including the empty string $\epsilon$.

Further 

$$
\begin{aligned}
V^{0} \; &= \; \{\epsilon\}  \\ 
V^{1} \; &= \; V\; \\
V^{i+1} \; &= \; \{wv: w \in V^{i} \; 
\text{and} \; v \in V\}
\end{aligned}
$$

For a more convenient notation, it may serve to define a Kleene plus, sometimes called positive closure, operator $^{+}$:

$$
V^{+} \; = \; V^{\ast}V
$$

## Properties
Kleene closure is [[Idempotence|idempotent]], that is, $(V^{\ast})^{\ast} \; = \; V^{\ast}$.
