#!/bin/bash  # Optional shebang line

echo "This is the first command"
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

git clone --recursive https://github.com/naver/dust3r
cd dust3r
conda create -n dust3r python=3.11 cmake=3.14.0
conda activate dust3r 