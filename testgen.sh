CODE_LOC="./Extend"
TEX_FILE=tex/tests.tex
TEST_FILES=$CODE_LOC/testcases/inputs_regression
EXPECTED_OUTPUT=$CODE_LOC/testcases/expected
SED_TEST_FILES=$(echo $L1 | sed -e s/_/-/g)


rm $TEX_FILE
touch $TEX_FILE

echo "\\chapter{Tests and Output}" >> $TEX_FILE
echo -e "\n" >> $TEX_FILE

for filename in $(ls $TEST_FILES); do
    SED_TEST_NAME=$(echo $filename | sed -e s/_/-/g)
    echo "\medskip \noindent \texttt{$SED_TEST_NAME}" >> $TEX_FILE
    echo -e "\n" >> $TEX_FILE
    echo "\begin{lstlisting}" >> $TEX_FILE
    cat $TEST_FILES/$filename >> $TEX_FILE
    echo "\end{lstlisting}" >> $TEX_FILE
    echo -e "\n" >> $TEX_FILE
    echo "\medskip \noindent \texttt{$SED_TEST_NAME - Expected Output}" >> $TEX_FILE
    echo -e "\n" >> $TEX_FILE
    echo "\begin{lstlisting}" >> $TEX_FILE
    cat $EXPECTED_OUTPUT/$filename.exp >> $TEX_FILE
    echo "\end{lstlisting}" >> $TEX_FILE
    echo -e "\n" >> $TEX_FILE
done
echo -e "\n" >> $TEX_FILE
