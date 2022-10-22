# Compile all modified and/or new files and load the main module into a REPL
# raco make -v src/CFG.rkt
raco make src/CFG.rkt
racket -I typed/racket -it src/CFG.rkt
