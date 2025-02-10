#!/bin/bash

# Load miniconda
module load miniconda3
module load cuda #/12.1.1-2gn2j4j

# Create and Activate Conda Environment
conda create -n mathllm python=3.8

activate mathllm

# # Install Dependancies
# # CUDA 12.1
pip install torch torchvision torchaudio

pip install joblib==1.3.0
pip install matplotlib
pip install numpy
pip install pandas
pip install scipy
pip install tensorboard
pip install image-similarity-measures[speedups]
pip install -U scikit-learn
pip install -r requirements.txt

conda deactivate

echo "done"