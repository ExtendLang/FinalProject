CODE_LOC="Extend"
TEX_FILE=tex/git.tex

rm $TEX_FILE
touch $TEX_FILE

echo "\\\\medskip \\\\noindent" >> $TEX_FILE

echo "\\\\chapter{Git Logs}" >> $TEX_FILE
echo "Contributions\\\\newline" >> $TEX_FILE
echo "Jared Samet 425 commits / 15,917 ++ / 12,151 --\\\\newline" >> $TEX_FILE
echo "Nigel Schuster 320 commits / 6,258 ++ / 4,887 --\\\\newline" >> $TEX_FILE
echo "Ishaan Kolluri 66 commits / 1,389 ++ / 726 --\\\\newline" >> $TEX_FILE
echo "Kevin Ye 24 commits / 1,700 ++ / 633 --\\\\newline" >> $TEX_FILE
echo "\\\\begin{lstlisting}" >> $TEX_FILE

git --git-dir=$CODE_LOC/.git log --pretty=format:"%h %cI %cn: %s" >> $TEX_FILE

echo -e "\\n" >> $TEX_FILE
echo "\\\\end{lstlisting}" >> $TEX_FILE
