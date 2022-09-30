#!/bin/bash

##################################################
##### Additional Instructions for Riselab Researchers
##################################################

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 2-00:00
#SBATCH --cpus-per-task 10
#SBATCH  --gres gpu:1
#SBATCH --nodelist=luigi

pwd
hostname
date
echo starting job...

source ~/.bashrc

conda activate nex

echo starting nex training:
date


python ~/nex-code-internal/train.py -scene /data/jiezhi/crest_demo -model_dir crest -http -layers 10 -sublayers 4 -hidden 256 -tb_saveimage 50 -tb_savempi 3
