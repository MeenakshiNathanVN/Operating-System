#include <stdio.h>

int main() {
    int files[50], startBlock, len, i, j, ch;

    for(i = 0; i < 50; i++)
        files[i] = 0;

    do {
        printf("Enter starting block and length of file: ");
        scanf("%d%d", &startBlock, &len);

        int count = 0;
        for(i = startBlock; i < startBlock + len; i++) {
            if(files[i] == 0)
                count++;
        }

        if(len == count) {
            for(i = startBlock; i < startBlock + len; i++) {
                if(files[i] == 0) {
                    files[i] = 1;
                    printf("Block %d allocated\n", i);
                }
            }
            printf("File allocated successfully!\n");
        } else {
            printf("File cannot be allocated (Blocks already occupied or out of bound)!\n");
        }

        printf("Do you want to enter more files? (1 for Yes / 0 for No): ");
        scanf("%d", &ch);
    } while(ch == 1);

    return 0;
}
