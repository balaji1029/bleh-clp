#!/bin/bash
DIR="example-programs"

flags=(
    "--show-tokens --show-ast --show-tac --sa-parse",
    "--show-tokens --sa-scan --sa-parse",
    "--show-tokens --sa-parse",
    "--show-tokens --sa-ast --sa-parse"
)

find "$DIR" -type f -name "*.c" | while read -r file; do
    echo "Processing $file"

    toks_file="${file}.toks"
    ast_file="${file}.ast"
    tac_file="${file}.tac"
    rtl_file="${file}.rtl"
    ref_toks_file="${file}.A4.toks"
    ref_ast_file="${file}.A4.ast"
    ref_tac_file="${file}.A4.tac"
    ref_rtl_file="${file}.A4.rtl"

    for flag in "${flags[@]}"; do


        reference-implementations/A4-sclp "$file" $flag 2>/dev/null
        ref_rc=$?

        mv "$toks_file" "$ref_toks_file" 2>/dev/null
        mv "$ast_file" "$ref_ast_file" 2>/dev/null
        mv "$tac_file" "$ref_tac_file" 2>/dev/null

        ./sclp $flag "$file" 2>/dev/null
        our_rc=$?

        if [[ ! -f "$toks_file" && -f "$ref_toks_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp"
            continue
        elif [[ -f "$toks_file" && -f "$ref_toks_file" ]]; then
            diff -Bw "$toks_file" "$ref_toks_file"
        fi
        if [[ ! -f "$ast_file" && -f "$ref_ast_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by our sclp"
            continue
        elif [[ -f "$ast_file" && -f "$ref_ast_file" ]]; then
            diff -Bw "$ast_file" "$ref_ast_file"
        fi
        if [[ ! -f "$tac_file" && -f "$ref_tac_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .tac file not generated for $file by our sclp"
            continue
        elif [[ -f "$tac_file" && -f "$ref_tac_file" ]]; then
            diff -Bw "$tac_file" "$ref_tac_file"
        fi
        if [[ ! -f "$rtl_file" && -f "$ref_rtl_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .rtl file not generated for $file by our sclp"
            continue
        elif [[ -f "$rtl_file" && -f "$ref_rtl_file" ]]; then
            diff -Bw "$rtl_file" "$ref_rtl_file"
        fi

        if [[ ($ref_rc -ne 0 && $our_rc -eq 0) || ($ref_rc -eq 0 && $our_rc -ne 0) ]]; then
            echo -e "\e[31mERROR:\e[0m return code mismatch for $file with flag $flag, ref: $ref_rc, our: $our_rc"
        fi
    done

    ######## sa-scan #########

    rm -f "$toks_file" "$ref_toks_file"
    rm -f "$ast_file" "$ref_ast_file"
    rm -f "$tac_file" "$ref_tac_file"

    # reference-implementations/A4-sclp "$file" --show-tokens --sa-scan 2>/dev/null
    # ref_rc=$?

    # if [[ ! -f "$toks_file" ]]; then
    #     echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A4-sclp sa-scan"
    #     continue
    # fi

    # mv "$toks_file" "$ref_toks_file"

    # ./sclp --show-tokens "$file" --sa-scan 2>/dev/null
    # our_rc=$?

    # if [[ ! -f "$toks_file" ]]; then
    #     echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp sa-scan"
    #     continue
    # fi

    # diff -Bw "$toks_file" "$ref_toks_file"

    # if [[ ($ref_rc -ne 0 && $our_rc -eq 0) || ($ref_rc -eq 0 && $our_rc -ne 0) ]]; then
    #     echo -e "\e[31mERROR:\e[0m return code mismatch for $file with sa-scan"
    # fi

    # ######## sa-parse #########


    # reference-implementations/A4-sclp "$file" --show-tokens --sa-parse 2>/dev/null
    # ref_rc=$?

    # if [[ ! -f "$toks_file" ]]; then
    #     echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A4-sclp sa-parse"
    #     continue
    # fi

    # mv "$toks_file" "$ref_toks_file"

    # ./sclp --show-tokens "$file" --sa-parse 2>/dev/null
    # our_rc=$?

    # if [[ ! -f "$toks_file" ]]; then
    #     echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp sa-parse"
    #     continue
    # fi

    # diff -Bw "$toks_file" "$ref_toks_file"

    # if [[ ($ref_rc -ne 0 && $our_rc -eq 0) || ($ref_rc -eq 0 && $our_rc -ne 0) ]]; then
    #     echo -e "\e[31mERROR:\e[0m return code mismatch for $file with sa-parse"
    # fi

    # rm -f "$toks_file" "$ref_toks_file"
    # rm -f "$ast_file" "$ref_ast_file"

    # ######## sa-ast #########

    # reference-implementations/A4-sclp "$file" --show-tokens --show-tac --show-ast --sa-ast 2>/dev/null
    # ref_rc=$?

    # if [[ ! -f "$toks_file" ]]; then
    #     echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by A4-sclp sa-ast"
    #     continue
    # fi
    # if [[ ! -f "$ast_file" ]]; then
    #     echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by A4-sclp sa-ast"
    #     continue
    # fi

    # mv "$toks_file" "$ref_toks_file"
    # mv "$ast_file" "$ref_ast_file"

    # ./sclp --show-tokens --show-tac --show-ast "$file" --sa-ast 2>/dev/null
    # our_rc=$?

    # if [[ ! -f "$toks_file" ]]; then
    #     echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp sa-ast"
    #     continue
    # fi
    # if [[ ! -f "$ast_file" ]]; then
    #     echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by A4-sclp sa-ast"
    #     continue
    # fi

    # diff -Bw "$toks_file" "$ref_toks_file"
    # diff -Bw "$ast_file" "$ref_ast_file"


    # if [[ ($ref_rc -ne 0 && $our_rc -eq 0) || ($ref_rc -eq 0 && $our_rc -ne 0) ]]; then
    #     echo -e "\e[31mERROR:\e[0m return code mismatch for $file with sa-parse"
    # fi

    rm -f "$toks_file" "$ref_toks_file"
    rm -f "$ast_file" "$ref_ast_file"
    rm -f "$tac_file" "$ref_tac_file"
done
