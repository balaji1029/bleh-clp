#!/bin/bash
DIR="example-programs"

find "$DIR" -type f -name "*.c" | while read -r file; do
    echo "Processing $file"

    toks_file="${file}.toks"
    a2_toks_file="${file}.A2.toks"

    reference-implementations/A2-sclp "$file" --show-tokens --sa-parse 2>/dev/null
    a2_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A2-sclp"
        continue
    fi

    mv "$toks_file" "$a2_toks_file"

    ./sclp --show-tokens "$file" 2>/dev/null
    our_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp"
        continue
    fi

    diff -Bw "$toks_file" "$a2_toks_file"

    if [[ $a2_rc -ne $our_rc ]]; then
        echo -e "\e[31mERROR:\e[0m return code mismatch for $file"
    fi

    rm -f "$toks_file" "$a2_toks_file"

    reference-implementations/A2-sclp "$file" --show-tokens --sa-scan 2>/dev/null
    a2_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A2-sclp sa-scan"
        continue
    fi

    mv "$toks_file" "$a2_toks_file"

    ./sclp --show-tokens "$file" --sa-scan 2>/dev/null
    our_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp sa-scan"
        continue
    fi

    diff -Bw "$toks_file" "$a2_toks_file"

    if [[ $a2_rc -ne $our_rc ]]; then
        echo -e "\e[31mERROR:\e[0m return code mismatch for $file with sa-scan"
    fi

    rm -f "$toks_file" "$a2_toks_file"
done
