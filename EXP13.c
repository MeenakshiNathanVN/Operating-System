#include <stdio.h>
#include <string.h>

struct Record {
    int id;
    char name[30];
};

int main() {
    struct Record r1 = {101, "Alice"};
    struct Record r2 = {102, "Bob"};

    printf("--- Sequential File Organization ---\n");
    printf("Record 1 -> ID: %d, Name: %s\n", r1.id, r1.name);
    printf("Record 2 -> ID: %d, Name: %s\n", r2.id, r2.name);
    
    return 0;
}
