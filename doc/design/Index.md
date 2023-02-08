* [[CFG Reader|The Context-free grammar reader]] describes the reader and expander to read in CFGs.
* [[Equality in Racket Structures]] describes how to make `struct`s compare correctly with `equal?`; for the sake of simplicity, all structs are `#:transparent` for the time being
* Consider giving `SententialForm` its own structure to handle the empty string more concisely; own string structure?
* Consider making `Terminal` and `Nonterminal` substructs of `GrammarSymbol`
