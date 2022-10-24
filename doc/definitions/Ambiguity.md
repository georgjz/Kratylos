# Ambiguity of Context-Free Grammars

A string $\alpha \in L(G)$ derives ambiguously in [[Context-Free Grammar|context-free grammar]] $G$ if there are two or more different [[Derivation|derivations]]. $G$ is considered **ambiguous** if it derives some string ambiguously. Otherwise, it is **unambiguous**.

Ambiguity is [[Decidability|undecidable]].

## Examples
The most common forms of ambiguity are precendence and associativity restrictions of a given grammar or language. For example, ambiguity of arithmetic expressions:

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&AExpr              &&\pro &&Expr \\
\\
&Expr               &&\pro &&Expr \quad \T{+} \quad Expr  \\
&                   &&\or  &&Expr \quad \T{*} \quad Expr  \\
&                   &&\or  &&\T{\lparen} \quad Expr \quad \T{\rparen}  \\
&                   &&\or  &&\T{id}  \\
\\

\end{alignat*}
$$

A string of this language like $a + b*c$ can be parsed in more than one way. To encode proper precedence rules for multiplication and addition, adding additional nonterminals can help:

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad }}

&AExpr              &&\pro &&Expr \\
\\
&Expr               &&\pro &&Expr \quad \T{+} \quad Term  \\
&                   &&\or  &&Expr \quad \T{-} \quad Term  \\
&                   &&\or  &&Term  \\
\\
&Term               &&\pro &&Term \quad \T{*} \quad Factor  \\
&                   &&\or  &&Term \quad \T{/} \quad Factor  \\
&                   &&\or  &&Factor  \\
\\
&Factor             &&\pro &&\T{\lparen} \quad Expr \quad \T{\rparen}  \\
&                   &&\or  &&\T{-} Factor  \\
&                   &&\or  &&Number  \\
&                   &&\or  &&\T{id}  \\

\end{alignat*}
$$
