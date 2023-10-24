#!/bin/bash

# -- TODO (2.5.c): 
# -- Adapt to run 'hiomp' with 8 OpenMP threads --
# -- Use 1 node in the 'devel' partition from the JUWELS Cluster 

#SBATCH --account=training2325
#SBATCH --time=00:05:00
#SBATCH --nodes=
#SBATCH --ntasks=
#SBATCH --ntasks-per-node=
#SBATCH --partition=
#SBATCH --output=out/ex02050c_omp_out.%j
#SBATCH --error=err/ex02050c_omp_err.%j

echo "-- Bash file start --"

srun <FILENAME>

echo "-- Bash file end --"
