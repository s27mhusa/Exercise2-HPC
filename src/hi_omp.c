// Copyright (c) 2023 Forschungszentrum Jülich GmbH

#include <stdio.h>
#include <omp.h>

int main(int argc, char* argv[]) {

    int nth;    //Number of threads in total
    int tid;    //Thread ID
    
    #pragma omp parallel
    {
        // -- TODO (Ex2.2.b) --
        // Store the number of OpenMP threads in nth using the appropriate OpenMP function
        // Store the threadID in tid using the appropriate OpenMP function
        // Print the following sentece letting each thread to identify itself:
        // "Hello from thread X out of Y.\n"
	nth = omp_get_num_threads();
	tid = omp_get_thread_num();
	printf("Hello from thread %d out of %d.\n",tid,nth); 
        
     }
    
    return 0;
}

