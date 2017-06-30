# User shell configuration
# As a reminder .zshrc is for stuff that modifies the INTERACTIVE shell only.

# Where my custom zsh functions live
fpath=( ~/.zfunctions "${fpath[@]}" )

# set up some very basic profiling of how long zshrc takes to load.
# to test, use: ZSHRC_PROFILE=true zsh -ic "exit"
declare -A ZSHRC_LOAD_START=()
declare -A ZSHRC_LOAD_STOP=()
declare -A ZSHRC_LOAD_TIME=()

function profile_start () {
  if [[ "$ZSHRC_PROFILE" = true ]]; then
    ZSHRC_LOAD_START[$1]=$(gdate "+%s%3N")
  fi
}

function profile_stop () {
  if [[ "$ZSHRC_PROFILE" = true ]]; then
    ZSHRC_LOAD_STOP[$1]=$(gdate "+%s%3N")
    ZSHRC_LOAD_TIME[$1]=$(echo "$ZSHRC_LOAD_STOP[$1] - $ZSHRC_LOAD_START[$1]" | bc)
    printf "\033[1m%12s\033[0m loaded in:\t%4dms\n" $1 $ZSHRC_LOAD_TIME[$1]
  fi
}

profile_start ".zshrc"

#
# antigen
#
profile_start "antigen"
antigenSrc="/Users/mc/.antigen.zsh"
if [ -s "$antigenSrc" ]; then
  source $antigenSrc

  # OMZ plugins
  antigen use oh-my-zsh

  antigen bundle docker
  antigen bundle docker-compose

  antigen bundle git
  antigen bundle git-flow
  antigen bundle tig

  antigen bundle npm
  antigen bundle node
  antigen bundle nvm
  
  antigen bundle tmuxinator
  antigen bundle tmux
  
  antigen bundle osx
  antigen bundle brew
  
  # NVM
  export NVM_AUTO_USE=true  
  antigen bundle lukechilds/zsh-nvm
  
  # other plugins
  antigen bundle zsh-users/zsh-syntax-highlighting
  
  # https://github.com/Tarrasch/zsh-autoenv
  antigen bundle Tarrasch/zsh-autoenv
  
  antigen theme agnoster
  antigen apply
fi
profile_stop "antigen"

# SCM PUFF
eval "$(scmpuff init -s)"

# SDK MAN
source "$HOME/.sdkman/bin/sdkman-init.sh"