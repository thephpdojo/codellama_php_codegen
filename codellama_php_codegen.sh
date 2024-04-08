#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Please specify the logic file"
    echo "Example: sh codellama_php_codegen.sh <logic file>"
    exit
fi

FUNCTION_NAME=$(basename "$1" .txt)

PHP_CODE_GEN_PROMPT="
implement the following logic in php 
and show me the code only, 
and do not explain
and do not show explanation
and do not show <?php in the beginning
and do not show ?> at the end
and do not try to explain
and output valid php code

logic:\n
"

PHP_CODE_GEN_PROMPT="$PHP_CODE_GEN_PROMPT\n$(cat $1)\n"

echo $PHP_CODE_GEN_PROMPT | ollama run codellama
