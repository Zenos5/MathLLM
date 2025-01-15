# MathLLM
A multimodal math LLM intended to take in text and/or images and output text and/or images for math QA.  Uses NExT-GPT as a base to allow utilizing base text math LLM with multiple data types.  Uses blend of math LLMs with Llemma as the base for the core text math LLM model.

## Getting Started

### 1. Conda Setup
If there is not a version of conda already installed on the device, you will need to download and install your own version of Anaconda or Miniconda.

To install Miniconda using command line in linux:

```
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh
```

### 1. Environment Preparation
Please first clone the repo and install the required environment, which can be done by running the following commands:
```
# Clone MathLLM repository
git clone https://github.com/Zenos5/MathLLM.git
cd MathLLM/NExT-GPT

# Create and Activate Conda Environment
conda create -n mathllm python=3.8

conda activate mathllm

# Install Dependancies
# CUDA 12.1
# conda install pytorch==2.1.2 torchvision==0.14.1 torchaudio==0.13.1 pytorch-cuda=11.6 -c pytorch -c nvidia
pip install torch torchvision torchaudio

pip install joblib==1.3.0
pip install matplotlib
pip install numpy
pip install pandas
pip install scipy
pip install tensorboard

pip install -r requirements.txt
```

Or by running the following commands:
```
# Clone MathLLM repository
git clone https://github.com/Zenos5/MathLLM.git
cd MathLLM/NExT-GPT

./install.sh
```
If you use install.sh, make sure conda is a part of path, point to a specific conda module, or point to the location your conda iteration is stored.


