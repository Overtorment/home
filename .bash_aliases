if [ $DISPLAY = ":0" ]
then
  echo
fi

alias grep='grep --color=always'
alias ll='ls -lah'
alias less='less -SR'
alias gti='git'
export PATH="$HOME/.yarn/bin:$PATH"
alias fuck='sudo $(history -p \!\!)'
alias gitl='git log --oneline'
export PATH=$PATH:/usr/local/go/bin
export ANDROID_NDK_HOME=/home/ghost/Android/Sdk/ndk/25.1.8937393
export GOPATH=~/go
export GOROOT=/usr/local/go/
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/home/ghost/Android/Sdk/platform-tools
export LC_ALL="en_US.UTF-8"
export PS1='\[\033[01;32m\]\u@`/bin/hostname -f`\[\033[01;34m\] \w $(__git_ps1 "(%s)") \$\[\033[00m\] '
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export ANDROID_SDK_ROOT=/home/ghost/Android/Sdk/
export ANDROID_HOME=/home/ghost/Android/Sdk/
