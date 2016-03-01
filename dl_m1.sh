#!/bin/bash
BIN=/home/$(whoami)/Dropbox/dataENF/blmg/blmgItrdBarDownloader/target/blmg_itrd_bar_downloader-assembly-1.0-SNAPSHOT.jar
MINUTELYFOLDER=/home/$(whoami)/Dropbox/dataENF/blmg/m1_ohlc_adj/
BLMGCOMMON=/home/$(whoami)/Dropbox/dataENF/blmg/common_path.sh

source $BLMGCOMMON

for sym in $SYMBOLLIST_HKIDX_M1
do
    java -jar $BIN -s "$sym Index" -b 1 -o $MINUTELYFOLDER/$sym".csv" -gmt 8
done

for sym in $SYMBOLLIST_CNIDX_M1
do
    java -jar $BIN -s "$sym Index" -b 1 -o $MINUTELYFOLDER/$sym".csv" -gmt 8
done

for sym in $SYMBOLLIST_SGIDX_M1
do
    java -jar $BIN -s "$sym Index" -b 1 -o $MINUTELYFOLDER/$sym".csv" -gmt 8
done

for sym in $SYMBOLLIST_JPIDX_M1
do
    java -jar $BIN -s "$sym Index" -b 1 -o $MINUTELYFOLDER/$sym".csv" -gmt 9
done

for sym in $SYMBOLLIST_GMT_M1
do
    java -jar $BIN -s "$sym Index" -b 1 -o $MINUTELYFOLDER/$sym".csv" -gmt 0
done
