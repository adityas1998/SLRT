#!/bin/bash
#$ -cwd           # Set the working directory for the job to the current directory
#$ -pe smp 12      # Request 1 core
#$ -l h_rt=10:0:0  # Request 1 hour runtime
#$ -l h_vmem=7.5G   # Request 1GB RAM
#$ -l gpu=1         # request 1 GPU
#$ -l cluster=andrena # use the Andrena nodes

module load anaconda3
conda activate cico
python get_features.py