#!/bin/bash
DIR="example-programs"

find "$DIR" -type f -name "*.c" | while read -r file; do
    echo "Processing $file"

    toks_file="${file}.toks"
    ast_file="${file}.ast"
    tac_file="${file}.tac"
    a3_toks_file="${file}.A3.toks"
    a3_ast_file="${file}.A3.ast"
    a3_tac_file="${file}.A3.tac"

    reference-implementations/A3-sclp "$file" --show-tokens --show-ast --show-tac 2>/dev/null
    a3_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A3-sclp"
        continue
    fi
    if [[ ! -f "$ast_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by A3-sclp"
        continue
    fi

    mv "$toks_file" "$a3_toks_file"
    mv "$ast_file" "$a3_ast_file"
    mv "$tac_file" "$a3_tac_file"

    ./sclp --show-tokens --show-ast --show-tac "$file" 2>/dev/null
    our_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp"
        continue
    fi
    if [[ ! -f "$ast_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by A3-sclp"
        continue
    fi

    diff -Bw "$toks_file" "$a3_toks_file"
    diff -Bw "$ast_file" "$a3_ast_file"
    diff -Bw "$tac_file" "$a3_tac_file"

    if [[ ($a3_rc -ne 0 && $our_rc -eq 0) || ($a3_rc -eq 0 && $our_rc -ne 0) ]]; then
        echo -e "\e[31mERROR:\e[0m return code mismatch for $file"
    fi

    ######## sa-scan #########

    rm -f "$toks_file" "$a3_toks_file"
    rm -f "$ast_file" "$a3_ast_file"
    rm -f "$tac_file" "$a3_tac_file"

    reference-implementations/A3-sclp "$file" --show-tokens --sa-scan 2>/dev/null
    a3_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A3-sclp sa-scan"
        continue
    fi

    mv "$toks_file" "$a3_toks_file"

    ./sclp --show-tokens "$file" --sa-scan 2>/dev/null
    our_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp sa-scan"
        continue
    fi

    diff -Bw "$toks_file" "$a3_toks_file"

    if [[ ($a3_rc -ne 0 && $our_rc -eq 0) || ($a3_rc -eq 0 && $our_rc -ne 0) ]]; then
        echo -e "\e[31mERROR:\e[0m return code mismatch for $file with sa-scan"
    fi

    ######## sa-parse #########


    reference-implementations/A3-sclp "$file" --show-tokens --sa-parse 2>/dev/null
    a3_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A3-sclp sa-parse"
        continue
    fi

    mv "$toks_file" "$a3_toks_file"

    ./sclp --show-tokens "$file" --sa-parse 2>/dev/null
    our_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp sa-parse"
        continue
    fi

    diff -Bw "$toks_file" "$a3_toks_file"

    if [[ ($a3_rc -ne 0 && $our_rc -eq 0) || ($a3_rc -eq 0 && $our_rc -ne 0) ]]; then
        echo -e "\e[31mERROR:\e[0m return code mismatch for $file with sa-parse"
    fi

    rm -f "$toks_file" "$a3_toks_file"
    rm -f "$ast_file" "$a3_ast_file"

    ######## sa-ast #########

    reference-implementations/A3-sclp "$file" --show-tokens --show-tac --show-ast --sa-ast 2>/dev/null
    a3_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A3-sclp sa-ast"
        continue
    fi
    if [[ ! -f "$ast_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by A3-sclp sa-ast"
        continue
    fi

    mv "$toks_file" "$a3_toks_file"
    mv "$ast_file" "$a3_ast_file"

    ./sclp --show-tokens --show-tac --show-ast "$file" --sa-ast 2>/dev/null
    our_rc=$?

    if [[ ! -f "$toks_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp sa-ast"
        continue
    fi
    if [[ ! -f "$ast_file" ]]; then
        echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by A3-sclp sa-ast"
        continue
    fi

    diff -Bw "$toks_file" "$a3_toks_file"
    diff -Bw "$ast_file" "$a3_ast_file"


    if [[ ($a3_rc -ne 0 && $our_rc -eq 0) || ($a3_rc -eq 0 && $our_rc -ne 0) ]]; then
        echo -e "\e[31mERROR:\e[0m return code mismatch for $file with sa-parse"
    fi

    rm -f "$toks_file" "$a3_toks_file"
    rm -f "$ast_file" "$a3_ast_file"
    rm -f "$tac_file" "$a3_tac_file"
done
