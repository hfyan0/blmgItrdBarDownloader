#!/bin/bash
BIN=/home/$(whoami)/Dropbox/dataENF/blmg/blmgItrdBarDownloader/target/blmg_itrd_bar_downloader-assembly-1.0-SNAPSHOT.jar
H1ADJFOLDER=/home/$(whoami)/Dropbox/dataENF/blmg/h1_ohlc_adj/
BLMGCOMMON=/home/$(whoami)/Dropbox/dataENF/blmg/common_path.sh

source $BLMGCOMMON

for sym in $SYMBOLLIST_HKSTK_H1
do
    java -jar $BIN -s "$sym HK Equity" -b 60 -o $H1ADJFOLDER/$sym".csv" -gmt 8 -adj
done
