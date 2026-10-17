#!/usr/bin/env bash
mkdir -p "$HOME/.claude/agents"
mkdir -p "$HOME/.claude/skills"
cp -r .claude/* "$HOME/.claude/"

cp .gitignore_global "$HOME/.gitignore_global"
git config --global core.excludesfile "$HOME/.gitignore_global"
