#!/bin/bash

# Load miniconda
module load miniconda3
module load cuda #/12.1.1-2gn2j4j

# Create and Activate Conda Environment
# conda create -n mathllm python=3.8

# module avail cuda

activate mathllm

# # Install Dependancies
# # CUDA 12.1
# # conda install pytorch==2.1.2 torchvision==0.14.1 torchaudio==0.13.1 pytorch-cuda=11.6 -c pytorch -c nvidia
pip install torch torchvision torchaudio

pip install joblib==1.3.0
pip install matplotlib
pip install numpy
pip install pandas
pip install scipy
pip install tensorboard
pip install -r requirements.txt

conda deactivate

echo "done"