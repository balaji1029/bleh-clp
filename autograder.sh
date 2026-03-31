#!/bin/bash
DIR="example-programs"

flags=(
    "--show-tokens --show-ast --show-symtab --show-tac --show-rtl"
    # "--show-tokens --sa-scan",
    # "--show-tokens --sa-parse",
    # "--show-tokens --sa-ast"
)

if [[ ! -f sclp ]]; then
    echo "sclp not made!!!"
    exit
fi

if [[ "$1" == "test" ]]; then
    file="$DIR/test.c"
    toks_file="${file}.toks"
    ast_file="${file}.ast"
    tac_file="${file}.tac"
    rtl_file="${file}.rtl"
    sym_file="${file}.sym"
    spim_file="${file}.spim"

    ref_toks_file="${file}.A4.toks"
    ref_ast_file="${file}.A4.ast"
    ref_tac_file="${file}.A4.tac"
    ref_rtl_file="${file}.A4.rtl"
    ref_sym_file="${file}.A4.sym"
    ref_spim_file="${file}.A4.spim"

    rm -f "$toks_file" "$ref_toks_file"
    rm -f "$ast_file" "$ref_ast_file"
    rm -f "$tac_file" "$ref_tac_file"
    rm -f "$rtl_file" "$ref_rtl_file"
    rm -f "$sym_file" "$ref_sym_file"
    rm -f "$spim_file" "$ref_spim_file"

    for flag in "${flags[@]}"; do
        reference-implementations/A4-sclp "$file" $flag 2>/dev/null
        ref_rc=$?

        mv "$toks_file" "$ref_toks_file" 2>/dev/null
        mv "$ast_file" "$ref_ast_file" 2>/dev/null
        mv "$tac_file" "$ref_tac_file" 2>/dev/null
        mv "$rtl_file" "$ref_rtl_file" 2>/dev/null
        mv "$sym_file" "$ref_sym_file" 2>/dev/null
        mv "$spim_file" "$ref_spim_file" 2>/dev/null

        ./sclp $flag "$file" 2>/dev/null
        our_rc=$?

        if [[ ! -f "$toks_file" && -f "$ref_toks_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp"
            continue
        elif [[ -f "$toks_file" && -f "$ref_toks_file" ]]; then
            diff -Bw "$toks_file" "$ref_toks_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
            # echo $?
        fi
        if [[ ! -f "$ast_file" && -f "$ref_ast_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by our sclp"
            continue
        elif [[ -f "$ast_file" && -f "$ref_ast_file" ]]; then
            diff -Bw "$ast_file" "$ref_ast_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi
        if [[ ! -f "$tac_file" && -f "$ref_tac_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .tac file not generated for $file by our sclp"
            continue
        elif [[ -f "$tac_file" && -f "$ref_tac_file" ]]; then
            diff -Bw "$tac_file" "$ref_tac_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi
        if [[ ! -f "$rtl_file" && -f "$ref_rtl_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .rtl file not generated for $file by our sclp"
            continue
        elif [[ -f "$rtl_file" && -f "$ref_rtl_file" ]]; then
            sed -i 's/;;.*//' "$ref_rtl_file"
            diff -Bw "$rtl_file" "$ref_rtl_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi
        if [[ ! -f "$sym_file" && -f "$ref_sym_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .sym file not generated for $file by our sclp"
            continue
        elif [[ -f "$sym_file" && -f "$ref_sym_file" ]]; then
            diff -Bw "$sym_file" "$ref_sym_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi
        if [[ ! -f "$spim_file" && -f "$ref_spim_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .spim file not generated for $file by our sclp"
            continue
        elif [[ -f "$spim_file" && -f "$ref_spim_file" ]]; then
            diff -Bw <(grep -vE '^\s*(#|$)' "$spim_file") <(grep -vE '^\s*(#|$)' "$ref_spim_file")
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi

        if [[ ($ref_rc -ne 0 && $our_rc -eq 0) || ($ref_rc -eq 0 && $our_rc -ne 0) ]]; then
            echo -e "\e[31mERROR:\e[0m return code mismatch for $file with flag $flag, ref: $ref_rc, our: $our_rc"
        fi
    done
    echo "Test passed"
    exit
fi

count=0

find "$DIR" -type f -name "*.c" | while read -r file; do
    ((count++))
    # echo "Processing $file"
    printf "\r Processed %d files... Processing $file                                    " "$count"

    toks_file="${file}.toks"
    ast_file="${file}.ast"
    tac_file="${file}.tac"
    rtl_file="${file}.rtl"
    sym_file="${file}.sym"
    spim_file="${file}.spim"

    ref_toks_file="${file}.A4.toks"
    ref_ast_file="${file}.A4.ast"
    ref_tac_file="${file}.A4.tac"
    ref_rtl_file="${file}.A4.rtl"
    ref_sym_file="${file}.A4.sym"
    ref_spim_file="${file}.A4.spim"

    rm -f "$toks_file" "$ref_toks_file"
    rm -f "$ast_file" "$ref_ast_file"
    rm -f "$tac_file" "$ref_tac_file"
    rm -f "$rtl_file" "$ref_rtl_file"
    rm -f "$sym_file" "$ref_sym_file"
    rm -f "$spim_file" "$ref_spim_file"

    for flag in "${flags[@]}"; do
        reference-implementations/A4-sclp "$file" $flag 2>/dev/null
        ref_rc=$?

        mv "$toks_file" "$ref_toks_file" 2>/dev/null
        mv "$ast_file" "$ref_ast_file" 2>/dev/null
        mv "$tac_file" "$ref_tac_file" 2>/dev/null
        mv "$rtl_file" "$ref_rtl_file" 2>/dev/null
        mv "$sym_file" "$ref_sym_file" 2>/dev/null
        mv "$spim_file" "$ref_spim_file" 2>/dev/null

        ./sclp $flag "$file" 2>/dev/null
        our_rc=$?

        if [[ ! -f "$toks_file" && -f "$ref_toks_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .toks file not generated for $file by our sclp"
            continue
        elif [[ -f "$toks_file" && -f "$ref_toks_file" ]]; then
            diff -Bw "$toks_file" "$ref_toks_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
            # echo $?
        fi
        if [[ ! -f "$ast_file" && -f "$ref_ast_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .ast file not generated for $file by our sclp"
            continue
        elif [[ -f "$ast_file" && -f "$ref_ast_file" ]]; then
            diff -Bw "$ast_file" "$ref_ast_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi
        if [[ ! -f "$tac_file" && -f "$ref_tac_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .tac file not generated for $file by our sclp"
            continue
        elif [[ -f "$tac_file" && -f "$ref_tac_file" ]]; then
            diff -Bw "$tac_file" "$ref_tac_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi
        if [[ ! -f "$rtl_file" && -f "$ref_rtl_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .rtl file not generated for $file by our sclp"
            continue
        elif [[ -f "$rtl_file" && -f "$ref_rtl_file" ]]; then
            sed -i 's/;;.*//' "$ref_rtl_file"
            diff -Bw "$rtl_file" "$ref_rtl_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi
        if [[ ! -f "$sym_file" && -f "$ref_sym_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .sym file not generated for $file by our sclp"
            continue
        elif [[ -f "$sym_file" && -f "$ref_sym_file" ]]; then
            diff -Bw "$sym_file" "$ref_sym_file"
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi
        if [[ ! -f "$spim_file" && -f "$ref_spim_file" ]]; then
            echo -e "\e[31mERROR:\e[0m .spim file not generated for $file by our sclp"
            continue
        elif [[ -f "$spim_file" && -f "$ref_spim_file" ]]; then
            diff -Bw <(grep -vE '^\s*(#|$)' "$spim_file") <(grep -vE '^\s*(#|$)' "$ref_spim_file")
            if [[ $? -ne 0 ]]; then
                echo "in the $file"
            fi
        fi

        if [[ ($ref_rc -ne 0 && $our_rc -eq 0) || ($ref_rc -eq 0 && $our_rc -ne 0) ]]; then
            echo -e "\e[31mERROR:\e[0m return code mismatch for $file with flag $flag, ref: $ref_rc, our: $our_rc"
        fi
    done
    rm -f "$toks_file" "$ref_toks_file"
    rm -f "$ast_file" "$ref_ast_file"
    rm -f "$tac_file" "$ref_tac_file"
    rm -f "$sym_file" "$ref_sym_file"
    rm -f "$rtl_file" "$ref_rtl_file"
    rm -f "$spim_file" "$ref_spim_file"

done
printf "\rProcessing done...                                                                         \n"