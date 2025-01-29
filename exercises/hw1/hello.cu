#include <stdio.h>

__global__ void hello(){

  printf("Hello from block: %u, thread: %u\n", blockIdx.x,threadIdx.x);
}

int main(){

  hello<<<2,2>>>();
  cudaDeviceSynchronize();  //直到当前设备上所有的异步操作（包括核函数执行、内存传输等）都完成后，主机才会继续执行后续代码。
}

