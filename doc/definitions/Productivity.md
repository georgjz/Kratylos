# Productivity of a Nonterminal

Given a [[Context-Free Grammar|context-free grammar]] $G = (V, \; \Sigma, \; R, \; S)$, a nonterminal $X \in V$ is **productive** iff there is a derivation $X \; \xRightarrow[G]{\ast} \; \alpha$ of some string $\alpha \in \Sigma^{\ast}$. Otherwise, it is **unproductive**.

Put differently, a grammar symbol is productive if 
* it is a terminal $X \in \Sigma$, all terminals are productive; or
* it is the empty string $\epsilon$; or
* it is a nonterminal $X \in V$ and there is a productive production such that $X$ is (in) that production's head.

A production $P \in R$ is productive, iff all grammar symbols of the body are productive.

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
