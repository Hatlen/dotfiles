for item in .{vimrc.after,vimrc.before,tmux.conf,extra,janus}; do
  if [ -r "$HOME/$item" ]; then
    echo "There's already a file/directory called $item in $HOME"
  else
    echo "Linking $item to $HOME"
    ln -s "$PWD/$item" "$HOME/$item"
  fi
done
unset item 
