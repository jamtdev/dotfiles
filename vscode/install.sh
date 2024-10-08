#!/bin/bash

pkglist=(
    editorconfig.editorconfig
    esbenp.prettier-vscode
    github.copilot
    github.copilot-chat
    graphql.vscode-graphql
    graphql.vscode-graphql-syntax
    ms-vscode-remote.remote-wsl
    bradlc.vscode-tailwindcss
)

for i in ${pkglist[@]}; do
    code --install-extension $i
done