if [ "$1" = "-f" ]; then
    git clean -Xfd
fi
'latexmk' '--shell-escape' '-xelatex' 'bare_main_ru.tex'
