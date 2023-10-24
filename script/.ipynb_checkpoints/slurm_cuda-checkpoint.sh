#!/bin/bash

# -- TODO (2.5.e):
# -- Adapt to run 'hicuda' with 1 process using one GPU
# -- Use 1 node on the 'develgpu' partition from the JUWELS Cluster

#SBATCH --account=training2325
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --partition=develgpus
#SBATCH --gres=gpu:1
#SBATCH --output=out/ex02050e_cuda_out.%j
#SBATCH --error=err/ex02050e_cuda_err.%j

echo "-- Bash file start --"

srun bin/./hicuda

echo "-- Bash file end --"
