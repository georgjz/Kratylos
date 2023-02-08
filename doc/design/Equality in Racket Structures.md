[`struct`s in Racket](https://docs.racket-lang.org/reference/structures.html) are by default [opaque](https://docs.racket-lang.org/guide/define-struct.html#(part._trans-struct)) - i.e., they cannot be manipulated by clients of the library.

`equal?` can only compare instances of structures. To allow `equal?` to compare instances on a per value base, we need to either make them `#:transparent` or [define comparison functions](https://docs.racket-lang.org/guide/define-struct.html#(part._struct-equal)).
