# ls ./Issues/*
for STUDENT in ./Submissions/*;
do
NAME=$(basename ${STUDENT})
OUTPUT=$STUDENT/results.txt
echo "****************************************************" > $OUTPUT
echo "****************************************************" >> $OUTPUT
echo "Starting tests for "$NAME >> $OUTPUT
cp ./TestFiles/* $STUDENT
timeout 5 python3 ./$STUDENT/perm_lex_acceptance_tests.py >> $OUTPUT 2>&1
timeout 5 python3 ./$STUDENT/rec_list_acceptance_tests.py >> $OUTPUT 2>&1
timeout 5 python3 ./$STUDENT/bears_acceptance_tests.py >> $OUTPUT 2>&1
echo "" >> $OUTPUT #new line
echo "Finished tests for "$NAME >> $OUTPUT
echo "****************************************************" >> $OUTPUT
echo "****************************************************" >> $OUTPUT
cat $OUTPUT
done;