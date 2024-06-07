# dotfiles

| Software  | Source                                 |
| :-------- | :------------------------------------- |
| Alacritty | https://github.com/alacritty/alacritty |
| Zsh       | https://www.zsh.org/                   |
| tmux      | https://github.com/tmux/tmux           |
| Neovim    | https://github.com/neovim/neovim       |
| fzf       | https://github.com/junegunn/fzf        |
| fd        | https://github.com/sharkdp/fd          |
| ripgrep   | https://github.com/BurntSushi/ripgrep  |

My font of choice is [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono).

## Windows Subsystem for Linux

To expose dotfiles in WSL to Windows, use a symbolic link:

```
New-Item -ItemType SymbolicLink
    -path "/path/to/file"
    -target "\\wsl$/<distribution>/path/to/file"
```
