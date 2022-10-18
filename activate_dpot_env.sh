#!/bin/bash
module purge
module load anaconda3-py39 gpu/cuda/11.7
conda activate dpot

# This should limit Tensorflow's CPU usage to 16 cores
# (See https://stackoverflow.com/a/68967461/1103939):
export OMP_NUM_THREADS=16
export TF_NUM_INTRAOP_THREADS=16
export TF_NUM_INTEROP_THREADS=16
