# USM Latex Template

This repository contains a Latex template 
configured according to USM standards.

# Prerequisites

## Windows

> [There's a video in russian.](https://youtu.be/TGKnbUBJUOU)

For Windows users, it is highly recommended to use WSL.
For installation instructions, see [this](https://learn.microsoft.com/en-us/windows/wsl/install).

Once you got WSL, refer to the [Ubuntu](#Ubuntu) section for further instructions.

Now, the template may work on Windows without WSL.
The reason it's not recommended is because Latex is known
to cause issues on Windows because of incorrect package versions.
Latex on Linux is more stable in this regard.

## Ubuntu

Run the following commands to install the required packages and fonts:

```shell
sudo apt update
sudo apt install fonts-liberation xz-utils texlive-bibtex-extra biber texlive texlive-lang-cyrillic texlive-lang-european python3-pygments latexmk texlive-xetex # liberation font, font utils, latex, python
curl -L -O https://notabug.org/ArtikusHG/times-new-roman/raw/master/times.tar.xz
sudo tar -xf times.tar.xz -C /usr/share/fonts/
fc-cache -f -v
```

## macOS

1. **Install Homebrew:** If you don't have it, install it by running:

   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install MacTeX and Fonts:**

   ```shell
   brew install --cask mactex font-liberation font-times-new-roman
   ```

   After installing MacTeX, run **TeX Live Utility** to ensure 
   all packages are up to date.

3. **Install Python** (skip if you already have Python).

   ```shell
   brew install python
   ```

4. **Install Pygments:**

   ```shell
   pip install Pygments
   ```

# Usage

## Cloning the Repository

Use `git` to get a local copy of this repository.
Install `git` if you don't have it yet.

```shell
cd ~
git clone https://github.com/AntonC9018/uni_thesisTemplate
cd uni_thesisTemplate
```

## Compiling the Thesis

1. **Choose Your Language:** Rename the main `.tex` file 
   corresponding to your language (`ru`/`ro`).

   ```shell
   mv thesis/bare_main_ro.tex thesis/main.tex
   ```

2. **Compile the PDF:**

   ```shell
   cd thesis
   ./render.sh
   ```

## But I don't know Latex...

Here's an overview of the process:
- There's the **source file**, which is the `main.tex` file;
- There's the **Latex compiler**, which *compiles* it to make a PDF;
- The PDF is output in the same directory as the `main.tex` file, you can view it normally in the browser.

I suggest you look through `main.tex` and correlate 
this source file with what you see in the PDF.
Play around with it, see how changes in the source file affect the PDF, 
see what errors the compiler gives.
You will be able to learn most of what you need to write your work like this.

