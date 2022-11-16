# Recursion

Given a [[Context-Free Grammar|context-free grammar]] $G = (V, \; \Sigma, \; R, \; S)$, the following circumstances describe left and right recursive grammars.

## Left Recursion
A grammar $G$ is [[Recursion#Left Recursion|left recursive]] if it has a nonterminal $X$ such that there is a derivation $X \; \xRightarrow{+} \; X\alpha$ for any string $\alpha$. A production of the form $X \; \to \; X\alpha$ for some string $\alpha$ is called immediate left recursive.

### Elimination of Left Recursion
A grammar $G$ can be transformed into a grammar $G'$ with no left recursion. Both immediate and indirect left recursion can be eliminated.

#### Elimination of Immediate Left Recursion
To eliminate immediate left recursion from a production, group productions as

$$
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad}}

A     \pro A\alpha_1 \or A\alpha_2 \or ... \or A\alpha_m \or \beta_1 \or \beta_2 \or ... \or \beta_n
\\

$$

where no $\beta_i$ begins with $A$. Then replace that production with

$$
\begin{alignat*}{3}
\def\T#1{{\texttt{#1}}}
\def\pro{{\quad \to \quad}}
\def\or{{\quad \; \mid \quad}}

&A     &&\pro &&\beta_1 A' \or \beta_2 A' \or ... \or \beta_n A'  \\
&A'    &&\pro &&\alpha_1 \or \alpha_2 \or ... \or \alpha_m \or \epsilon  \\

\end{alignat*}
$$

#### Elimination of Left Recursion
To eliminate all left recursion from a grammar $G$, several algorithms are available.

##### Paull's Algorithm
The input grammar $G$ must neither have [[Nullability|nullable]] nonterminals nor be [[Cyclicity|cyclic]]. Note that he resulting grammar $G'$ may contain [[Nullability|nullable]] nonterminals.

for( each $i$ from 1 to $n$ )
{
    for( each $j$ from 1 to $i-1$ )
    {
        for( each production of the form $A_i \to A_j\alpha$ )
        {
            Remove $A_i \to A_j\alpha$ from $G$
            for( each production of the form $A_j \to \beta$ )
            {
                Add $A_j \to \beta\alpha$ to $G$
            }
        }
    }
    eliminate the immediate left recursion among the $A_i$-productions
}

where $n$ is the total number of productions in a grammar $G$.

##### Left-Corner Transformation


## Right Recursion
