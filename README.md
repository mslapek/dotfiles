# My excellent config

Configuration files.

```sh
cat shell/{bashrc,aliases}.sh > ~/.shellrc

mkdir -vp ~/.config/{nvim,ghostty,helix}

cp    -v  vimrc      ~/.vimrc
ln    -vs ~/.vimrc   ~/.config/nvim/init.vim

cp    -v  tmux.conf  ~/.tmux.conf
cp    -vR ghostty    ~/.config/ghostty/config
cp    -vR helix.toml ~/.config/helix/config.toml
```

