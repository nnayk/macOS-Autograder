for STUDENT in ./Submissions/*;
do
NAME=$(basename ${STUDENT})
OUTPUT=$STUDENT/results.txt
echo "****************************************************" > $OUTPUT
echo "****************************************************" >> $OUTPUT
echo "Starting tests for "$NAME >> $OUTPUT
cp ./TestFiles/* $STUDENT
python3 ./$STUDENT/sep_chain_ht_acc_tests.py >> $OUTPUT 2>&1
echo "" >> $OUTPUT #new line
echo "Finished tests for "$NAME >> $OUTPUT
echo "****************************************************" >> $OUTPUT
echo "****************************************************" >> $OUTPUT
cat $OUTPUT
done;