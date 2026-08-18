#include <stdio.h>
#include <string.h>

int main() {
    int nf = 0, i, ch;
    char dir[20], file[10][20];

    printf("Enter directory name: ");
    scanf("%s", dir);

    do {
        printf("\n1. Create File  2. Display Files  3. Exit");
        printf("\nEnter your choice: ");
        scanf("%d", &ch);

        switch(ch) {
            case 1:
                printf("Enter file name: ");
                scanf("%s", file[nf]);
                nf++;
                printf("File created successfully!\n");
                break;
            case 2:

