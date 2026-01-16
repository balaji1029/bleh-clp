#!/bin/bash
DIR="example-programs"

find "$DIR" -type f -name "*.c" | while read -r file; do
    echo "Processing $file"

    # if [[ "$file" == *invalid* ]]; then
    #     ./sclp --show-tokens "$file" > /dev/null 2>&1
    #     ret=$?

    #     if [[ $ret -eq 0 ]]; then
    #         echo "ERROR: ./sclp succeeded on invalid file: $file"
    #     fi
    # else
    toks_file="${file}.toks"
    a1_toks_file="${file}.A1.toks"
    reference-implementations/A1-sclp "$file" --show-tokens

    if [[ ! -f "$toks_file" ]]; then
        echo "ERROR: .toks file not generated for $file"
        continue
    fi

    mv "$toks_file" "$a1_toks_file"

    ./sclp --show-tokens "$file"
    diff -Bw "$toks_file" "$a1_toks_file"
    # fi
done
