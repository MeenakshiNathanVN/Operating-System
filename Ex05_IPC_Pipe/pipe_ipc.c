#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main() {
    int pipefd[2];
    pid_t pid;
    char write_msg[] = "Hello from Parent Process!";
    char read_msg[100];

    if (pipe(pipefd) == -1) {
        printf("Pipe Creation Failed\n");
        return 1;
    }

    pid = fork();

    if (pid < 0) {
        printf("Fork Failed\n");
        return 1;
    }

    if (pid > 0) {
        close(pipefd[0]);
        write(pipefd[1], write_msg, strlen(write_msg) + 1);
        close(pipefd[1]);
    } else {
        close(pipefd[1]);
        read(pipefd[0], read_msg, sizeof(read_msg));
        printf("Child Process Received: %s\n", read_msg);
        close(pipefd[0]);
    }

    return 0;
}
