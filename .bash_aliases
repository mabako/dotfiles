shopt -s expand_aliases
alias gl='git log --oneline --all --graph --decorate  $*'
alias gs='git status -s'
alias gd='git diff'
alias ls='ls -F --color=auto --show-control-chars --hide="*.aux" --hide="*.log" --hide="*.out" --hide="*.syntex.gz" --hide="*.acr" --hide="*.acn" --hide="*.alg" --hide="*.bbl" --hide="*.bak" --hide="*.bcf" --hide="*.fls" --hide="*.glg" --hide="*.blg" --hide="*.glo" --hide="*.gls" --hide="*.ist" --hide="*.lof" --hide="*.lot" --hide="*.run.xml" --hide="*.synctex.gz" --hide="*.toc" --hide="*.tdo" --hide="NTUSER.DAT*" --hide="ntuser.dat*" --hide="*.fdb_latexmk"'
alias dotfiles='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


