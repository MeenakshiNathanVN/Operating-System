#include <stdio.h>

void sequentialAllocation() {
    int startBlock = 4, length = 5;
    printf("--- Sequential File Allocation ---\n");
    printf("File allocated from block %d to %d\n", startBlock, startBlock + length - 1);
    for (int i = 0; i < length; i++) {
        printf("Block Allocated: %d\n", startBlock + i);
    }
}

int main() {
    sequentialAllocation();
    return 0;
}
