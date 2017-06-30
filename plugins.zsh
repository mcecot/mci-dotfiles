#!/bin/zsh

# https://github.com/ratson/dotfiles/blob/master/.zshrc

# Let zplug manage zplug.
zplug "zplug/zplug", hook-build:"zplug --self-manage"


##################################################################################
# ZSH-Users Plugins
##################################################################################

# https://github.com/zsh-users/zsh-autosuggestions
zplug "zsh-users/zsh-autosuggestions"

# https://github.com/zsh-users/zsh-completions
zplug "zsh-users/zsh-completions"

# https://github.com/zsh-users/zsh-syntax-highlighting
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# https://github.com/zsh-users/zsh-history-substring-search
zplug "zsh-users/zsh-history-substring-search", defer:3

# https://github.com/Tarrasch/zsh-autoenv
zplug "Tarrasch/zsh-autoenv"

# https://github.com/b4b4r07/enhancd
zplug "b4b4r07/enhancd", use:init.sh, defer:2

##################################################################################
# Plugins
##################################################################################

# https://github.com/lukechilds/zsh-better-npm-completion
zplug "lukechilds/zsh-better-npm-completion", at:c20b07c, frozen:1, defer:2

# https://github.com/supercrabtree/k
zplug "supercrabtree/k"

# https://github.com/lukechilds/zsh-nvm
zplug "lukechilds/zsh-nvm"

# https://github.com/Tarrasch/zsh-bd
zplug "tarrasch/zsh-bd", at:3724233, frozen:1

# https://github.com/zsh-users/zaw
# https://github.com/clvv/fasd

##################################################################################
# Prezto Modules
##################################################################################
# @see https://github.com/sorin-ionescu/prezto/tree/master/modules
#zplug "sorin-ionescu/prezto", from:prezto≥
zplug "modules/environment", from:prezto
zplug "modules/terminal", from:prezto
zplug "modules/editor", from:prezto
zplug "modules/history", from:prezto
zplug "modules/directory", from:prezto, use:"init.zsh", frozen:1
zplug "modules/spectrum", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/prompt", from:prezto
zplug "modules/autosuggestions", from:prezto
zplug "modules/osx", from:prezto
zplug "modules/homebrew", from:prezto
zplug "modules/ssh", from:prezto

# zplug "zsh-users/zsh-syntax-highlighting", defer:2
# 
# zplug "aws/aws-cli", use:"bin/aws_zsh_completer.sh"
# zplug "djui/alias-tips"
# zplug "felixr/docker-zsh-completion"
# zplug "gulpjs/gulp", use:"completion/zsh"
# zplug "modules/directory", from:prezto
# zplug "modules/git", from:prezto
# zplug "modules/osx", from:prezto
# zplug "peterhurford/git-it-on.zsh"
# zplug "plugins/yarn", from:oh-my-zsh
# zplug "zsh-users/zsh-autosuggestions", defer:2
# zplug "zsh-users/zsh-completions"
# zplug "zsh-users/zsh-history-substring-search", defer:3 # Should be loaded last.
# zplug "zsh-users/zsh-syntax-highlighting", defer:3 # Should be loaded 2nd last.

#setopt prompt_subst # Make sure prompt is able to be generated properly.
#zplug "adambiggs/zsh-theme", as:theme, use:adambiggs.zsh-theme

##################################################################################
# PROMPT THEME
##################################################################################
zplug "bhilburn/powerlevel9k", at:next, hook-build:"ln -s $ZPLUG_HOME/repos/bhilburn/powerlevel9k/powerlevel9k.zsh-theme $ZPLUG_HOME/repos/sorin-ionescu/prezto/modules/prompt/functions/prompt_powerlevel9k_setup  "


# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND="ag -g \"\""


# zplug "stedolan/jq", \
#     as:command, \
#     from:gh-r, \
#     rename-to:jq
# 
# zplug "junegunn/fzf-bin", \
#     as:command, \
#     from:gh-r, \
#     rename-to:"fzf", \
#     frozen:1
# 
# zplug "jhawthorn/fzy", \
#     as:command, \
#     hook-build:"make && sudo make install"