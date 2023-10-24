#!/bin/bash

# -- TODO (2.5.d): 
# -- Adapt to run 'hihyb' with 1 MPI process and 8 threads per process 
# -- Use 2 nodes on the 'devel' partition from the JUWELS Cluster 

#SBATCH --account=training2325
#SBATCH --time=00:05:00
#SBATCH --nodes=
#SBATCH --ntasks=
#SBATCH --ntasks-per-node=
#SBATCH --partition=
#SBATCH --output=out/ex02050d_hyb_out.%j
#SBATCH --error=err/ex02050d_hyb_err.%j

echo "-- Bash file start --"

srun <FILENAME>

echo "-- Bash file end --"
