#!/bin/bash

#SBATCH --time=4:00:00   # walltime.  hours:minutes:seconds
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --gpus=1
#SBATCH --mem=80G   # 164G memory per CPU core
#SBATCH --mail-user=aw742@byu.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --qos=cs
#SBATCH --partition=cs

# Load miniconda
module load miniconda3

# Create and Activate Conda Environment
conda create -n mathllm python=3.8

conda activate mathllm

# Install Dependancies
# CUDA 12.1
conda install pytorch==2.1.2 torchvision==0.14.1 torchaudio==0.13.1 pytorch-cuda=11.6 -c pytorch -c nvidia

pip install joblib==1.3.0
conda install matplotlib
conda install numpy
conda install pandas
conda install scipy
conda install tensorboard

pip install -r requirements.txt

