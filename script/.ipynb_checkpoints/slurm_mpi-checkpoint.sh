#!/bin/bash

# -- TODO (2.5.a): 
# -- Adapt to run 'himpi' with 4 tasks and 2 tasks per node --
# -- Use 2 nodes on the 'devel' partition from the JUWELS Cluster 

#SBATCH --account=training2325
#SBATCH --time=00:05:00
#SBATCH --nodes=2
#SBATCH --ntasks=4
#SBATCH --ntasks-per-node=2
#SBATCH --partition=devel
#SBATCH --output=out/ex02050a_mpi_out.%j
#SBATCH --error=err/ex02050a_mpi_err.%j

echo "-- Bash file start --"

srun bin/./himpi

echo "-- Bash file end --"

