#!/bin/bash

# -- TODO (2.5.e):
# -- Adapt to run 'hicuda' with 1 process using one GPU
# -- Use 1 node on the 'develgpu' partition from the JUWELS Cluster

#SBATCH --account=training2325
#SBATCH --time=00:05:00
#SBATCH --nodes=
#SBATCH --ntasks=
#SBATCH --ntasks-per-node=
#SBATCH --partition=
#SBATCH --output=out/ex02050e_cuda_out.%j
#SBATCH --error=err/ex02050e_cuda_err.%j

echo "-- Bash file start --"

srun <FILENAME>

echo "-- Bash file end --"
