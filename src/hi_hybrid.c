// Copyright (c) 2023 Forschungszentrum Jülich GmbH

#include <stdio.h>
#include <omp.h>
#include <mpi.h>

int main(int argc, char *argv[]) {
    // MPI values 
    int size;        // Total amount of MPI processes
    int rank;        // Rank number
    int namelen;     // Length of the processor name
    char processor_name[MPI_MAX_PROCESSOR_NAME];

    // OpenMP values
    int tid = 0;    // Thread ID
    int nth = 1;    // Number of threads
    
    MPI_Init(&argc, &argv);
    
    // -- TODOs (Ex2.2.d)
    // Call the appropriate MPI function to store the MPI rank number in 'rank'
    // Call the appropriate MPI function to store the total number of processes in 'size'
    // Call the appropriate MPI function to store the processor name in 'processor_name'
    
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    MPI_Get_processor_name(processor_name, &namelen);
    
    #pragma omp parallel private(tid)
    {
        // -- TODO (Ex2.2.d)
        // Store the number of threads in 'nth' using the apropriate OpenMP function
        // Store the threadID in 'tid' using the apropriate OpenMP function
        // Print following statement for each thread and process:
        // "Hello from thread Xt out of Yt; from process Xp out of Zp on processor P \n"
	
	    nth = omp_get_num_threads();
	tid = omp_get_thread_num();
	printf("Hello from thread %d out of %d; from process %d out of %d on processor %c \n",tid,nth,rank,size,processor_name); 
    }
    
    MPI_Finalize();
    return 0;
}




