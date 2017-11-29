#!/bin/bash
BIN=/home/$(whoami)/Dropbox/dataENF/blmg/blmgItrdBarDownloader/target/blmg_itrd_bar_downloader-assembly-1.0-SNAPSHOT.jar
M1ADJFOLDER=/home/$(whoami)/Dropbox/dataENF/blmg/m1_ohlc_adj/
BLMGCOMMON=/home/$(whoami)/Dropbox/dataENF/blmg/common_path.sh

source $BLMGCOMMON

# java -jar $BIN -s "HSI Index" -b 1 -o $M1ADJFOLDER/HSI".csv" -gmt 8

# for sym in $SYMBOLLIST_HKIDX_M1
# do
#     java -jar $BIN -s "$sym Index" -b 1 -o $M1ADJFOLDER/$sym".csv" -gmt 8
# done
#
# for sym in $SYMBOLLIST_CNIDX_M1
# do
#     java -jar $BIN -s "$sym Index" -b 1 -o $M1ADJFOLDER/$sym".csv" -gmt 8
# done
#
# for sym in $SYMBOLLIST_SGIDX_M1
# do
#     java -jar $BIN -s "$sym Index" -b 1 -o $M1ADJFOLDER/$sym".csv" -gmt 8
# done
#
# for sym in $SYMBOLLIST_JPIDX_M1
# do
#     java -jar $BIN -s "$sym Index" -b 1 -o $M1ADJFOLDER/$sym".csv" -gmt 9
# done
#
# for sym in $SYMBOLLIST_GMT_M1
# do
#     java -jar $BIN -s "$sym Index" -b 1 -o $M1ADJFOLDER/$sym".csv" -gmt 0
# done


java -jar $BIN -s "HIZ7 Index" -b 1 -o ~/haha -gmt 8
