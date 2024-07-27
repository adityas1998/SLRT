#$ -j y
#$ -pe smp 12
#$ -l h_rt=2:00:00
#$ -l h_vmem=7.5G
#$ -l gpu=1
#$ -o logs/
#$ -l gpu_type=ampere
#$ -l cluster=andrena

ml anaconda3
conda activate cico
python get_psuedos.py