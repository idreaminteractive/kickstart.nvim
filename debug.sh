#!/bin/bash -e 

git add . && git commit -am "chore: iterating..." && git push 
cd /workspace/.config/nvim
git pull
cd /workspace/kickstart.nvim
