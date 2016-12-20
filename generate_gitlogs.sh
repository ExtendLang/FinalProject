CODE_LOC="Extend"
TEX_FILE=tex/git.tex

rm $TEX_FILE
touch $TEX_FILE

echo "\\\\medskip \\\\noindent" >> $TEX_FILE

echo "\\\\chapter{Git Logs}" >> $TEX_FILE
echo "\\\\begin{lstlisting}" >> $TEX_FILE

git --git-dir=$CODE_LOC/.git log --pretty=format:"%h %cI %cn: %s" >> $TEX_FILE

echo -e "\n" >> $TEX_FILE
echo "\\\\end{lstlisting}" >> $TEX_FILE
