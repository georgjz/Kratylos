# Factoring

Given a [[Context-Free Grammar|context-free grammar]] $G = (V, \; \Sigma, \; R, \; S)$, the transformations below are the defined as follows.

## Left Factoring
Left factoring grammars helps creating grammars suitable for top-down parsing. To left factor a given grammar $G$, for each nonterminal $X$, find the longest prefix $\alpha$ common to two or more of its alternatives. If $\alpha \neq \epsilon$, then all $A$ productions

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad}}

&A     &&\pro &&\alpha \beta_1 \or \alpha \beta_2 \or ... \or \alpha \beta_n \or \gamma \\

\end{alignat*}
$$

where $\gamma$ represents the set of productions not prefixed by $\alpha$, are replaced with

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad}}

&A     &&\pro &&\alpha A' \or \gamma  \\
\\

&A'    &&\pro &&\beta_1 \or \beta_2 \or ... \or \beta_n  \\

\end{alignat*}
$$


## Right Factoring
