#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

int main() {
    int fd;
    char buffer[100];

    fd = open("employees.dat", O_CREAT | O_RDWR | O_TRUNC, 0644);

    if (fd < 0) {
        perror("Error opening file");
        return 1;
    }

    write(fd, "101 Raj\n", 8);
    write(fd, "102 Aman\n", 9);
    write(fd, "103 Priya\n", 10);

    // Update second record
    lseek(fd, 8, SEEK_SET);
    write(fd, "102 Ravi\n", 9);

    // Read entire file
    lseek(fd, 0, SEEK_SET);

    int bytes = read(fd, buffer, sizeof(buffer) - 1);
    buffer[bytes] = '\0';

    printf("Employee Records:\n%s", buffer);

    close(fd);

    return 0;
}
