#!/bin/bash

INPUT_FOLEDER=${args[0]}
DIAGRAM_FILE_EXTENSION=".mmd"

cd $INPUT_FOLEDER
for infile in *$DIAGRAM_FILE_EXTENSION ; do
    fbname=$(basename "$infile" $DIAGRAM_FILE_EXTENSION)
    /usr/local/bin/mmdc -p puppeteer-config.json -i $infile -o $fbname.svg
done

