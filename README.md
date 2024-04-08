PHP Code Generator Using Code Llama

Code Llama is a code-specialized version of Llama 2 that was created by further training Llama 2 on its code-specific datasets, sampling more data from that same dataset for longer. Essentially, Code Llama features enhanced coding capabilities. It can generate code and natural language about code, from both code and natural language prompts (e.g., “Write me a function that outputs the fibonacci sequence”). It can also be used for code completion and debugging. It supports many of the most popular programming languages used today, including Python, C++, Java, PHP, Typescript (Javascript), C#, Bash and more.

This project will try to use Code Llama to generate PHP code based on the corresponding prompt.

Usage:
```
sh codellama_php_codegen.sh leetcode150/majority_element.txt
