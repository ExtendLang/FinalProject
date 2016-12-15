#!/bin/bash

OCAML_CODE_LOC="./Extend/src/main"
OCAML_FILES="scanner.mll parser.mly ast.ml transform.ml codegen.ml linker.ml main.ml"

C_CODE_LOC="./Extend/src/stdlib"
C_FILES="lib.c runtime.c"

EXTEND_STDLIB_CODE_LOC="./Extend/src/stdlib"
EXTEND_FILE="stdlib.xtnd"
TEX_FILE="tex/code.tex"

rm $TEX_FILE
touch $TEX_FILE

echo "\\chapter{Extend Code Listing}" >> $TEX_FILE

for filename in $OCAML_FILES; do
    echo "\\section{$filename}" >> $TEX_FILE
    echo "\\begin{lstlisting}{ocaml}" >> $TEX_FILE
    cat $OCAML_CODE_LOC/$filename >> $TEX_FILE
    echo "\\end{lstlisting}" >> $TEX_FILE
done

for filename in $C_FILES; do
    echo "\\section{$filename}" >> $TEX_FILE
    echo "\\begin{lstlisting}{c}" >> $TEX_FILE
    cat $C_CODE_LOC/$filename >> $TEX_FILE
    echo "\\end{lstlisting}" >> $TEX_FILE
done

echo "\\section{stdlib.xtnd}" >> $TEX_FILE
echo "\\begin{lstlisting}" >> $TEX_FILE
cat $EXTEND_STDLIB_CODE_LOC/$EXTEND_FILE >> $TEX_FILE
echo "\\end{lstlisting}" >> $TEX_FILE
