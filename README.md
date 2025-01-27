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

pip install git+https://github.com/EleutherAI/lm-evaluation-harness.git
```

Or by running the following commands:
```
# Clone MathLLM repository
git clone https://github.com/Zenos5/MathLLM.git
cd MathLLM/NExT-GPT

bash install.sh
# OR
./install.sh
```
If you use install.sh, make sure conda is a part of path, point to a specific conda module, or point to the location your conda iteration is stored.

# Setup ckpt/
In the ```ckpt/``` repository you will need to download the contents for ```pretrained_ckpt/imagebind_ckpt/``` and ```pretrained_ckpt/llemma_ckpt/```.

For imagebind, go to or create the ```pretrained_ckpt/imagebind_ckpt/``` directory inside of the ```ckpt/``` repository and run:

```
wget https://dl.fbaipublicfiles.com/imagebind/imagebind_huge.pth
```

For Llemma, go to or create the ```pretrained_ckpt/llemma_ckpt/``` directory inside of the ```ckpt/``` repository.  You will need to download the files from the [Llemma_7b](https://huggingface.co/EleutherAI/llemma_7b) huggingface repo and place them within the ```llemma_ckpt/``` directory:

To get the tunable parameters for NExT-GPT go to ```https://huggingface.co/ChocoWu/nextgpt_7b_tiva_v0``` and download the files in the huggingface repository to ```delta_ckpt/nextgpt/7b_tiva_v0/```, or create the directory to store the files in if it does not already exist.

