#!/bin/bash
DIR="example-programs"

flags=(
    "--show-tokens --show-ast --show-tac",
    "--show-tokens --sa-scan",
    "--show-tokens --sa-parse",
    "--show-tokens --show-ast --sa-ast"
)

find "$DIR" -type f -name "*.c" | while read -r file; do
    echo "Processing $file"

    toks_file="${file}.toks"
    ast_file="${file}.ast"
    tac_file="${file}.tac"
    rtl_file="${file}.rtl"
    ref_toks_file="${file}.A3.toks"
    ref_ast_file="${file}.A3.ast"
    ref_tac_file="${file}.A3.tac"
    ref_rtl_file="${file}.A3.rtl"

    for flag in "${flags[@]}"; do
        reference-implementations/A3-sclp "$file" $flag 2>/dev/null
        ref_rc=$?

        mv "$toks_file" "$ref_toks_file" 2>/dev/null
        mv "$ast_file" "$ref_ast_file" 2>/dev/null
        mv "$tac_file" "$ref_tac_file" 2>/dev/null

        ./sclp $flag "$file" 2>/dev/null
        our_rc=$?

        if [[ ! -f "$toks_file" && -f "$ref_toks_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp with flags $flag"
            continue
        elif [[ -f "$toks_file" && -f "$ref_toks_file" ]]; then
            diff -Bw "$toks_file" "$ref_toks_file"
        fi
        if [[ ! -f "$ast_file" && -f "$ref_ast_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by our sclp with flags $flag"
            continue
        elif [[ -f "$ast_file" && -f "$ref_ast_file" ]]; then
            diff -Bw "$ast_file" "$ref_ast_file"
        fi
        if [[ ! -f "$tac_file" && -f "$ref_tac_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .tac file not generated for $file by our sclp with flags $flag"
            continue
        elif [[ -f "$tac_file" && -f "$ref_tac_file" ]]; then
            diff -Bw "$tac_file" "$ref_tac_file"
        fi
        if [[ ! -f "$rtl_file" && -f "$ref_rtl_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .rtl file not generated for $file by our sclp with flags $flag"
            continue
        elif [[ -f "$rtl_file" && -f "$ref_rtl_file" ]]; then
            diff -Bw "$rtl_file" "$ref_rtl_file"
        fi

        if [[ ($ref_rc -ne 0 && $our_rc -eq 0) || ($ref_rc -eq 0 && $our_rc -ne 0) ]]; then
            echo -e "\e[31mERROR:\e[0m return code mismatch for $file with flags $flag"
        fi
    done

    rm -f "$toks_file" "$ref_toks_file"
    rm -f "$ast_file" "$ref_ast_file"
    rm -f "$tac_file" "$ref_tac_file"
done
