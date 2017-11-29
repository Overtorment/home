if [ $DISPLAY = ":0" ]
then
  curl http://wttr.in/london
  curl https://www.bitstamp.net/api/v2/ticker/btcusd/ 2>/dev/null  | sed  's/\,/\n/g' | grep last | awk  -F':' '{print "Latest btc-usd price is\n "$2}' |  sed 's/\"//g' |  cowsay | lolcat
  curl https://www.bitstamp.net/api/v2/ticker/btcusd/ 2>/dev/null  | sed  's/\,/\n/g' | grep high | awk  -F':' '{print "high "$2}' |  sed 's/\"//g'
  curl https://www.bitstamp.net/api/v2/ticker/btcusd/ 2>/dev/null  | sed  's/\,/\n/g' | grep low | awk  -F':'  '{print "low  "$2}' |  sed 's/\"//g'
  cat /home/burn/btcusd |  tail -n 23 | spark | lolcat
fi

alias grep='grep --color=auto'


export PATH="$HOME/.yarn/bin:$PATH"
alias fuck='sudo $(history -p \!\!)'
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/bin/node-v8.4.0-linux-x64/bin
export GOPATH=/home/burn/go/
export LC_ALL="en_US.UTF-8"
PATH=$PATH:~/bin

