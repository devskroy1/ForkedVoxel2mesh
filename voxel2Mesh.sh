#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=sr4617
#SBATCH --output="voxel2Mesh-%j.out"
export PATH=/vol/bitbucket/sr4617/ForkedVoxel2mesh/venv/bin:$PATH
source activate
source /vol/cuda/11.0.3-cudnn8.0.5.39/setup.sh
TERM=vt100
/usr/bin/nvidia-smi
uptime

python data_preprocess.py
python main.py