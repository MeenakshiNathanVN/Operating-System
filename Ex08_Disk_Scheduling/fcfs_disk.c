#include <stdio.h>
#include <stdlib.h>

int main() {
    int queue[100], n, head, i, seek_time = 0;

    printf("Enter the number of disk requests: ");
    scanf("%d", &n);

    printf("Enter the request sequence: ");
    for (i = 0; i < n; i++) {
        scanf("%d", &queue[i]);
    }

    printf("Enter initial head position: ");
    scanf("%d", &head);

    printf("\nMovement Sequence: %d", head);
    for (i = 0; i < n; i++) {
        seek_time += abs(queue[i] - head);
        head = queue[i];
        printf(" -> %d", head);
    }

    printf("\n\nTotal Seek Time = %d\n", seek_time);
    printf("Average Seek Time = %.2f\n", (float)seek_time / n);

    return 0;
}

