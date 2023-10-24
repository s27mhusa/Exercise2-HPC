#!/bin/bash

# -- TODO (2.5.d): 
# -- Adapt to run 'hihyb' with 1 MPI process and 8 threads per process 
# -- Use 2 nodes on the 'devel' partition from the JUWELS Cluster 

#SBATCH --account=training2325
#SBATCH --time=00:05:00
#SBATCH --nodes=2
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=8
#SBATCH --partition=devel
#SBATCH --output=out/ex02050d_hyb_out.%j
#SBATCH --error=err/ex02050d_hyb_err.%j

echo "-- Bash file start --"

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun bin/./hihyb

echo "-- Bash file end --"
