// Copyright (c) 2023 Forschungszentrum Jülich GmbH

#include <stdio.h>

// This is the function that runs on the GPU
__global__ void cuda_kernel(){

    // -- TODO (Ex2.2.e)
    // Let each CUDA thread to print its own ID in the form:
    // "Hello World from GPU! thread: X\n"
    printf("Hello World from GPU! thread: %d\n",threadIdx.x);

}


// The main program starts on the CPU
int main(int argc, char* argv[]) {

    // -- TODO (Ex2.2.e)
    // Print a "Hello World from the CPU\n"
    printf("Hello World from the CPU\n");

    // -- TODO (Ex2.2.e)
    // Launch 'cuda_kernel' on the GPU (with 1 block and 8 threads)
     hello<<<1, 8>>>();



    cudaDeviceSynchronize(); 
    return 0;
}
