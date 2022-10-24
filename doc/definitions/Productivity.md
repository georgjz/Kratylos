# Productivity of a Nonterminal

Given a [[Context-Free Grammar|context-free grammar]] $G = (V, \; \Sigma, \; R, \; S)$, a nonterminal $X \in V$ is **productive** iff there is a derivation $X \; \xRightarrow[G]{\ast} \; \alpha$ of some string $\alpha \in \Sigma^{\ast}$. Otherwise, it is **unproductive**.

Productivity is [[Decidability|decidable]].

## Examples
The set $R$ of productions in an arbitrary context-free grammar $G_1$ are:

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&S     &&\pro &&A \or \epsilon  \\ 
&A     &&\pro &&aCb \or B  \\
&B     &&\pro &&\#  \\
&C     &&\pro &&D  \\
&D     &&\pro &&AC  \\

\end{alignat*}
$$

The productions $A\to aCb$, $C\to D$ and $D\to AC$ are unproductive, as they derive each other in a cycle (aka, they never terminate). All other productions produce a string $\#$.

## Elimination of Unproductive Nonterminals and Productions