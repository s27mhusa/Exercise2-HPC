#!/bin/bash

# -- TODO (2.5.a): 
# -- Adapt to run 'himpi' with 4 tasks and 2 tasks per node --
# -- Use 2 nodes on the 'devel' partition from the JUWELS Cluster 

#SBATCH --account=training2325
#SBATCH --time=00:05:00
#SBATCH --nodes=
#SBATCH --ntasks=
#SBATCH --ntasks-per-node=
#SBATCH --partition=
#SBATCH --output=out/ex02050a_mpi_out.%j
#SBATCH --error=err/ex02050a_mpi_err.%j

echo "-- Bash file start --"

srun <FILENAME>

echo "-- Bash file end --"
