#!/bin/bash
# USAGE: ./cli-results.sh [save]

if [ -f "puf.csv" ]; then
    echo "STARTING WITH CLI-RESULTS : `date`"
else
    echo "ERROR: no puf.csv in this directory"
    exit 1
fi

write_results () {  # requires one argument, the output filename
    awk -F, 'NR>1{w=$3; i+=$4*w; p+=$6*w}
             END{printf("outfile,inctax,paytax= %s %.2f  %.2f\n",
                        FILENAME, i*1e-9, p*1e-9)}' $1
}

# r1-a0 : reform r1.json and assumptions a0.json
tc puf.csv 2022 --reform r1.json --assump a0.json > /dev/null
write_results puf-22-r1-a0.csv

# r1-a1 : reform r1.json and assumptions a1.json
tc puf.csv 2022 --reform r1.json --assump a1.json > /dev/null
write_results puf-22-r1-a1.csv

# r1-a2 : reform r1.json and assumptions a2.json
tc puf.csv 2022 --reform r1.json --assump a2.json > /dev/null
write_results puf-22-r1-a2.csv

# r1-a3 : reform r1.json and assumptions a3.json
tc puf.csv 2022 --reform r1.json --assump a3.json > /dev/null
write_results puf-22-r1-a3.csv

if [ "$1" == "save" ]; then
    echo "Saving output files"
else
    rm -f puf-??-r?-a?.csv
fi

echo "FINISHED WITH CLI-RESULTS : `date`"
