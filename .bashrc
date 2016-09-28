alias gl='git log --oneline --all --graph --decorate  $*'
alias gs='git status -s'
alias gd='git diff'
alias ls='ls -F --color=auto --show-control-chars --hide="*.aux" --hide="*.log" --hide="*.out" --hide="*.syntex.gz" --hide="*.acr" --hide="*.acn" --hide="*.alg" --hide="*.bbl" --hide="*.bak" --hide="*.bcf" --hide="*.glg" --hide="*.blg" --hide="*.glo" --hide="*.gls" --hide="*.ist" --hide="*.lof" --hide="*.run.xml" --hide="*.synctex.gz" --hide="*.toc" --hide="*.tdo" --hide="NTUSER.DAT*" --hide="ntuser.dat*" --hide="*.fdb_latexmk"'
alias dotfiles='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export master=$HOME/Dropbox/Studium/master
export projekte=$HOME/Documents/Projekte
export GIT_EDITOR=vim

# If we do not have $JAVA_HOME set and are on a mingw-system, just use the one found in Program Files\Java
if [ -z ${JAVA_HOME+x} ] && [ $MSYSTEM == "MINGW32" ]; then
	# we need a short windows path here, since otherwise Java would refuse to run on a path with spaces
	JAVA_HOME=`cygpath -sw "$(find 'C:\Program Files\Java' -maxdepth 1 -name 'jdk*' | tail -1)"`
	export JAVA_HOME=`cygpath -u $JAVA_HOME`
fi

# If we are on a mingw-system, and do not have any 'open' binary available, call "explorer path"
open_cmd=$(command -v open >/dev/null 2>&1)
if [ ! -x "$open_cmd" ] && [ $MSYSTEM == "MINGW32" ]; then 
		fnopen() {
				explorer $(cygpath -w "$1")
		}
		alias open=fnopen
fi
