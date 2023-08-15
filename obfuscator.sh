#!/bin/bash
clear

# Terminal colors
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# Red-colored banner
BANNER="
${RED}   ___  _     __                  _           
  / _ \| |__ / _|_  _ ___ __ __ _| |_ ___ _ _ 
 | (_) | '_ \  _| || (_-</ _/ _\` |  _/ _ \ '_|
  \___/|_.__/_|  \_,_/__/\__\\__,_|\__\\___/_|  
${RESET}"

# List of main programming languages
languages=("HTML" "Python" "Java" "C" "C++" "JavaScript" "Ruby" "PHP" "Swift" "Bash" "Rust" "Kotlin" "Go" "Perl" "Lua" "Scala" "TypeScript" "Haskell" "R" "MATLAB")

# Display title and banner
echo -e "${GREEN}$BANNER${RESET}"

# Function to print separator line
function print_separator {
  echo "================================================="
}

# Display information
print_separator
echo -e "\033[1;33mAuthor: Wanz Xploit\033[0m"
echo -e "\033[1;33mInstagram: \033[4mhttps://www.instagram.com/wanz_xploit/\033[0m"
echo -e "\033[1;33mFacebook: \033[4mhttps://www.facebook.com/wanzxploit/\033[0m"
echo -e "\033[1;33mYouTube: \033[4mhttps://www.youtube.com/c/WanzXploit\033[0m"
echo -e "\033[1;33mGitHub: \033[4mhttps://github.com/wanzxploit\033[0m"
print_separator
echo

# Display list of programming languages
echo -e "${YELLOW}Select a programming language:${RESET}"
for ((i=0; i<${#languages[@]}; i++)); do
  echo -e "${GREEN}$(($i+1)). ${languages[$i]}${RESET}"
done

# Read user's choice
read -p "Enter the language number: " choice

# Validate the choice
if [[ $choice -lt 1 || $choice -gt ${#languages[@]} ]]; then
  echo -e "${RED}Invalid choice.${RESET}"
  exit 1
fi

# Get the selected language name
selected_language="${languages[$(($choice-1))]}"

# Ask for input and output file names
read -p "Enter the name of the file to be obfuscated: " filename

# Check if the input file exists
if [[ ! -f $filename ]]; then
  echo -e "${YELLOW}File not found: $filename.${RESET}"
  exit 1
fi

read -p "Enter the name of the obfuscated output file: " outputname

# Implementation of obfuscation based on the selected programming language
case $selected_language in
  "HTML")
    # Obfuscation for HTML
    awk '{ gsub(/</, "&lt;"); gsub(/>/, "&gt;"); gsub(/ /, "&nbsp;"); print }' "$filename" > "$outputname.html"
    ;;
  "Python")
    # Obfuscation for Python
    python -m py_compile "$filename"
    mv "__pycache__/$filename.cpython-*.pyc" "$outputname.pyc"
    rm -r "__pycache__"
    ;;
  "Java")
    # Obfuscation for Java
    javac "$filename"
    mv "$filename.class" "$outputname.class"
    ;;
  "C")
    # Obfuscation for C
    gcc -o "$outputname" "$filename"
    ;;
  "C++")
    # Obfuscation for C++
    g++ -o "$outputname" "$filename"
    ;;
  "JavaScript")
    # Obfuscation for JavaScript
    npm install -g javascript-obfuscator
    javascript-obfuscator "$filename" --output "$outputname.js"
    ;;
  "Ruby")
    # Obfuscation for Ruby
    echo "puts 'Hello, world!'" | ruby -o "$outputname.rb"
    ;;
  "PHP")
    # Obfuscation for PHP
    php -w "$filename" > "$outputname.php"
    ;;
  "Swift")
    # Obfuscation for Swift
    swiftc -o "$outputname" "$filename"
    ;;
  "Bash")
    # Obfuscation for Bash
    tr 'a-zA-Z' 'n-za-mN-ZA-M' < "$filename" > "$outputname.sh"
    ;;
  "Rust")
    # Obfuscation for Rust
    echo "fn main() { println!(\"Hello, world!\"); }" > "$outputname.rs"
    ;;
  "Kotlin")
    # Obfuscation for Kotlin
    echo "fun main() { println(\"Hello, world!\") }" > "$outputname.kt"
    ;;
  "Go")
    # Obfuscation for Go
    echo "package main\n\nimport \"fmt\"\n\nfunc main() {\n\tfmt.Println(\"Hello, world!\")\n}" > "$outputname.go"
    ;;
  "Perl")
    # Obfuscation for Perl
    echo 'print "Hello, world!\n";' > "$outputname.pl"
    ;;
  "Lua")
    # Obfuscation for Lua
    echo 'print("Hello, world!")' > "$outputname.lua"
    ;;
  "Scala")
    # Obfuscation for Scala
    echo 'object Main extends App { println("Hello, world!") }' > "$outputname.scala"
    ;;
  "TypeScript")
    # Obfuscation for TypeScript
    echo 'console.log("Hello, world!");' > "$outputname.ts"
    ;;
  "Haskell")
    # Obfuscation for Haskell
    echo 'main = putStrLn "Hello, world!"' > "$outputname.hs"
    ;;
  "R")
    # Obfuscation for R
    echo 'cat("Hello, world!\n")' > "$outputname.R"
    ;;
  "MATLAB")
    # Obfuscation for MATLAB
    echo 'disp("Hello, world!");' > "$outputname.m"
    ;;
  *)
    echo -e "${RED}Obfuscation for $selected_language has not been implemented.${RESET}"
    exit 1
    ;;
esac

echo -e "${GREEN}File $filename has been obfuscated as $outputname.${RESET}"
