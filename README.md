## How to use?

> There's gonna be a video on YouTube later too.

**Requirements:**

- *For Windows users only* - Install WSL and configure a distribution. 
  I'll be assuming Ubuntu in the next steps, which is the default in WSL.

- Install all components using the package manager:
    ```
    sudo apt update
    sudo apt install fonts-liberation xz-utils texlive-bibtex-extra biber texlive texlive-lang-cyrillic texlive-lang-european python3-pygments latexmk texlive-xetex # liberation font, font utils, latex, python
    curl -L -O https://notabug.org/ArtikusHG/times-new-roman/raw/master/times.tar.xz
    sudo tar -xf times.tar.xz -C /usr/share/fonts/
    fc-cache -f -v
    ```

- Clone this repo:
    ```
    git clone https://github.com/AntonC9018/uni_thesisTemplate
    cd uni_thesisTemplate
    ```

- Rename the file you need (ru / ro):
    ```
    mv thesis/bare_main_ro.tex thesis/main.tex
    ```

- If you already have a repo, copy over the files from this repo to your repo.

**How to compile?**

Just run:
```
cd thesis
./render.sh
```

## Notes for Windows

On Windows, it might work, it might not work.
It does work for me, but I had problems setting it up on other computers.
I assume it installs different versions for packages,
and to my knowledge it's not possible to lock them.

Linux is way more stable in this regard, so just use WSL.


## But I don't know Latex...

The process is like this:
- There's the *source file*, which is the `main.tex` file;
- There's the *Latex compiler*, which *compiles* it to make a PDF;
- The PDF is output in the same directory as the `main.tex` file, you can view it normally in the browser.

I suggest you look through `main.tex` and correlate 
this source file with what you see in the PDF.
Play around with it, see how changes in the source file affect the PDF, 
see what errors the compiler gives.
You will be able to learn most of what you need to write your work like this.

