
_default:
  #!/bin/env bash
  just --list --list-heading $'Available commands:\n' --list-prefix $' - '

# (Re) sync core symlinks
sync-core:
  cd $HOME/dotfiles/core && stow *

# remove core symlinks
remove-core:
  cd $HOME/dotfiles/core && stow -D *
 
# (Re) sync symlinks for enviroment 
sync-env:
  #!/bin/env bash
  echo "choose the environent to sync: "
  OPTION=$(gum choose $(ls envs) )
  cd envs/$OPTION && tree && stow * 

# remove symlinks for enviroment 
remove-env:
  #!/bin/env bash
  echo "choose the environent to remove: "
  OPTION=$(gum choose $(ls envs) )
  cd envs/$OPTION && stow -D *

