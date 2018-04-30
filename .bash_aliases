if [ $DISPLAY = ":0" ]
then
  curl http://wttr.in/london
  ~/check-time.sh  | sed 's/-//' |awk '{print "Осталось "$0" мин"}' |  cowsay | lolcat
  curl https://www.bitstamp.net/api/v2/ticker/btcusd/ 2>/dev/null  | sed  's/\,/\n/g' | grep last | awk  -F':' '{print "Latest btc-usd price is\n "$2}' |  sed 's/\"//g' |  cowsay | lolcat
  curl https://www.bitstamp.net/api/v2/ticker/btcusd/ 2>/dev/null  | sed  's/\,/\n/g' | grep high | awk  -F':' '{print "high "$2}' |  sed 's/\"//g'
  curl https://www.bitstamp.net/api/v2/ticker/btcusd/ 2>/dev/null  | sed  's/\,/\n/g' | grep low | awk  -F':'  '{print "low  "$2}' |  sed 's/\"//g'
  curl https://www.bitstamp.net/api/v2/ticker/btcusd/   2>/dev/null | sed 's/,/\n/g' | egrep 'high|last|low' | awk -F": " '{print $2}' | sed -z 's/\n/ /g' | awk '{print $3" "$1" "$2}'  | sed 's/"//g' | spark | lolcat
  echo
  echo "price chart (1d):"
  cat ~/btcusd.every30m | tail -n 48 | spark | lolcat
  curl http://fucking-great-advice.ru/api/random -s | awk -F"\"text\":" '{print $2}' | awk -F"\"sound\":" '{print $1}' | cowsay | lolcat
fi

alias grep='grep --color=always'
alias ll='ls -lah'
alias less='less -SR'
export PATH="$HOME/.yarn/bin:$PATH"
alias fuck='sudo $(history -p \!\!)'
alias gitl='git log --oneline'
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/bin/node-v8.4.0-linux-x64/bin
export GOPATH=~/go/
export LC_ALL="en_US.UTF-8"
PATH=$PATH:~/bin
export PS1='\[\033[01;32m\]\u@`/bin/hostname -f`\[\033[01;34m\] \w $(__git_ps1 "(%s)") \$\[\033[00m\] '
