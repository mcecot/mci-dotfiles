export DOTFILES_DEBUG=false

##################################################################################
# POWERLEVEL9K Theme options
##################################################################################
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs nvm virtualenv rvm)
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m.%y}"
POWERLEVEL9K_NVM_BACKGROUND='022'
POWERLEVEL9K_NVM_FOREGROUND='white'
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
export DEFAULT_USER="${USER}"

# Node.JS 
export NVM_AUTO_USE=true


# Set case-sensitivity for completion, history lookup, etc.
zstyle ':prezto:*:*' case-sensitive 'yes'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':prezto:*:*' color 'yes'
 
zstyle ':prezto:module:prompt' theme powerlevel9k


################################################################################
# MANAGE PLUGINS
################################################################################
export ZPLUG_HOME=~/.config/zplug
source `brew --prefix zplug`/init.zsh

source ~/.dotfiles/plugins.zsh

fpath=(~/.dotfiles/completions/vue-cli.completion.zsh $fpath)

if $DOTFILES_DEBUG = true; then
  if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
      echo; zplug install
    fi
  fi
else
  if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
      echo; zplug install
    fi
  fi
fi 

if $DOTFILES_DEBUG = true; then
  zplug load --verbose
else
  zplug load
fi

source ~/.dotfiles/.aliases
#source ~/.zpreztorc

##################################################################################
# change location of .rcrc file for rcm
##################################################################################
export RCRC=`echo "$HOME/.dotfiles/.rcrc"`

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /Users/mc/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh ]] && . /Users/mc/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh

##################################################################################
# source RC Files for all linked tags
##################################################################################
for file in ~/.rcm-tags/* ; do
  if [ -f "$file" ] ; then
    . "$file"
  fi
done

##################################################################################
# Place all your secret tokens and passwords in there
##################################################################################
source ~/.dotfiles/.secrets


##################################################################################
# EnhanCD
##################################################################################
#export ENHANCD_HOOK_AFTER_CD='k -ah'
export ENHANCD_DISABLE_DOT=1
export ENHANCD_FILTER=fzf:fzy

##################################################################################
# OpenSSL
##################################################################################
export PATH="/usr/local/opt/openssl/bin:$PATH"
# export LDFLAGS:  -L/usr/local/opt/openssl/lib
# export CPPFLAGS: -I/usr/local/opt/openssl/include
# export PKG_CONFIG_PATH: /usr/local/opt/openssl/lib/pkgconfig
alias craftman="/Users/mc/.craftman/bin/craftman"

#export PATH="$PATH:$HOME/.rvm/bin"
##################################################################################
# Ruby Setup
##################################################################################
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

##################################################################################
# SCM BREEZE
##################################################################################
[[ -s "$HOME/.scm_breeze/scm_breeze.sh" ]] && source "$HOME/.scm_breeze/scm_breeze.sh"

# see https://github.com/sorin-ionescu/prezto/issues/1081
unsetopt AUTO_NAME_DIRS
