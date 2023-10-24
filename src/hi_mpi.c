// Copyright (c) 2023 Forschungszentrum Jülich GmbH

#include <stdio.h>
#include <mpi.h>

int main(int argc, char* argv[]) {
    
    int rank;    // Rank number of the MPI process
    int size;    // Total number of processes
    int namelen; // Length of the processor name
    char processor_name[MPI_MAX_PROCESSOR_NAME];
    
    MPI_Init(&argc, &argv);  // Initialises MPI

    // -- TODOs (Ex2.2.c)
    // Call the appropriate MPI function to store the MPI rank number in 'rank'
    // Call the appropriate MPI function to store the total number of processes in 'size'
    // Call the appropriate MPI function to store the processor name in 'processor_name'
    // Print for each MPI process the statement "Hello from rank X of Y in processor Z\n"
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    MPI_Get_processor_name(processor_name, &namelen);
    printf("Hello from rank %d of %d in processor %s\n", rank, size, processor_name);


    MPI_Finalize();
    return 0;
}
