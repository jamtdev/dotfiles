# dotfiles

## Install

```
stow
alacritty
zsh
tmux
neovim
ripgrep
vscode

JetBrains Mono (Optional)
```

## Setup

```
stow .
```

### macOS

```
cd ./vscode
stow .
```

### WSL

```
# alacritty -> %APPDATA%/Roaming/alacritty
# vscode -> %APPDATA%/Roaming/Code/User

New-Item -ItemType SymbolicLink
    -Path "/path/to/file"
    -Target "\\wsl$/<distribution>/path/to/file"
```
