for item in {vimrc.after,vimrc.before,tmux.conf,extra,non_existent_file,janus}; do
  if [ -r "$item" ]; then
    echo "There's already a file/directory called $item in $HOME"
  else
    echo "Linking $item to $HOME"
    echo "Going to do this: ln -s $PWD/$item $HOME/$item" 
    # ln -s "$PWD/$item" "$HOME/$item"
  fi
done
unset item 
