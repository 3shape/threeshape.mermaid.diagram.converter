#!/bin/bash

INPUT_FOLDER=$1
DIAGRAM_FILE_EXTENSION="mmd"

cd $INPUT_FOLDER
ls
for infile in *.$DIAGRAM_FILE_EXTENSION; do
    fbname=$(basename "$infile" .$DIAGRAM_FILE_EXTENSION)
    /usr/local/bin/mmdc -p puppeteer-config.json -i $infile -o $fbname.svg
done

