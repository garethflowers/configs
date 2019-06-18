# git
alias gitclean='for dir in $(find . -name '\''.git'\''); do cd ${dir%/*}; git remote prune origin; git branch --merged | grep --extended-regexp --invert-match '\''(^\*|master|dev)'\'' | xargs git branch --delete; cd -; done'
alias gitpull='for dir in $(find . -name '\''.git'\''); do cd ${dir%/*}; git pull; cd -; done'

# system
alias sysupdate='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y'