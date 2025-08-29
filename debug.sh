#!/bin/bash -e 

git add . && git commit -am "chore: iterating..." && git push 
cd /workspace/.config
rm -rf nvim
mkdir -p nvim
cd nvim 
git clone https://github.com/idreaminteractive/kickstart.nvim
cd /workspace/kickstart.nvim
