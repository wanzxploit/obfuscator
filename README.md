# Obfuscator Tool for Various Programming Languages

This Bash script serves as an obfuscation tool designed to obscure source code files written in various programming languages. The tool provides a user-friendly menu-based interface to select the target programming language and obfuscate the chosen file, creating an obfuscated output file that is harder to understand and reverse engineer.

**screnshoot:**

![1](https://raw.githubusercontent.com/wanzxploit/obfuscator/main/obfuscator.png)



## Introduction

This obfuscation tool is designed to assist developers in protecting their source code by generating obfuscated versions of their files. The tool currently supports various programming languages and provides a user-friendly interface to select the target language and specify the input/output file names required.

## Features

- Obfuscates source code files for various programming languages.
- Easy-to-use menu-based interface.
- Generates obfuscated output files that are harder to reverse engineer.
- Easily extensible to support additional programming languages.

## Getting Started

### Dependencies

Make sure you have the following dependencies installed on your system:

- `python`: Required for obfuscating Python code.
- `npm` (Node.js): Required for obfuscating JavaScript code.
- `gcc` (GNU Compiler Collection): Required for obfuscating C and C++ code.
- `ruby`: Required for obfuscating Ruby code.
- `php`: Required for obfuscating PHP code.
- `swiftc`: Required for obfuscating Swift code.
- `tr`: Required for obfuscating Bash code.

### Usage

1. Copy this repository to your device.
2. Open a terminal and navigate to the directory containing the script.
3. Run the script with the command: `bash obfuscator.sh`

Follow the on-screen instructions to select the programming language and provide the required file names. The script will perform obfuscation based on the chosen language and create the obfuscated output file.

#### In Termux:

If you're using Termux on an Android device, here are the installation steps:

1. Open the Termux app.
2. Run the following command to install the required tools:
   ```bash
   pkg update && pkg upgrade
   pkg install git python npm ruby clang
   npm install -g javascript-obfuscator
   gem install bundler
   ```
3. Copy this repository by running the command:
   ```bash
   git clone https://github.com/wanzxploit/obfuscator.git
   ```
4. Navigate to the repository directory:
   ```bash
   cd obfuscator
   ```
5. Run the script:
   ```bash
   bash obfuscator.sh
   ```

#### In Linux

- Open a terminal and navigate to the directory containing the script.
1. Open the Terminal.
2. Run the following command to install the required tools:
   ```bash
   sudo apt update && pkg upgrade
   sudo apt install git python npm ruby clang
   npm install -g javascript-obfuscator
   gem install bundler
   ```
3. Copy this repository by running the command:
   ```bash
   git clone https://github.com/wanzxploit/obfuscator.git
   ```
4. Navigate to the repository directory:
   ```bash
   cd obfuscator
   ```
5. Run the script:
   ```bash
   bash obfuscator.sh
   ```

## Supported Programming Languages

This tool currently supports obfuscation for the following programming languages:

- HTML
- Python
- Java
- C
- C++
- JavaScript
- Ruby
- PHP
- Swift
- Bash
- Rust
- Kotlin
- Go
- Perl
- Lua
- Scala
- TypeScript
- Haskell
- R
- MATLAB

## Contributing

Contributions are welcome! If you'd like to add support for more programming languages or contribute to improving this tool, feel free to fork this repository, make your changes, and submit a pull request.

## Disclaimer

This tool is provided for educational and informational purposes only. The author is not responsible for any misuse or illegal activities carried out using this tool.

## Author

- Name: Wanz Xploit
- Instagram: [https://www.instagram.com/wanz_xploit/](https://www.instagram.com/wanz_xploit/)
- Facebook: [https://www.facebook.com/wanzxploit/](https://www.facebook.com/wanzxploit/)
- YouTube: [https://www.youtube.com/c/WanzXploit](https://www.youtube.com/c/WanzXploit)
- GitHub: [https://github.com/wanzxploit](https://github.com/wanzxploit)
