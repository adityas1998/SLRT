#!/bin/bash
#$ -cwd           # Set the working directory for the job to the current directory
#$ -pe smp 12      # Request 1 core
#$ -l h_rt=10:0:0  # Request 1 hour runtime
#$ -l h_vmem=7.5G   # Request 1GB RAM

module load anaconda3
conda activate cico
python data_preparation/reaglined_and_crop.py --video_dir /data/scratch/ec23458/20240709DataSharewithAditya/Green_Screen_RGB_clips_frontal_view/train_rgb_front_clips/raw_videos  --output_dir /data/scratch/ec23458/20240709DataSharewithAditya/Green_Screen_RGB_clips_frontal_view/train_rgb_front_clips/processed_videos --split train
