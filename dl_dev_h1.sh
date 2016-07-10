#!/bin/bash
BIN=/home/$(whoami)/Dropbox/dataENF/blmg/blmgItrdBarDownloader/blmg_itrd_bar_downloader-assembly-1.0-SNAPSHOT.jar
H1ADJFOLDER=/home/$(whoami)/Dropbox/dataENF/blmg/h1_ohlc_adj/
BLMGCOMMON=/home/$(whoami)/Dropbox/dataENF/blmg/common_path.sh

source $BLMGCOMMON

for i in $(seq 1 10)
do
    if   [[ $i -eq 1  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_1;
    elif [[ $i -eq 2  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_2;
    elif [[ $i -eq 3  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_3;
    elif [[ $i -eq 4  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_4;
    elif [[ $i -eq 5  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_5;
    elif [[ $i -eq 6  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_6;
    elif [[ $i -eq 7  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_7;
    elif [[ $i -eq 8  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_8;
    elif [[ $i -eq 9  ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_9;
    elif [[ $i -eq 10 ]]; then SYMLIST=$SYMBOLLIST_HKSTKALL_H1_10;
    fi

    for sym in $SYMLIST
    do
        java -jar $BIN -s "$sym HK Equity" -b 60 -o $H1ADJFOLDER/$sym".csv" -gmt 8 -adj
    done

done
