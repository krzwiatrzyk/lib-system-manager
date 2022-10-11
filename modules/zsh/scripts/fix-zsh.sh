cd ~
mv .zsh_history .zsh_history_bad
strings -eS .zsh_history_bad > .zsh_history
zsh -c "fc -R .zsh_history"
