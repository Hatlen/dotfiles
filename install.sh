for item in ~/.{vimrc.after,vimrc.before,tmux.conf,extra,non_existent_file,janus}; do
  if [ -r "$item" ]; then
    echo "There's already a file/directory called $item in $HOME"
  else
    echo "i would like to copy $item to $HOME"
  fi
done
unset item 
