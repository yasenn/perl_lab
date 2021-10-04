#!/usr/bin/env bash
# renames files with special symbols in filename to md5sum

EXTENSION=${1:-txt}

while IFS= read -r FILE; do 
    NEWNAME=$( echo $FILE | md5sum | awk '{print $1}')
    DIRNAME=$( dirname "${FILE}" )
    EXTENSION=${FILE##*.}
    mv -v "${FILE}" "${DIRNAME}/${NEWNAME}.${EXTENSION}"
done < <( find . -name "*.${EXTENSION}" -type f )
