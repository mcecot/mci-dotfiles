# [[ -d ~/.zplug ]] || {
#   git clone https://github.com/zplug/zplug ~/.zplug
#   source ~/.zplug/zplug
#   zplug update --self
# }

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

#source ~/.zplug/zplug    

#zplug 'zplug/zplug'
# zplug "robbyrussell/oh-my-zsh"
# # zplug "plugins/autojump", from:oh-my-zsh
# # zplug "plugins/thefuck", from:oh-my-zsh
# zplug "plugins/git", from:oh-my-zsh
# # zplug "plugins/gitfast", from:oh-my-zsh
# zplug "plugins/npm", from:oh-my-zsh
# # zplug "plugins/pip", from:oh-my-zsh
# # zplug "plugins/python", from:oh-my-zsh
# zplug "johnhamelink/rvm-zsh", if:"which rvm"
# 
# # https://github.com/Tarrasch/zsh-autoenv
# zplug "Tarrasch/zsh-autoenv"

# prezto
zstyle ':prezto:module:prompt' theme agnoster
zstyle ':prezto:module:autosuggestions' color 'yes'

zplug "modules/autosuggestions", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/prompt", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/environment", from:prezto
zplug "modules/osx", from:prezto
zplug "modules/homebrew", from:prezto
zplug "modules/terminal", from:prezto
zplug "modules/editor", from:prezto
zplug "modules/history", from:prezto
#zplug "modules/ssh", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto


zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "supercrabtree/k"

# Node.JS 
export NVM_AUTO_USE=true
zplug "lukechilds/zsh-nvm"

# Let zplug manage zplug.
zplug "zplug/zplug", hook-build:"zplug --self-manage"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load #--verbose

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="ag -g \"\""

## RVM 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## SCM Breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"


export SLACK_TOKEN=xoxp-2195625722-31251406898-139250347413-c4eb13b48c251b0121a5f06f70f6ea97
# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /Users/mc/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh ]] && . /Users/mc/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh