# University Thesis LaTeX Template

A clean and simple LaTeX template for writing university theses. This template is designed to be easily configurable for
different languages and comes with all the necessary files to get you started.

# Table of Contents

<!-- TOC -->
* [University Thesis LaTeX Template](#university-thesis-latex-template)
* [Table of Contents](#table-of-contents)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
    * [Linux (Recommended)](#linux-recommended)
    * [macOS](#macos)
    * [Windows](#windows)
  * [Cloning the Repository](#cloning-the-repository)
* [Usage](#usage)
  * [Compiling the Thesis](#compiling-the-thesis)
  * [Project Structure](#project-structure)
* [But I don't know Latex...](#but-i-dont-know-latex)
<!-- TOC -->

# Getting Started

Follow these instructions to get a local copy up and running.

## Prerequisites

Before you begin, ensure you have `git` installed on your system.

## Installation

### Linux (Recommended)

1. **Install Dependencies:** Open your terminal and run the following commands to install the necessary packages. This
   example uses `apt` for Debian-based distributions like Ubuntu.

   ```shell
   sudo apt update

   # liberation font, font utils, latex, python
   sudo apt install fonts-liberation xz-utils texlive-bibtex-extra biber texlive texlive-lang-cyrillic texlive-lang-european python3-pygments latexmk texlive-xetex
   ```

2. **Install Times New Roman Font:**

   ```shell
   curl -L -O https://notabug.org/ArtikusHG/times-new-roman/raw/master/times.tar.xz
   sudo tar -xf times.tar.xz -C /usr/share/fonts/
   fc-cache -f -v
   ```

### macOS

1. **Install Homebrew:** If you don't have it, install it by running:

   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install MacTeX and Fonts:**

   ```shell
   brew install --cask mactex font-liberation font-times-new-roman
   ```

> [!IMPORTANT]
> After installing MacTeX, run **TeX Live Utility** to ensure all packages are up to date.

3. **Install Python Pygments:**

   ```shell
   pip install Pygments
    ```

> [!WARNING]
> If you encounter issues with `pip`, you may need to install Python and pip first. You can do this via Homebrew:
> ```shell
  > brew install python
  > ```

### Windows

For Windows users, it is highly recommended to use the Windows Subsystem for Linux (WSL).

1. **Install WSL:** Follow the official Microsoft documentation
   to [install WSL](https://learn.microsoft.com/en-us/windows/wsl/install).
2. **Set up a Linux Distribution:** Install a distribution like Ubuntu from the Microsoft Store.
3. **Follow the Linux Instructions:** Once your WSL environment is set up, follow the Linux installation steps above
   within your WSL terminal.

> [!NOTE]
> While the template works on Windows via WSL, LaTeX package versions can sometimes cause issues. The Linux environment
> provided by WSL is more stable and consistent for this purpose. If you encounter problems, ensure your WSL
> distribution
> and all packages are fully updated.

## Cloning the Repository

Once the prerequisites are installed, clone the repository to your local machine:

```shell
git clone https://github.com/AntonC9018/uni_thesisTemplate
cd uni_thesisTemplate
```

# Usage

## Compiling the Thesis

1. **Choose Your Language:** Rename the main `.tex` file corresponding to your desired language (e.g., `ro` for
   Romanian).

   ```shell
   mv thesis/bare_main_ro.tex thesis/main.tex
   ```

   Replace `ro` with `ru` if you need the Russian template.

2. **Compile the PDF:** Navigate to the `thesis` directory and run the render script.

   ```shell
   cd thesis
   ./render.sh
   ```

> [!TIP]
> The compiled PDF will be generated in the same directory.

## Project Structure

```
.
├── thesis
│   ├── bare_main_ro.tex  # Romanian template source
│   ├── bare_main_ru.tex  # Russian template source
│   ├── main.tex          # The active thesis file (after renaming)
│   └── render.sh         # The compilation script
└── ... (other project files)
```

# But I don't know Latex...

Don't worry\! Here’s a quick overview of the workflow:

1. **Source File:** All your content is written in the `main.tex` file. This is a plain text file where you'll write
   your thesis.
2. **Compiler:** The `render.sh` script uses a LaTeX compiler to process your `main.tex` file.
3. **Output:** The compiler generates a `main.pdf` file in the same directory.

The best way to learn is by doing. Open `main.tex`, make some small changes, and re-run the `./render.sh` script to see
how your changes affect the final PDF. The compiler will also provide useful error messages if something goes wrong.

*A video tutorial will be available on YouTube soon.*
